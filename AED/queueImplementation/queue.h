// How the queue works:
// First in / Last out

#ifndef _QUEUE_INT_
#define _QUEUE_INT_

typedef struct _queue Queue;

Queue* createQueue(int size);

void destroyQueue(Queue** q);

void clearQueue(Queue* q);

void queueEnqueue(Queue* q, int num);

int QueueDequeue(Queue* q);

int isEmptyQueue(Queue* q);

int isFullQueue(Queue* q);

int queueSize(Queue* q);

int queuePeek(Queue* q);

#endif // _QUEUE_INT_
