#include "queue.h"
#include "stdlib.h"
#include "assert.h"

struct _queue {
    int max_size;
    int curr_size;
    
    int head;
    int tail;

    int* data;
};

//Private function in c, scope is defined to file;
static int incrementIndex(Queue* q, int i) {
    return i + 1 < q->max_size ? i + 1: 0;   
}


Queue* createQueue(int size) {
    assert( 1 <= size && size <= 100000 );
    
    Queue* q = (Queue*) malloc(sizeof(Queue));
    if (q == NULL) abort();

    q->curr_size = 0;
    q->max_size = size;

    q->data = (int*) malloc(size * sizeof(int));
    if (q->data == NULL) abort();

    return q;
}

void destroyQueue(Queue** p) {
    assert(p != NULL);
    Queue* s = *p;  //Deference to get Queue*
    free(s->data);  //Free int* (s->data)
    free(s);        //Free Queue*
    *p = NULL;      //Free p (Queue*)*
}

void clearQueue(Queue* q) {
    q->tail = 1;
    q->head = 0;
    q->curr_size = 0;
}

int isEmptyQueue(Queue* q) {return q->curr_size == 0;}

int isFullQueue(Queue* q) {return q->curr_size == q->max_size ;}

int queueSize(Queue* q) {return q->curr_size;}

int queuePeek(Queue* q) {return q->data[q->curr_size - 1];}

void queueEnqueue(Queue* q, int num) {
    assert(q->curr_size < q->max_size);
    assert(q != NULL);

    q->tail = incrementIndex(q, q->tail);
    q->curr_size = q->tail - q->head + 1;
    
}
