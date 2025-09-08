//
// Created by os on 9/8/25.
//

#include "../h/Riscv.hpp"
#include "../lib/console.h"

extern  "C" void SupervisorTrapHandlerWrapper() {
    Riscv::SupervisorTrapHandler();
}


void Riscv::SupervisorTrapHandler() {
    uint64 sepc;
    uint sstatus;
    sepc=get_sepc();
    sstatus=get_sstatus();
    __putc('E');
    __putc('\n');
    set_sepc(sepc+4);
    set_sstatus(sstatus);
}