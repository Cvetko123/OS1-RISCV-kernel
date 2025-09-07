
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
    int* i=(int*)MemoryAllocator::Instance()->mem_alloc(sizeof(int));
    *i=4;
    __putc(*i+'0');
    __putc('\n');
    MemoryAllocator::Instance()->mem_free(i);
    char* c=(char*)MemoryAllocator::Instance()->mem_alloc(sizeof(char));
    *c='a';
    __putc(*c);
    __putc('\n');


}