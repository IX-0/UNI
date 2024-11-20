#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* SUGESTÂO: utilize as páginas do manual para conhecer mais sobre as funções usadas:
 man system
 man date
*/

int main(int argc, char *argv[])
{
    char text[1024];
    FILE* logp = fopen("command.log", "a");
    if (logp == NULL) return EXIT_FAILURE;
        
    do
    {
        printf("Command: ");
        scanf("%1023[^\n]%*c", text);

        if(strcmp(text, "end")) {
           printf("\n * Command to be executed: %s\n", text);
           fprintf(logp,"> %s\n",text);
           printf("---------------------------------\n");
           system(text);
           printf("---------------------------------\n");
        }
    } while(strcmp(text, "end"));

    printf("-----------The End---------------\n");

    return EXIT_SUCCESS;
}
