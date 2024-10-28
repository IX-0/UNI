#include <stddef.h>
#include <stdio.h>

unsigned int CALLS = 0;
unsigned int dCache[1024][1024];

void initCache(unsigned int** cache)
{
    for (size_t i;i < 1024;i++)    
}

int Dm(int m, int n)
{
    return 0; 
}

int Dr(int m, int n)
{
    
    if (m == 0 || n == 0)
    {
        return 1;
    }
    
    //CALLS++;
    //printf("calls: %d m: %d n: %d\n", CALLS,m ,n);
    return Dr(m - 1, n) + Dr(m, n - 1) + Dr(m - 1, n - 1);
}

int Di(size_t max)
{
    unsigned int d[max + 1][max + 1];
    d[0][0] = 1;
    for (size_t i = 1; i <= max; i++)
    {
        d[i][0] = 1;
        for (size_t j = 1; j <= max; j++)
        {
            d[0][j] = 1;
            d[i][j] = d[i-1][j] + d[i][j-1] + d[i-1][j-1];
        }
    }

    for (size_t i = 0; i <= max; i++)
    {
        printf("D(%d, %d): %d\n",(int) i,(int) i, d[i][i]);
    }

    return 1;
}

int main(void)
{
     
    for (int i = 0; i < 13 ;i++) 
    {
        printf("Dr(%d, %d): %d\n",i,i, Dr(i,i));
    }
    
    Di(20);
    return 0;
}
