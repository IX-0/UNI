#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    // 1.a)
    if (argc != 2) {
        printf("Alerta! Número errado de argumentos\n");
        return EXIT_FAILURE;
    }


    int i;
    
    for(i = 0 ; i < argc ; i++)
    {
        printf("Argument %02d: \"%s\"\n", i, argv[i]);        
    }

    return EXIT_SUCCESS;
}
