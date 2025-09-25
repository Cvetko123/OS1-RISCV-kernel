#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include  "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Riscv.hpp"

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;
time_t TCB::timeCounter=0;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    return new TCB(body, arg, stack);
}

void TCB::dispatch() {
    //pprintString("TCB::dispatch()\n");
    TCB *old=running;
    if (!old->isFinished() && !old->isBlocked()) {
        Scheduler::put(old);
    }
    running=Scheduler::get();


    timeCounter=0;
    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
}



int TCB::exit() {
    if (running->isFinished()) {
        return -1;
    }
    running->finished=true;
    thread_dispatch();
    return 0;
}

void TCB::TCBWrapper() {
    //pprintString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    Riscv::popSppSpie();
    running->body(running->arg);
    exit();
}