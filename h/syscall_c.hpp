
#ifndef PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP
#include "../lib/hw.h"

enum syscallCodes {
    MEM_ALLOC=0x01,
    MEM_FREE=0x02,
    MEM_GET_FREE_SPACE=0x03,
    MEM_GET_LARGEST_FREE_BLOCK=0x04
};



void* mem_alloc(size_t size);

int mem_free(void* ptr);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();



#endif //PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP