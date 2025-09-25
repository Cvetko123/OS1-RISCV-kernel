//
// Created by os on 9/24/25.
//

#ifndef PROJECT_BASE_V1_1_COPY_WORKERS_HPP
#define PROJECT_BASE_V1_1_COPY_WORKERS_HPP
#include "../lib/hw.h"
#include "../h/SEM.hpp"

uint64 fibonacci(uint64 n);



void workerBodyA();
void workerBodyB();
void workerBodyC();

#endif //PROJECT_BASE_V1_1_COPY_WORKERS_HPP