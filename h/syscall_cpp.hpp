//
// Created by os on 9/8/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_COPY_SYSCALL_CPP_HPP
#include "../lib/hw.h"
#include "TCB.hpp"
#include "SEM.hpp"

typedef TCB* thread_t;
typedef SEM* sem_t;


void* operator new (size_t);
void operator delete (void*);


class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    //static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    static void wrapper(void* ptr);
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};




#endif //PROJECT_BASE_V1_1_COPY_SYSCALL_CPP_HPP