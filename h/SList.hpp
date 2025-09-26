//
// Created by os on 9/26/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_SLIST_HPP
#define PROJECT_BASE_V1_1_COPY_SLIST_HPP
#include "TCB.hpp"


class SList {
public:
    static void add(TCB* tcb, time_t sleepTime);

    static void oneTick();

    static int getSize() { return size; }
private:
    struct Node {
        TCB* tcb;
        time_t sleepTime;
        Node* next;
        Node(TCB* val,time_t sleep):tcb(val), sleepTime(sleep),next(nullptr){}
    };
    static Node* head;
    static int size;

};

#endif //PROJECT_BASE_V1_1_COPY_SLIST_HPP