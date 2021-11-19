#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <mutex>

int main(int argc, char *argv[]) {
    int rc1 = fork();
    int rc2 = fork();
    std::mutex process;

    if (rc1 == 0) {
        process.lock();
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        process.unlock();
    } else {
        process.lock();
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        process.unlock();
    }

    if (rc2 == 0) {
        process.lock();
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        process.unlock();
    } else {
        process.lock();
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        printf("hello, my id is: (pid: %d)\n", (int) getpid());
        process.unlock();
    }

    return 0;
}
