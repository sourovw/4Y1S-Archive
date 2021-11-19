#include <stdio.h>
#include <sys/stat.h>

int main() {
    struct stat sfile;
    stat("prob2.c", &sfile);

    printf("st_mode = %o\n", sfile.st_mode);
    printf("st_ino = %o\n", sfile.st_ino);
    printf("st_dev = %o\n", sfile.st_dev);
    printf("st_rdev = %o\n", sfile.st_rdev);
    printf("st_nlink = %o\n", sfile.st_nlink);
    printf("st_uid = %o\n", sfile.st_uid);
    printf("st_gid = %o\n", sfile.st_gid);
    printf("st_size = %o\n", sfile.st_size);
    printf("st_atim = %o\n", sfile.st_atim);
    printf("st_mtim = %o\n", sfile.st_mtim);
    printf("st_ctim = %o\n", sfile.st_ctim);
    printf("st_blksize = %o\n", sfile.st_blksize);
    printf("st_blocks = %o", sfile.st_blocks);

    return 0;
}
