#include <stdlib.h>
#include <stdio.h>

static void copyArray(int* dst, int* src) {
    int i = 0;
    while(src[i] != -1) {
        dst[i] = src[i]; 
        i++;
    }
    dst[i] = -1;
}

int main()
{
    int arr1[] = {1 , 2, 3, 4, 5, -1};
    int arr2[6];

    copyArray(arr2, arr1);

    int i = 0;
    while(arr2[i] != -1) printf("%d", arr2[i++]);
    
    return EXIT_SUCCESS;
}
