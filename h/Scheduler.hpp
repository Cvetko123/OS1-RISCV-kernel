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

    static void put(TCB* x);
    static TCB* get();

    static int getSize() { return queue.size; }
private:
    static List<TCB> queue;
};
#endif //PROJECT_BASE_V1_1_COPY_SCHEDULER_HPP