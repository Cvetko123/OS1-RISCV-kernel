
#ifndef PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP
#include "../lib/hw.h"
#include "TCB.hpp"
enum syscallCodes {
    MEM_ALLOC=0x01,
    MEM_FREE=0x02,
    MEM_GET_FREE_SPACE=0x03,
    MEM_GET_LARGEST_FREE_BLOCK=0x04,
    THREAD_CREATE=0x11,
    THREAD_EXIT=0x12,
    THREAD_DISPATCH=0x13
};



void* mem_alloc(size_t size);

int mem_free(void* ptr);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();

typedef TCB* thread_t;

int thread_create(thread_t* handle,void(*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();



#endif //PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP