//
// Created by os on 9/8/25.
//
#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    size_t offset = size % MEM_BLOCK_SIZE;
    if (offset!=0)
        offset=1;
    size_t blocks=size/MEM_BLOCK_SIZE +offset;
    uint64 opcode=MEM_ALLOC;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (blocks));
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (void*)ret;
}

int mem_free(void* ptr) {
    if (ptr==nullptr) {
        return 0;
    }
    uint64 opcode=MEM_FREE;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (ptr));
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (int)ret;
}

size_t mem_get_free_space() {
    uint64 opcode=MEM_GET_FREE_SPACE;
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (size_t)ret;
}

size_t mem_get_largest_free_block() {
    uint64 opcode=MEM_GET_LARGEST_FREE_BLOCK;
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (size_t)ret;
}