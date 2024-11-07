/*  Integer binary tree implementation
*   By: Igor Baltarejo 
*/

#ifndef _INT_TREE_
#define _INT_TREE_

typedef struct _int_tree_node Tree;

struct _int_tree_node {
    int data;
    struct _int_tree_node* lchild;
    struct _int_tree_node* rchild;
};

Tree* createTree(int data);

void destroyTree(Tree** p);

void insertTree(Tree* t, int data);

void removeTree(Tree* t, int data);

#endif //_int_tree
