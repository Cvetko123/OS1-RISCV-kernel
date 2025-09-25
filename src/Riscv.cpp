//
// Created by os on 9/8/25.
//

#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::restorePrivilege()
{
    if(TCB::running->isSysThread())
        ms_sstatus(SSTATUS_SPP);
    else
        mc_sstatus(SSTATUS_SPP);
}


void Riscv::SupervisorTrapHandler() {
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));

    if (syscode==MEM_ALLOC) {
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
        thread_t* handle;
        Body start_routine;
        void* arg;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));

        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);


        *handle=TCB::createThread( start_routine, arg,sp);
        int ret=0;
        if (*handle) {
            ret=0;
        }
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
        TCB::dispatch();
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        printString("scause:");
        printInteger(scause);
        printString("\n");

        printString("stval:");
        printInteger(stval);
        printString("\n");

        printString("sepc:");
        printInteger(sepc);
        printString("\n");
        __getc();
    }
    set_sepc(sepc+4);
    set_sstatus(sstatus);
    }


}