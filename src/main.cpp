
#include "../lib/console.h"
#include  "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include  "../h/syscall_cpp.hpp"
#include "../h/Riscv.hpp"

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

extern "C" void SupervisorTrap();

void main() {
    Riscv::set_stvec((uint64)SupervisorTrap);
    AllocatorTest();

    __putc('O');
    __putc('K');
    __putc('\n');
}








