#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MAX_INTS 100
#define MAX_LINE_SIZE 10


int cmpInt(const void* px1, const void* px2) {
    int num1 = *((int *) px1);
    int num2 = *((int *) px2);

    return num1 == num2 ? 0 : num1 > num2 ? 1 : -1;
}

int cmpDbl(const void* p1, const void* p2) {
    double d1 = *((double*) p1);
    double d2 = *((double*) p2);

    return d1 == d2 ? 0 : d1 > d2 ? 1 : -1;
}

int main(int argc, char *argv[])
{
    FILE* fp = NULL;
    char line[MAX_LINE_SIZE]; //Read at most 10bytes.
    int arr[MAX_INTS]; //Read at most 100 numbers.

    fp = fopen(argv[1], "rb");
    if (fp == NULL) return EXIT_FAILURE;

    int i;
    for (i = 0; i < MAX_INTS; i++) {
        if (fgets(line, MAX_LINE_SIZE, fp) == NULL) break;
        arr[i] = atoi(line);
    }

    qsort(arr, i, sizeof(int), &cmpInt);

    for (int k = 0; k < i; k++) {
        printf("%d\n", arr[k]);
    }

    fclose(fp);

    return EXIT_SUCCESS;
}
