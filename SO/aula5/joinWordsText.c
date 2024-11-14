#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>


int main(int argc, char* argv[]) {
    char final_str[100];
    for (int i = 1; i < argc; i++) {
        if (isalpha(argv[i][0])) {
            strcat(final_str,argv[i]);
        }
    }

    printf("Final string: '%s'",final_str);

    return EXIT_SUCCESS;
}
