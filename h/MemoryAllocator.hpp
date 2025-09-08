
#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator {
public:
    static MemoryAllocator* Instance();

    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);
protected:
    typedef struct MemoryHeader {
        size_t size;
        MemoryHeader* next;
        MemoryHeader* prev;
    }MemoryHeader;

    MemoryAllocator();



    void try_to_join(MemoryHeader* block);

private:
    MemoryHeader* head;
    //MemoryHeader* tail;
    size_t  freeMemSize;
};

#endif