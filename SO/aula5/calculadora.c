#include <math.h>
#include <stdio.h>
#include <stdlib.h>

// 1.b)
int main(int argc, char* argv[]) {
    
    if (argc != 4) {
        printf("Wrong number of arguments. (%d)", argc);
        return EXIT_FAILURE;
    }

    char op = argv[2][0];
    double n1 = atof(argv[1]);
    double n2 = atof(argv[3]);
    double res;

    switch (op) {
        case '+': {
            res = n1 + n2; 
            break;
        }
        case '-': {
            res = n1 - n2; 
            break;
        }
        case 'x': {
            res = n1 * n2; 
            break;
        }
        case '/': {
            res = n1 / n2; 
            break;
        }
        case 'p': {
            res = pow(n1,n2); 
            break;
        }
        default: {
            printf("Operation not supported.");
            return EXIT_FAILURE;
        }
    }

    printf("Result: %2.1f %c %2.1f = %2.3f\n", n1, op, n2, res);
    return EXIT_SUCCESS;
}
