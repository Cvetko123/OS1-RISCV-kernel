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
        printString("Failed\n");

    }
}

void workerBodyA() {
    initSemaphore();
    semaphore->wait();
    uint8 i = 0;
    for (; i < 3; i++) { printString("A: i="); printInteger(i); printString("\n"); }

    printString("A: yield\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    printString("A: t1="); printInteger(t1); printString("\n");

    uint64 result = fibonacci(20);
    printString("A: fibonaci="); printInteger(result); printString("\n");

    for (; i < 6; i++) { printString("A: i="); printInteger(i); printString("\n"); }

    printString("A finished!\n");
    semaphore->signal();

}

void workerBodyB() {
    initSemaphore();
    semaphore->wait();
    uint8 i = 10;
    for (; i < 13; i++) { printString("B: i="); printInteger(i); printString("\n"); }

    printString("B: yield\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacci(23);
    printString("B: fibonaci="); printInteger(result); printString("\n");

    for (; i < 16; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    printString("B finished!\n");
    semaphore->signal();
}

void workerBodyC() {
    initSemaphore();
    semaphore->wait();
    uint8 i = 20;
    for (; i < 23; i++) { printString("C: i="); printInteger(i); printString("\n"); }

    printString("C: yield\n");
    __asm__ ("li t1, 9");
    thread_dispatch();

    uint64 result = fibonacci(35);
    printString("C: fibonaci="); printInteger(result); printString("\n");

    for (; i < 26; i++) { printString("C: i="); printInteger(i); printString("\n"); }
    printString("C finished!\n");
    semaphore->signal();
}

