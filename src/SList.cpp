#include "../h/SList.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_cpp.hpp"

SList::Node* SList::head = nullptr;

int SList::size = 0;

void SList::add(TCB* tcb,time_t time) {
    Node* newNode = new Node(tcb, time);
    if(newNode==nullptr)
        return;
    if (head == nullptr || time < head->sleepTime) {
        newNode->next = head;
        if (head != nullptr) {
            head->sleepTime=head->sleepTime-newNode->sleepTime;
        }
        head = newNode;
    } else {
        Node* curr = head;
        while (curr->next != nullptr && curr->next->sleepTime <= newNode->sleepTime) {
            newNode->sleepTime=newNode->sleepTime - curr->sleepTime;
            curr=curr->next;
        }
        newNode->next = curr->next;
        curr->next = newNode;
    }
    size++;

}

void SList::oneTick() {
    if (!head)
        return;
    head->sleepTime--;
    while (head != nullptr && head->sleepTime <= 0) {
        head->tcb->unblock();
        Scheduler::put(head->tcb);
        head = head->next;
        size--;
    }
}
