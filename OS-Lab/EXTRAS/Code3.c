#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <semaphore.h>
sem_t mutex;
 
int main(int argc, char * argv[]) {
    sem_init(& mutex, 1, 1);
    int rc1 = fork();
    int rc2 = fork();
 
    if (rc1 < 0 && rc2 < 0) {
        printf("fork failed");
        exit(1);
    } else if (rc1 == 0 && rc2 == 0) {
        for (int i = 1; i <= 10; i++) {
            if (i % 2 == 0) {
                sem_wait(& mutex);
                printf("Printing %d from (pid: %d)\n", i, (int) getpid());
                sem_post(& mutex);
            }
        }
    } else {
        for (int i = 1; i <= 10; i++) {
            if (i % 2 == 0) {
                sem_wait(& mutex);
                printf("Printing %d from (pid: %d)\n", i, (int) getpid());
                sem_post(& mutex);
            }
        }
    }
 
    return 0;
}