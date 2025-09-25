//
// Created by os on 9/24/25.
//
#include "../h/workers.hpp"
#include "../lib/hw.h"

#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) thread_dispatch();
    return fibonacci(n - 1) + fibonacci(n - 2);
}

Semaphore* semaphore;

void initSemaphore() {
    if (semaphore) {
        return;
    }
    semaphore = new Semaphore(2);
    if (semaphore == nullptr) {
        pprintString("Failed\n");

    }
}

void workerBodyA() {
   initSemaphore();
   semaphore->wait();
    // uint8 i = 0;
    // for (; i < 3; i++) { pprintString("A: i="); printInteger(i); pprintString("\n"); }

    // pprintString("A: yield\n");
    // __asm__ ("li t1, 7");
    // thread_dispatch();

    // uint64 t1 = 0;
    // __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    // pprintString("A: t1="); printInteger(t1); pprintString("\n");

    // uint64 result = fibonacci(20);
    // pprintString("A: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 6; i++) { pprintString("A: i="); printInteger(i); pprintString("\n"); }
    for (uint64 i = 0; i < 10; i++) {
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            // TCB::yield();
        }
    }
    pprintString("A finished!\n");
    semaphore->signal();

}

void workerBodyB() {
    initSemaphore();
    semaphore->wait();
    // uint8 i = 10;
    // for (; i < 13; i++) { pprintString("B: i="); printInteger(i); pprintString("\n"); }

    // pprintString("B: yield\n");
    // __asm__ ("li t1, 5");
    // thread_dispatch();

    // uint64 result = fibonacci(23);
    // pprintString("B: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 16; i++) { pprintString("B: i="); printInteger(i); pprintString("\n"); }

    for (uint64 i = 0; i < 16; i++) {
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            // TCB::yield();
        }
    }
    pprintString("B finished!\n");
    semaphore->signal();
}

void workerBodyC() {
    initSemaphore();
    semaphore->wait();
    uint8 i = 20;
    for (; i < 100; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }

    pprintString("C: yield\n");
    __asm__ ("li t1, 9");
    thread_dispatch();

    uint64 result = fibonacci(35);
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");

    for (; i < 26; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    pprintString("C finished!\n");
    semaphore->signal();
}

