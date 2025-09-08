//
// Created by os on 9/8/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_RISCV_HPP
#define PROJECT_BASE_V1_1_COPY_RISCV_HPP
#include "../lib/hw.h"

class Riscv {
public:
    static void set_stvec(uint64 stvec);
    static void set_sepc(uint64 sepc);
    static uint64 get_sepc();
    static void set_sstatus(uint64 sstatus);
    static uint64 get_sstatus();

    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
}

inline void Riscv::set_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
}

inline uint64 Riscv::get_sepc() {
    uint64 sepc;
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    return sepc;
}

inline void Riscv::set_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
}

inline uint64 Riscv::get_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    return sstatus;
}
#endif //PROJECT_BASE_V1_1_COPY_RISCV_HPP