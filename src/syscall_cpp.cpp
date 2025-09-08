//
// Created by os on 9/8/25.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size)
{
    return mem_alloc(size);
}

void operator delete(void* ptr)
{
    mem_free(ptr);
}