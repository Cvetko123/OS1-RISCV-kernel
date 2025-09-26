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

int Thread::sleep(time_t time) {
    return time_sleep(time);
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

PeriodicThread::PeriodicThread(time_t period):Thread() {
    this->period=period;
}
void PeriodicThread::terminate() {
    this->period=0;
}

void PeriodicThread::run() {
    while (period!=0) {
        periodicActivation();
        if (period!=0)
            sleep(period);
    }
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
