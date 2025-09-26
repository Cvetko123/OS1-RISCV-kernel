#include "../h/BBuff.hpp"
#include "../h/MemoryAllocator.hpp"

BBuff::BBuff(int size)
{
    this->size = size;
    head=0;
    tail=0;
    count=0;
    buff=(char*) MemoryAllocator::Instance()->mem_alloc(sizeof(char)*size);
    sem_open(&space,size);
    sem_open(&items,0);
}

BBuff::~BBuff()
{
    MemoryAllocator::Instance()->mem_free(buff);
    sem_close(space);
    sem_close(items);
}

void BBuff::put(char c) {
    sem_wait(space);
    if (TCB::running->isBlocked()) {
        thread_dispatch();
    }
    buff[tail]=c;
    tail=(tail+1)%size;
    count++;
    sem_signal(items);

}

char BBuff::get() {
    sem_wait(items);
    if (TCB::running->isBlocked()) {
        thread_dispatch();
    }
    char c=buff[head];
    head=(head+1)%size;
    count--;
    sem_signal(space);
    return c;
}
