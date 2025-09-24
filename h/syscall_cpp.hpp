//
// Created by os on 9/8/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_COPY_SYSCALL_CPP_HPP
#include "../lib/hw.h"
#include "TCB.hpp"
typedef TCB* thread_t;


void* operator new (size_t);
void operator delete (void*);


class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
};




#endif //PROJECT_BASE_V1_1_COPY_SYSCALL_CPP_HPP