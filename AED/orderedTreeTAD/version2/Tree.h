/*  Integer binary tree implementation
*   By: Igor Baltarejo 
*/

#ifndef _INT_TREE_
#define _INT_TREE_

typedef struct _tree_node Tree;

struct _tree_node {
    int data;
    struct _tree_node* parent;
    struct _tree_node* lchild;
    struct _tree_node* rchild;
};

Tree* createTree(int value);

Tree* createNode(Tree* parent, int value);

void destroyNode(Tree** p);

void insertNode(Tree* t, int value);

void removeNode(Tree* t, int value);

//Por implementar
int height(Tree* t);

int isEmpty(Tree* t);

int search(Tree* t, int value);

void printTree(Tree* t, int height);

#endif //_int_tree
