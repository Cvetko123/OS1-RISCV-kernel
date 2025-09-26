
#include "../lib/console.h"
#include  "../lib/hw.h"

#include "../h/syscall_c.hpp"
#include  "../h/syscall_cpp.hpp"
#include "../h/Riscv.hpp"
#include "../h/print.hpp"

#include  "../h/TCB.hpp"
#include "../h/workers.hpp"







extern void userMain();
static bool userfinished=false;
static bool Afinished=false;
static bool Bfinished=false;
static bool Cfinished=false;
void userWrapper(void* arg)
{
    pprintString("user main start:\n");
    userMain();
    pprintString("user main end:\n");
    userfinished=true;
}

void WorkerAWrapper(void* arg)
{
    //pprintString("worker A start:\n");
    workerBodyA();
    //pprintString("worker A end:\n");
    Afinished=true;
}

void WorkerBWrapper(void* arg)
{
    //pprintString("worker B start:\n");
    workerBodyB();
    //pprintString("worker B end:\n");
    Bfinished=true;
}

void WorkerCWrapper(void* arg)
{
    //pprintString("worker C start:\n");
    workerBodyC();
    //pprintString("worker C end:\n");
    Cfinished=true;
}



void exit_emulator() {
    uint64 *stop_adr = (uint64*)0x100000;
    uint64 stop_val = 0x5555;

    asm volatile ("sw %0, 0(%1)":: "r" (stop_val), "r" (stop_adr));
}

void main() {
    Riscv::set_stvec((uint64)&Riscv::SupervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    Riscv::InitBBuffs();
    thread_t coroutines[4];
    thread_create(&coroutines[0],nullptr,nullptr);
    TCB::InitOutputThread();



    // PeriodicThread* periodican= new WorkerP(5);
    // periodican->start();
    thread_create(&coroutines[1],userWrapper,nullptr);
    //thread_create(&coroutines[2],WorkerBWrapper,nullptr);
    //thread_create(&coroutines[3],WorkerCWrapper,nullptr);



    while (!coroutines[1]->isFinished()  || Riscv::OUTbuff->getCnt()>0 ) {
        thread_dispatch();
    }


    for (auto coroutine: coroutines) { delete coroutine; }

    pprintString("Finished\n");

    exit_emulator();


}








