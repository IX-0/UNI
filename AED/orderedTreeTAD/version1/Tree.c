#include "stdlib.h"
#include "assert.h"

#include "Tree.h"

Tree* createTree(int data) {
    Tree* t = (Tree *) malloc(sizeof(Tree));
    assert(t != NULL);

    t->lchild = NULL;
    t->rchild = NULL;
    t->data = data;

    return t;
}

void destroyTree(Tree** p) {
    assert(*p != NULL);
    
    Tree* t = *p;
    if (t->rchild != NULL) destroyTree(&t->rchild);
    if (t->lchild != NULL) destroyTree(&t->lchild);
    free(t);

    *p = NULL;
}

void insertTree(Tree* t, int data) {
    assert(t != NULL);

    if (t->data > data) {
        (t->lchild == NULL) ? t->lchild = createTree(data) : insertTree(t->lchild, data); 
    } else if (t->data < data) {
        (t->rchild == NULL) ? t->rchild = createTree(data) : insertTree(t->rchild, data); 
    }
}

void removeTree(Tree* t, int data) {
    assert(t != NULL);

    if (t->data == data) {
        destroyTree(&t);
        return;
    } 

    (t->data > data) ? removeTree(t->lchild, data) : removeTree(t->rchild, data);
}
