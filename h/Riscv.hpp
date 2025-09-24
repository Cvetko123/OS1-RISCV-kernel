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
    static uint64 get_scause();
    static uint64 get_stval();
    static void mc_sstatus(uint64 mask);
    static void mc_sip(uint64 mask);
    enum BitMaskSstatus
    {
        SSTATUS_SIE=(1UL<<1),
        SSTATUS_SPIE=(1UL<<5),
        SSTATUS_SPP=(1UL<<8)
    };
    enum BitMasSip: uint64
    {
        SIP_SSIP=(1UL<<1),
        SIP_STIP=(1UL<<5),
        SIP_SEIP=(1UL<<9)
    };
    enum BitMasSie: uint64
    {
        SIE_SSIE=(1UL<<1),
        SIE_SEIE=(1UL<<9)
    };

    static void pushRegisters();
    static void popRegisters();

    static void restorePrivilege();
    static void popSppSpie();


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

inline uint64 Riscv::get_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    return scause;
}
inline uint64 Riscv::get_stval() {
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
}
#endif //PROJECT_BASE_V1_1_COPY_RISCV_HPP