//
// Created by os on 9/8/25.
//
#include "../h/syscall_c.hpp"
#include  "../h/MemoryAllocator.hpp"


inline void invoke(uint64 opcode)
{
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    __asm__ volatile("ecall");
}

void* mem_alloc(size_t size) {
    size_t offset = size % MEM_BLOCK_SIZE;
    if (offset!=0)
        offset=1;
    size_t blocks=size/MEM_BLOCK_SIZE +offset;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (blocks));
    invoke(MEM_ALLOC);

    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (void*)ret;
}

int mem_free(void* ptr) {
    if (ptr==nullptr) {
        return 0;
    }
    void *p=ptr;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (p));
    invoke(MEM_FREE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (int)ret;
}

size_t mem_get_free_space() {

    invoke(MEM_GET_FREE_SPACE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (size_t)ret;
}

size_t mem_get_largest_free_block() {
    invoke(MEM_GET_LARGEST_FREE_BLOCK);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (size_t)ret;
}


int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg)
{

    __asm__ volatile ("mv a3, %[x]" :: [x] "r" (arg));
    __asm__ volatile ("mv a2, %[x]" :: [x] "r" (start_routine));
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));

    invoke(THREAD_CREATE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (int)ret;
}
int thread_exit()
{
    invoke(THREAD_EXIT);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    return (int)ret;
}

void thread_dispatch()
{
    invoke(THREAD_DISPATCH);
}

