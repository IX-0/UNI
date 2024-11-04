//
// TO DO : desenvolva um algoritmo para verificar se um numero inteiro positivo
//         e uma capicua
//         Exemplos: 12321 e uma capiacua, mas 123456 nao e
//         USE uma PILHA DE INTEIROS (STACK) e uma FILA DE INTEIROS (QUEUE)
//
// TO DO : design an algorithm to check if the digits of a positive decimal
//         integer number constitue a palindrome
//         Examples: 12321 is a palindrome, but 123456 is not
//         USE a STACK of integers and a QUEUE of integers
//

#include <stdio.h>
#include <stdlib.h>
#include "IntegersQueue.h"
#include "IntegersStack.h"

int lengthInt(int n) {
    
    int l = 0;
    while (n > 0) {
        l++;
        n = n/10;
    }

    return l;
}

int main(int argc, char* argv[]) {
    
    int num = atoi(argv[1]);

    int size = lengthInt(num);
    Stack* s = StackCreate(size);
    Queue* q = QueueCreate(size);

    int aux=0;
    for (int i = 0; i < size; i++) {
       aux = num % 10;
       num = num / 10;
       StackPush(s, aux);
       QueueEnqueue(q, aux);
    }

    for (int i = 0; i < size / 2 + 1; i++) {
        if (StackPop(s) != QueueDequeue(q)){
            printf("The number is not a capibara!!!\n");
            return 1;
        }
    }

    printf("Congrats ur number is a capicua!!!\n");

    StackDestroy(&s);
    QueueDestroy(&q);

    return 0; 
}
