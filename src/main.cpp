
#include "../lib/console.h"
#include  "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include  "../h/syscall_cpp.hpp"
#include "../h/Riscv.hpp"
#include "../h/print.hpp"
#include "../h/SList.hpp"
#include  "../h/TCB.hpp"
#include "../h/workers.hpp"





void AllocatorTest() {
    uint64* a1=new uint64;
    *a1=4;
    __putc(*a1+'0');
    __putc('\n');
    uint64* a2=new uint64;
    *a2=5;
    __putc(*a2+'0');
    __putc('\n');
    uint64* a3=new uint64;
    *a3=6;
    __putc(*a3+'0');
    __putc('\n');
    uint64* a4=new uint64;
    *a4=7;
    __putc(*a4+'0');
    __putc('\n');
    uint64* a5=new uint64;
    *a5=8;
    __putc(*a5+'0');
    __putc('\n');
    delete a1;
    delete a3;
    delete a4;
    uint64* a6=new uint64;
    *a6=9;
    __putc(*a6+'0');
    __putc('\n');
}
extern void userMain();

void userWrapper(void* arg)
{
    pprintString("user main start:\n");
    userMain();
    pprintString("user main end:\n");
}

void WorkerAWrapper(void* arg)
{
    //pprintString("worker A start:\n");
    workerBodyA();
    //pprintString("worker A end:\n");
}

void WorkerBWrapper(void* arg)
{
    //pprintString("worker B start:\n");
    workerBodyB();
    //pprintString("worker B end:\n");
}

void WorkerCWrapper(void* arg)
{
    //pprintString("worker C start:\n");
    workerBodyC();
    //pprintString("worker C end:\n");
}



void exit_emulator() {
    uint64 *stop_adr = (uint64*)0x100000;
    uint64 stop_val = 0x5555;

    asm volatile ("sw %0, 0(%1)":: "r" (stop_val), "r" (stop_adr));
}

void main() {
     Riscv::set_stvec((uint64)&Riscv::SupervisorTrap);
     Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


     thread_t coroutines[4];
     thread_create(&coroutines[0],nullptr,nullptr);
     // PeriodicThread* periodican= new WorkerP(5);
     // periodican->start();
     thread_create(&coroutines[1],WorkerAWrapper,nullptr);
     thread_create(&coroutines[2],WorkerBWrapper,nullptr);
     thread_create(&coroutines[3],WorkerCWrapper,nullptr);



     while (Scheduler::getSize()>0 || SList::getSize()>0 ) {
         thread_dispatch();
     }

     for (auto coroutine: coroutines) { delete coroutine; }

     AllocatorTest();
     pprintString("Finished\n");

    exit_emulator();

    // size_t pom1= mem_get_free_space();
    // pprintString("Free mem: ");
    // printInteger(pom1);
    // pprintString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // pprintString("Largest free block: ");
    // printInteger(pom2);
    // pprintString("\n");
}








