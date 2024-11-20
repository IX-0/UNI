#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    FILE* fp = NULL;

    if (argc != 2) return EXIT_FAILURE;
    
    fp = fopen("command.log","rb");
    if (fp == NULL) return EXIT_FAILURE; 

    int n;
    char bfr[50];
    while((n = fread(bfr, sizeof(char), 50, fp)) != 0) {
        printf("n:%d\n", n);
        fwrite(bfr, sizeof(char) , n, stdout);
    }

    return EXIT_SUCCESS;
}
