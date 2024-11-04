#include "stack.h"

#include "stdlib.h"
#include "assert.h"

struct _Int_Stack {
    int curr_size;
    int max_size;
    int* data;
};

Stack* createStack(int size) {
    assert(1 <= size && size <= 100000);
    
    Stack* s = (Stack*) malloc(sizeof(Stack));
    if (s == NULL) abort();
    
    s->curr_size = 0;
    s->max_size = size;
    
    s->data = (int*) malloc(size * sizeof(int));
    if (s->data == NULL) abort();
    
    return s;
}

void deleteStack(Stack** p) {
    assert(*p != NULL);
    Stack* s = *p;
    free(s->data);
    free(s);
    *p = NULL;
}

int isEmpty(Stack* s) {return s->curr_size == 0;}

int isFull(Stack* s) {return s->curr_size == s->max_size;}

void clearStack(Stack* s) {s->curr_size = 0;}

void pushStack(Stack* s, int num) {
    assert(s != NULL);
    assert(s->curr_size < s->max_size);
    
    s->data[s->curr_size++] = num;
}

int popStack(Stack* s) {
    assert(s != NULL);
    assert(s->curr_size > 0);

    return s->data[--(s->curr_size)];
}

int peekStack(Stack* s, int index) {
    assert(s->curr_size > 0);

    return s->data[s->curr_size - 1];
}
