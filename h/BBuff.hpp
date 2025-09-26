//
// Created by os on 9/26/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_BBUFF_HPP
#define PROJECT_BASE_V1_1_COPY_BBUFF_HPP

#include "../h/syscall_c.hpp"


class BBuff {
public:
    void put(char c);
    char get();
    BBuff(int size);
    ~BBuff();
    int getCnt() {
        return count;
    };
private:
    char* buff;
    int size;
    int head, tail;
    sem_t space;
    sem_t items;
    int count;
};

#endif //PROJECT_BASE_V1_1_COPY_BBUFF_HPP