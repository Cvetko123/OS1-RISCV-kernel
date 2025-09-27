#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include  "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Riscv.hpp"
#include "../h/SList.hpp"

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;
TCB* TCB::outputThread=nullptr;
TCB* TCB::idleThread=nullptr;
time_t TCB::timeCounter=0;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    return new TCB(body, arg, stack);
}

void TCB::dispatch() {
    //pprintString("TCB::dispatch()\n");
    TCB *old=running;
    if (!old->isFinished() && !old->isBlocked() && !old->idle) {
        Scheduler::put(old);
    }
    running=Scheduler::get();
    if (!running) {
        running=idleThread;
    }
    timeCounter=0;
    Riscv::restoreSPP();
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
    Riscv::restoreSPP();
    Riscv::popSppSpie();
    running->body(running->arg);
    exit();
}

int TCB::sleep(time_t time) {
    if (time <= 0) {
        return -1;
    }
    running->block();
    SList::add(running, time);
    dispatch();
    return 0;
}

void TCB::OutputThreadBody(void *arg) {
    while(true)
    {
        volatile char status = *((char*)CONSOLE_STATUS);
        while(status & CONSOLE_TX_STATUS_BIT)
        {
            char c = Riscv::OUTbuff->get();
            *((char*)CONSOLE_TX_DATA) = c;
            status = *((char*)CONSOLE_STATUS);
        }
    }
}



void TCB::IdleThreadBody(void *arg) {
    while(1) {  }
}





void TCB::InitOutputThread() {

    outputThread = new TCB(OutputThreadBody,nullptr, (uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE));
    outputThread->sys=true;
    Scheduler::put(outputThread);

    idleThread=new TCB(IdleThreadBody,nullptr, (uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE));
    idleThread->sys=true;
    idleThread->idle=true;
}
