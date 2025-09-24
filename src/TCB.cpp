#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include  "../h/print.hpp"

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    return new TCB(body, arg, stack);
}

void TCB::dispatch() {
    //printString("TCB::dispatch()\n");
    TCB *old=running;
    if (!old->isFinished()) {
        Scheduler::put(old);
    }
    running=Scheduler::get();


    Riscv::pushRegisters();
    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    Riscv::popRegisters();
}



int TCB::exit() {
    if (running->isFinished()) {
        return -1;
    }
    running->finished=true;
    dispatch();
    return 0;
}

void TCB::TCBWrapper() {
    //printString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    //Riscv::popSppSpie();
    running->body(running->arg);
    exit();
}