#include <stdlib.h>
#include <time.h>
#include <stdio.h>

int main() {
    
    srand(time(NULL));

    int secret = rand() % 100;
    int tries = 0;
    int guess;

    while (guess != secret) {
        printf("Num:");
        scanf("%d", &guess);
        tries++;
        if (guess > secret) {
            printf("Lower\n"); 
        } else if (guess < secret) {
            printf("Higher\n"); 
        }
    }

    printf("Congrats u guessed it in %d tries!!\n", tries);

    return EXIT_SUCCESS;
}
