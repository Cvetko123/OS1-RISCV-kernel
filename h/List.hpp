//
// Created by os on 9/23/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_LIST_HPP
#define PROJECT_BASE_V1_1_COPY_LIST_HPP



template<typename T>
class List
{
private:
    struct Elem
    {
        T* data;
        Elem* next;
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    };
    Elem * head;
    Elem *tail;

public:
    List(): head(0), tail(0){}
    void addFirst(T* data)
    {
        Elem* elem=new Elem(data, head);
        head=elem;
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
        if(!head){return 0;}
        Elem* prev=0;
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
        Elem* elem=tail;
        if(prev) prev->next=0;
        else head=0;
        tail=prev;
        T* retval= elem->data;
        delete elem;
        return retval;
    }
    int size=0;
};

#endif //PROJECT_BASE_V1_1_COPY_LIST_HPP