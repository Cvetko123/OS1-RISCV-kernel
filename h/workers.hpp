//
// Created by os on 9/24/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_WORKERS_HPP
#define PROJECT_BASE_V1_1_COPY_WORKERS_HPP
#include "../lib/hw.h"
#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"

uint64 fibonacci(uint64 n);



void workerBodyA();
void workerBodyB();
void workerBodyC();


class WorkerP : public PeriodicThread {
    void workerBodyP(void* arg);
public:
    WorkerP(time_t p) : PeriodicThread(p) {}

    void periodicActivation() override {
        workerBodyP(nullptr);
    }
};

#endif //PROJECT_BASE_V1_1_COPY_WORKERS_HPP