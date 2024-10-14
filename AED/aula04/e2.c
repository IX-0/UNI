#include <stddef.h>
#include <stdio.h>

int pgcheck(int *arr, size_t size) {
  if (arr[1] == 0)
    return 0;
  double r = ((double)arr[1]) / ((double)arr[0]);
  for (int i = 1; i < size - 1; i++) {
    if (arr[i + 1] != r * arr[i])
      return 0;
  }
  return 1;
}

int main(int argc, char *argv[]) {
  int arr[] = {1, 4, 8, 16, 32};
  size_t size = 5;
  printf("Result: %d\n", pgcheck(arr, size));
  return 0;
}
