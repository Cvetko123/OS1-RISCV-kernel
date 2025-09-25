//
// Created by os on 9/25/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_SEM_HPP
#define PROJECT_BASE_V1_1_COPY_SEM_HPP
#include "List.hpp"
#include "TCB.hpp"
class SEM {
public:

    int wait();

    int signal();

    static SEM* open(unsigned init);

    int close();
private:
    SEM(unsigned init);

    int val;
    bool closed;
    List<TCB> blockedQueue;
};


#endif //PROJECT_BASE_V1_1_COPY_SEM_HPP