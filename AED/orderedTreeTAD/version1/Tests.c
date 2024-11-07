#include <stdio.h>
#include "Tree.h"


int main() {
    printf("--- Create tree ---\n");
    Tree* t = createTree(1);

    printf("--- Add nodes ---\n");
    insertTree(t,2);
    insertTree(t,3);
    insertTree(t,4);
    insertTree(t,5);

    //This line breaks everything read README.MD
    /*printf("--- Destroy nodes ---\n");*/
    /*removeTree(t, 5);*/

    printf("--- Destroy tree ---\n");
    destroyTree(&t);
}

