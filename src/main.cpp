
#include "../lib/console.h"
#include  "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"

// uint64 pc;
// uint64 counter=0;
// void f() {
//     __putc('a');
//     __putc('\n');
//     __asm__ volatile ("mv ra, %[destination]" :: [destination] "r" (pc));
//     __asm__ volatile ("sd ra, 8(sp)");
// }
//
//
//
// void dispatch() {
//     __asm__ volatile ("mv %[ret], ra" : [ret] "=r" (pc)  );
//     __asm__ volatile ("mv ra, %[destination]" :: [destination] "r" (&f));
// }
//
//
//
//
//
// extern "C" void SuperVisorTrapHandler() {
//     uint64 scause;
//     __asm__ volatile ("csrr %[ret], scause" : [ret] "=r" (scause) );
//     if (scause == (0x01UL <<63 | 0x01)) {
//         counter++;
//
//         if (counter>=50) {
//
//             __putc('b');
//             __putc('\n');
//             counter=0;
//         }
//         __asm__ volatile ("csrc sip, 0x02");
//     }
//     console_handler();
//
// }


//extern "C" void SupervisorTrap();



void main(){
    // __asm__ volatile ("csrw stvec, %[handler]" :: [handler] "r" (SupervisorTrap));
    // __asm__ volatile("csrs sstatus, 0x02");
    // while (1){}

    uint64* a1=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    *a1=4;
    __putc(*a1+'0');
    __putc('\n');
    uint64* a2=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    *a2=5;
    __putc(*a2+'0');
    __putc('\n');
    uint64* a3=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    *a3=6;
    __putc(*a3+'0');
    __putc('\n');
    uint64* a4=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    *a4=7;
    __putc(*a4+'0');
    __putc('\n');
    uint64* a5=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    *a5=8;
    __putc(*a5+'0');
    __putc('\n');
    MemoryAllocator::Instance()->mem_free(a1);
    MemoryAllocator::Instance()->mem_free(a3);
    MemoryAllocator::Instance()->mem_free(a4);
    uint64* a6=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64)*9);
    *a6=9;
    __putc(*a6+'0');
    __putc('\n');







}