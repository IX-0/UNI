#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

/* SUGESTÂO: utilize as páginas do manual para conhecer mais sobre as funções usadas:
 man fopen
 man fgets
*/

#define LINEMAXSIZE 80 /* or other suitable maximum line size */


int main(int argc, char *argv[])
{
    FILE *fp = NULL;
    char line [LINEMAXSIZE]; 

    /* Validate number of arguments */
    if( argc != 2 )
    {
        printf("USAGE: %s fileName\n", argv[0]);
        return EXIT_FAILURE;
    }
    
    /* Open the file provided as argument */
    errno = 0;
    fp = fopen(argv[1], "r");
    if( fp == NULL )
    {
        perror ("Error opening file!");
        return EXIT_FAILURE;
    }

    /* Read all the lines of the file */
    int c=1;
    int lnum=1;
    while( fgets(line, sizeof(line), fp) != NULL )
    {
        if (c) {
            printf("%d │ ", lnum);
        }
        printf("%s", line);

        if (line[strlen(line) - 1] != '\n') { 
            c = 0;/* not needed to add '\n' to printf because fgets will read the '\n' that ends each line in the file */
        } else {
            c = 1;
        }

        lnum++;
    }

    fclose(fp);

    return EXIT_SUCCESS;
}