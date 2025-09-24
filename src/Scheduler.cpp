#include  "../h/Scheduler.hpp"


List<TCB> Scheduler::queue;


TCB *Scheduler::get() {
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
}