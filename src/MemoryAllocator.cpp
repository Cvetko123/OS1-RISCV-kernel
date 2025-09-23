//
// Created by os on 9/7/25.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    this->head->prev=nullptr;
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    this->freeMemSize=this->head->size;
}




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    return &instance;
}


void* MemoryAllocator::mem_alloc(size_t size) {
    if (this->head==nullptr)
        return nullptr;
    if (size==0) {
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    if (offset!=0)
        offset=1;

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;


    MemoryHeader* curr= this->head;
    while (curr->next!=nullptr && curr->size < actulalSize) {
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
        new_seg->next=curr->next;
        new_seg->prev=curr->prev;
        if (curr==this->head) {
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
            curr->prev->next=new_seg;
        if (curr->next)
            curr->next->prev=new_seg;
        curr->size=actulalSize;
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    }
    else {
        if (curr==this->head) {
            this->head=curr->next;
        }
        if (curr->prev)
            curr->prev->next=curr->next;
        if (curr->next)
            curr->next->prev=curr->prev;
        this->freeMemSize-= actulalSize;
    }


    __putc('m');
    __putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
}


void MemoryAllocator::mem_free(void* ptr) {
    if (ptr==nullptr) {
        return;
    }
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    if (this->head==nullptr) {
        this->head=block;
        block->next=nullptr;
        block->prev=nullptr;
        this->freeMemSize+= block->size;
        return;
    }
    MemoryHeader* curr = this->head;
    while (curr->next!=nullptr && curr->next < block) {
        curr=curr->next;
    }

    if (curr==this->head and curr > block) {
        block->next=curr;
        block->prev=curr->prev;
        curr->prev=block;
        this->head=block;
    }
    else {
        block->next=curr->next;
        block->prev=curr;
        curr->next=block;
        if (block->next) {
            block->next->prev=block;
        }
    }

    this->freeMemSize+= block->size;
    __putc('n');
    __putc('\n');
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    if (block==nullptr)
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
        __putc('t');
        __putc('\n');
        block->size += block->next->size;
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}

size_t MemoryAllocator::getLargestFreeBlock() {
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    }
    return maxSize;
}