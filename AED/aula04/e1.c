#include <stddef.h>
#include <stdio.h>

int e1(int* arr, size_t size)
{
    int c = 0; // Counter
    for(int i = 1; i < size - 1; i++)
    {   
        if (*(arr + i) == *(arr + (i - 1)) + *(arr + (i + 1))) {
            c++;
        }
    }
    return c;
}

int main(int argc, char *argv[])
{
    int arr[] = {1,2,1,3,5,6,7,8,9,10};
    size_t size = 10;
    printf("Result: %d\n", e1(arr, size));
    return 0;
}
