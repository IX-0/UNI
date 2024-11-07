#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "Tree.h"


int main() {

    srand(time(NULL));

    printf("--- Create tree ---\n");
    Tree* t = createTree(1);

    printf("--- Add nodes ---\n");
    for (int i = 0; i < 20 ;i++) insertNode(t, rand() % 10 - 5); 

    printTree(t, 0);

    printf("--- Destroy nodes ---\n");
    removeNode(t, -1);

    printTree(t, 0);

    printf("--- Destroy tree ---\n");
    destroyNode(&t);
}
