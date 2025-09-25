#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

SEM::SEM(unsigned init) {
    this->val=init;
    this->closed=false;

}

SEM* SEM::open(unsigned init) {
    //printString("Sem::open\n ");
    return new SEM(init);
}

int SEM::close() {
    //printString("Sem::close\n");
    if (this->closed) {
        return -1;
    }
    this->closed=true;

    while (blockedQueue.size> 0) {
        TCB* tcb = blockedQueue.removeLast();
        if (tcb == nullptr) {
            return -1;
        }
        tcb->unblock();
        Scheduler::put(tcb);
    }
    return 0;
}

int SEM::wait() {
    //printString("Sem::wait\n");
    if (this->closed) {
        return -1;
    }
    val--;
    if (val<0) {
        TCB::running->block();
        blockedQueue.addFirst(TCB::running);
        //thread_dispatch();
        TCB::dispatch();
    }
    return 0;
}

int SEM::signal() {
    //printString("Sem::signal\n");
    if (this->closed) {
        return -1;
    }
    val++;
    if (val<=0) {
        TCB *unblockTcb = blockedQueue.removeLast();
        if (unblockTcb == nullptr) {
                return -1;
        }
        unblockTcb->unblock();
        Scheduler::put(unblockTcb);
    }
    return 0;
}
