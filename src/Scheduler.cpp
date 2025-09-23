#include  "../h/Scheduler.hpp"

Scheduler::Scheduler() {
    queue=List<TCB>();
}

Scheduler *Scheduler::Instance() {
    static Scheduler instance;
    return &instance;
}

TCB *Scheduler::get() {
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
}