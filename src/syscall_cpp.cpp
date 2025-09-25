//
// Created by os on 9/8/25.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size)
{
    return mem_alloc(size);
}

void operator delete(void* ptr)
{
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    myHandle= nullptr;
    this->body=body;
    this->arg=arg;
}
void Thread::dispatch() {
    thread_dispatch();
}
Thread::Thread() {
    myHandle=nullptr;
    body=nullptr;
    arg=nullptr;
}
Thread::~Thread() {
    delete myHandle;
}

int Thread::start() {
    int ret=0;
    if(body!=nullptr)
    {
        ret = thread_create(&myHandle, body, arg);
    }
    else if(body== nullptr)
    {
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    ((Thread*)ptr)->run();
}

Semaphore::Semaphore(unsigned init) {

    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}