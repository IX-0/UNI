#include <stdio.h>
#include <stdlib.h>

int factorial(int n) {

  if (n < 2) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

int factoriao(int num) {

  int factoriais[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  int tmp;
  int cp_num = num;

  while (num != 0) {
    tmp = num % 10;
    num /= 10;

    if (factoriais[tmp] == 0) {
      factoriais[tmp] = factorial(tmp);
    }

    cp_num -= factoriais[tmp];
  }

  return cp_num == 0;
}

int factoriao_test(int num) {
  int n = 0;
  int tmp;
  int factoriais[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

  while (num != 0) {
    tmp = num % 10;
    num /= 10;

    if (factoriais[tmp] == 0) {
      n += tmp;
      factoriais[tmp] = factorial(tmp);
    }

    n += 4;
  }

  return n;
}

int main(int argc, char *argv[]) {

  for (int i = 0; i < atoi(argv[1]); i++) {
    if (factoriao(i)) {
      printf("Factoriao found! --> %d\n", i);
    }
  }

  printf("END");

  int start_n = 2;
  int previous;
  int result;
  double ratio = 0.0;

  printf("\n Factoriao complexity \n");
  printf("      n       f(n)   f(n)/f(n/2)\n");
  printf("-------  ----------  --------------\n");

  for (int n = start_n; n < atoi(argv[1]); n *= 2) {
    result = factoriao_test(n);
    printf("%7d  %10d", n, result);

    if (n > start_n) {
      ratio = (double)result / (double)previous;
      printf("  %14.5f", ratio);
    }

    printf("\n");

    previous = result;
  }

  printf("-------  ----------  --------------\n");

  return 0;
}
