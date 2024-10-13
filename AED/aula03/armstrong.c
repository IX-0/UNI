#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <unistd.h>

int armstrong(int num, int dc) 
{
  
  int pows[] = {0,0,0,0,0,0,0,0,0,0};
  int tmp = -1;
  int sum = num;

  while(num != 0)
  {
    tmp = num % 10;
    num = num / 10;

    if (pows[tmp] == 0)
    {
      pows[tmp] = pow(tmp,dc);
    }

    sum -= pows[tmp];
  }

  return sum;
}

double armstrong_test(int num, int dc) {
  
  int pows[] = {0,0,0,0,0,0,0,0,0,0};
  int tmp = -1;
  double n = 0;

  while(num != 0)
  {
    tmp = num % 10;
    num = num / 10;

    if (pows[tmp] == 0)
    {
      
      if (tmp != 0) n += log(tmp);
      pows[tmp] = pow(tmp, dc);
    }

    n += 4;
  }

  return n;
}

int count_digits(int num)
{
  int c = 0;
  while (num != 0)
  {
    num = num / 10;
    c++;
  }

  return c;
}

int main(int argc, char **argv)
{
  
  for (int i = 0; i < atoi(argv[1]); i++) 
  {
    if (armstrong(i, count_digits(i)) == 0) 
    {
      printf("Armstrong found! --> %d\n", i);
    }
  }

  int start_n = 2;
  double previous = 0;
  double result = 0;
  double ratio = 0.0;

  printf("\n Armstrong complexity \n");
  printf("      n       f(n)   f(n)/f(n/2)\n");
  printf("-------  ----------  --------------\n");

  for (int n = start_n; n < atoi(argv[1]); n *= 2) {
    result = armstrong_test(n, count_digits(n));
    printf("%7d  %10.5f", n, result);

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
