
#ifndef PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP
#include "../lib/hw.h"

enum syscallCodes {
    MEM_ALLOC=0x01,
    MEM_FREE=0x02
};



void* mem_alloc(size_t size);

int mem_free(void* ptr);



#endif //PROJECT_BASE_V1_1_COPY_SYSCALL_C_HPP