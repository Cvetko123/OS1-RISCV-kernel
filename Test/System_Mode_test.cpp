
#include "../h/syscall_c.hpp"

#include "../h/print.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

static void workerBodyA(void* arg) {
    for (uint64 i = 0; i < 10; i++) {
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    pprintString("A finished!\n");
    finishedA = true;
}

static void workerBodyB(void* arg) {
    for (uint64 i = 0; i < 16; i++) {
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
        if (i == 10) {
            asm volatile("csrr t6, sepc");
        }
    }
    pprintString("B finished!\n");
    finishedB = true;
    thread_dispatch();
}

static void workerBodyC(void* arg) {
    uint8 i = 0;
    for (; i < 3; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    }

    pprintString("C: dispatch\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    pprintString("C: t1="); printInteger(t1); pprintString("\n");

    uint64 result = fibonacci(12);
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");

    for (; i < 6; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    }

    pprintString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    uint8 i = 10;
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    }

    pprintString("D: dispatch\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacci(16);
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    }

    pprintString("D finished!\n");
    finishedD = true;
    thread_dispatch();
}


void System_Mode_test() {
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    pprintString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB, nullptr);
    pprintString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC, nullptr);
    pprintString("ThreadC created\n");

    thread_create(&threads[3], workerBodyD, nullptr);
    pprintString("ThreadD created\n");

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    }

}
