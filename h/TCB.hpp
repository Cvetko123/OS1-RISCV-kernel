//
// Created by os on 9/23/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_TCB_HPP
#define PROJECT_BASE_V1_1_COPY_TCB_HPP
#include "../lib/hw.h"
#include "../h/Scheduler.hpp"
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
class TCB
{
public:
    void* operator new(size_t size)
{
    return MemoryAllocator::Instance()->mem_alloc(size);
}

    void operator delete(void* ptr)
    {
        return MemoryAllocator::Instance()->mem_free(ptr);
    }


    using Body=void(*)(void*);

    ~TCB()
    {
        delete stack;
    }

    static TCB* createThread(Body body, void* arg, uint64* stack);

    static void dispatch();
    static int exit();

    bool isFinished() const { return finished;}

    void setSysThread(bool sysThread) { this->sysThread = sysThread; }

    bool isSysThread() const { return sysThread; }


    static TCB* running;

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

private:
    TCB(Body body, void* arg, uint64* stackMem,bool sysThread=false)
        : finished(false),
          stack(stackMem),
          arg(arg),   // now in correct order
          context({
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body)
    {
        this->sysThread = sysThread;
        if (running == nullptr) {
            running = this;
        } else {
            Scheduler::put(this);
        }
    }
    bool finished;
    uint64* stack;
    void* arg;
    bool sysThread;



    Context context;
    Body body;

    static void TCBWrapper();

};
#endif //PROJECT_BASE_V1_1_COPY_TCB_HPP