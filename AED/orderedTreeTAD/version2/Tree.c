#include "stdlib.h"
#include "stdio.h"
#include "assert.h"

#include "Tree.h"

Tree* createTree(int data) {
    Tree* t = (Tree *) malloc(sizeof(Tree));
    assert(t != NULL);
    
    t->parent = NULL;
    t->lchild = NULL;
    t->rchild = NULL;
    t->data = data;

    return t;
}

Tree* createNode(Tree* parent, int data) {
    Tree* n = (Tree *) malloc(sizeof(Tree));
    assert(n != NULL);

    n->parent = parent;
    n->lchild = NULL;
    n->rchild = NULL;
    n->data = data;

    return n;
}

void destroyNode(Tree** p) {
    assert(*p != NULL);
    
    Tree* t = *p;
    if (t->rchild != NULL) destroyNode(&t->rchild);
    if (t->lchild != NULL) destroyNode(&t->lchild);
    free(t);

    *p = NULL;
}

void insertNode(Tree* t, int data) {
    assert(t != NULL);

    if (t->data > data) {
        (t->lchild == NULL) ? t->lchild = createNode(t,data) : insertNode(t->lchild, data); 
    } else if (t->data < data) {
        (t->rchild == NULL) ? t->rchild = createNode(t,data) : insertNode(t->rchild, data); 
    }
}

void removeNode(Tree* t, int data) {
    assert(t != NULL);

    if (t->data == data) {
        Tree* p = t->parent;
        if (p == NULL) destroyNode(&t);
        else {
            (p->rchild == t) ? (p->rchild = NULL) : (p->lchild = NULL) ;
        }
        return;
    } 
    
    if (t->data > data) {
        if (t->lchild != NULL) removeNode(t->lchild, data);
    } else {
        if (t->rchild != NULL) removeNode(t->rchild, data);
    }
}

void _printNode(int data, int height) {
    for (int i = 1; i < height; i++) printf("     ");
    printf("|----");
    printf(">%4d\n", data);
};

void _printNullNode(int height) {
    for (int i = 1; i < height; i++) printf("     ");
    printf("|----");
    printf(">   X\n");
};

void printTree(Tree* t, int height) {

    _printNode(t->data, height);
    if (t->rchild != NULL) printTree(t->rchild, height + 1);
    else _printNullNode(height + 1);
    if (t->lchild != NULL) printTree(t->lchild, height + 1);
    else _printNullNode(height + 1);
}
