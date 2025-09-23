//
// Created by os on 9/23/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_COPY_SCHEDULER_HPP


#include "List.hpp"

class TCB;

class Scheduler
{
public:
    static Scheduler* Instance();
    void put(TCB* x);
    TCB* get();

private:
    Scheduler();
    List<TCB> queue;
};
#endif //PROJECT_BASE_V1_1_COPY_SCHEDULER_HPP