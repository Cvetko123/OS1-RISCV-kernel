
#include "../lib/console.h"
#include  "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include  "../h/syscall_cpp.hpp"
#include "../h/Riscv.hpp"
#include "../h/print.hpp"
#include "../h/List.hpp"
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
    printString("user main start:\n");
    userMain();
    printString("user main end:\n");
}

void WorkerAWrapper(void* arg)
{
    //printString("worker A start:\n");
    workerBodyA();
    //printString("worker A end:\n");
}

void WorkerBWrapper(void* arg)
{
    //printString("worker B start:\n");
    workerBodyB();
    //printString("worker B end:\n");
}





void main() {
    Riscv::set_stvec((uint64)Riscv::SupervisorTrap);
    //AllocatorTest();



     thread_t coroutines[3];
     thread_create(&coroutines[0],nullptr,nullptr);
     coroutines[0]->setSysThread(true);
     thread_create(&coroutines[1],userWrapper,nullptr);
     //thread_create(&coroutines[2],WorkerBWrapper,nullptr);


     while (Scheduler::queue.size>0 ) {
         thread_dispatch();
     }

     for (auto coroutine: coroutines) { delete coroutine; }

     AllocatorTest();
     printString("Finished\n");

    //printString("OK\n");


    // size_t pom1= mem_get_free_space();
    // printString("Free mem: ");
    // printInteger(pom1);
    // printString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // printString("Largest free block: ");
    // printInteger(pom2);
    // printString("\n");
}








