#include <endian.h>
#include <features.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

static void reverseArrayInt(int* arr, const int size) {
    if (size <= 1) {
        return;
    }

    int aux = *(arr); //First element
    *(arr) = *(arr + (size - 1)); //Copy last to first
    *(arr + (size - 1)) = aux; //Copy first to last
    
    reverseArrayInt(arr + 1, size - 2);
}

static void reverseArrayPointer(int** arr, const int size) {
    if (size <= 1) {
        return;
    }
    
    int* aux = arr[0];
    arr[0] = arr[size - 1];
    arr[size - 1] = aux;
    /*int* aux = *(arr); //First array*/
    /**(arr) = *(arr + (size - 1)); //Copy last to first*/
    /**(arr + (size - 1)) = aux; //Copy first to last*/
    
    /*reverseArrayPointer(arr + 1, size - 2);*/
}

int main()
{
    
    int s = 11;
    int nums[s][s]; 
    
    for (int i = 0; i < s; i++) {
        for (int j = 0; j < s;j++) {
            nums[i][j] = i + j;
        }
    }

    /*for (int i = 0; i < s; i++) {*/
    /*    reverseArrayInt(nums[i], s); */
    /*}*/

    reverseArrayPointer((int**) nums, s);

    for (int i = 0; i < s; i++) {
        for (int j = 0; j < s ;j++) {
            printf("%3d", nums[i][j]);
        }
        printf("\n");
    }

    return EXIT_SUCCESS;
}
