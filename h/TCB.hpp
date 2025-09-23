//
// Created by os on 9/23/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_TCB_HPP
#define PROJECT_BASE_V1_1_COPY_TCB_HPP
#include "../lib/hw.h"


class TCB
{
public:

    using Body=void(*)(void*);

    ~TCB()
    {
        delete stack;
    }

    static int createThread(TCB* t, Body body, void* arg, uint64* stack);

    static void dispatch();
    static int exit();



    bool isFinished() const { return finished;}

private:
    TCB(Body body, void* arg, uint64* stack):
    finished(false),
    stack(body!=nullptr?((uint64*)(stack + DEFAULT_STACK_SIZE)):nullptr),
    context(
            {
                    body!=nullptr?(uint64)&TCBWrapper:0,
                    stack!=nullptr?((uint64)(uint64*)stack + DEFAULT_STACK_SIZE):0
            }
    ),
    body(body)
    {
        this->arg=arg;
    }
    bool finished;
    uint64* stack;
    void* arg;
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    Context context;
    Body body;


    static TCB* running;
    static void TCBWrapper();

};
#endif //PROJECT_BASE_V1_1_COPY_TCB_HPP