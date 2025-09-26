//
// Created by os on 9/8/25.
//

#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
#include "../h/SList.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


BBuff* Riscv::INbuff = nullptr;
BBuff* Riscv::OUTbuff = nullptr;

void Riscv::InitBBuffs() {
    if (INbuff==nullptr) {
        INbuff=new BBuff(256);
    }
    if (OUTbuff==nullptr) {
        OUTbuff=new BBuff(256);
    }
}

void Riscv::SupervisorTrapHandler() {
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
        // interrupt from timer

        TCB::timeCounter++;
        SList::oneTick();
        if (TCB::timeCounter >= TCB::running->getTimeSlice()) {
            TCB::dispatch();
            set_sepc(sepc);
            set_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
        // interrupt from keyboard

        int irq = plic_claim();
        if(irq==0x0a)
        {
            volatile char status = (*(char*)CONSOLE_STATUS);
            while(status & CONSOLE_RX_STATUS_BIT)
            {
                volatile  char c = (*(char*)CONSOLE_RX_DATA);
                INbuff->put(c);
                status = (*(char*)CONSOLE_STATUS);
            }

        }
        plic_complete(irq);
        set_sepc(sepc);
        set_sstatus(sstatus);
        //console_handler();
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
    else if (syscode==SEM_OPEN) {
        sem_t* handle;
        unsigned init;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (init));

        *handle=SEM::open(init);
        int ret=0;
        if (*handle) {
            ret=0;
        }
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_CLOSE) {
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->close();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_WAIT) {
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->wait();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_SIGNAL) {
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->signal();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==TIME_SLEEP) {
        time_t sleepTime;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (sleepTime));
        int ret=TCB::sleep(sleepTime);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==GETCHAR) {
        char c = INbuff->get();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (c));
    }
    else if (syscode==PUTCHAR) {
        char c;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (c));
        OUTbuff->put(c);
    }
    else {
        scause= get_scause();
        uint64 stval= get_stval();
        pprintString("scause:");
        printInteger(scause);
        pprintString("\n");

        pprintString("stval:");
        printInteger(stval);
        pprintString("\n");

        pprintString("sepc:");
        printInteger(sepc);
        pprintString("\n");
        getc();
    }
    set_sepc(sepc+4);
    set_sstatus(sstatus);
    }


}