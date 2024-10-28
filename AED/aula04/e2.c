#include <stddef.h>
#include <stdio.h>

int count = 0;

int pgcheck(int *arr, size_t size) {
  if (arr[1] == 0)
    return 0;
  double r = ((double)arr[1]) / ((double)arr[0]);
  for (int i = 1; i < size - 1; i++) {
    count++;
    if (arr[i + 1] != r * arr[i])
      return 0;
  }
  return 1;
}

int main(int argc, char *argv[]) {
  size_t size = 10;
  int arr1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  printf("Result: %d\n", pgcheck(arr1, size));
  printf("Operations: %d\n", count);
  count = 0;

  int arr2[] = {2, 4, 4, 5, 6, 7, 8, 9, 10};
  printf("Result: %d\n", pgcheck(arr2, size));
  printf("Operations: %d\n", count);
  count = 0;

  int arr3[] = {2, 4, 8, 5, 6, 7, 8, 9, 10};
  printf("Result: %d\n", pgcheck(arr3, size));
  printf("Operations: %d\n", count);
  count = 0;

  int arr4[] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 10};
  printf("Result: %d\n", pgcheck(arr4, size));
  printf("Operations: %d\n", count);
  count = 0;

  int arr5[] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512};
  printf("Result: %d\n", pgcheck(arr5, size));
  printf("Operations: %d\n", count);
  count = 0;

  return 0;
}

/*
 *  Neste exemplo:
*   Pior caso = 8
*   Melhor caso = 1
*   Caso médio = 4.5 
*/
