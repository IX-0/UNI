#ifndef _Stack //if not defined
#define _Stack //define the header

typedef struct _Int_Stack Stack;

//Create stack
Stack* createStack(int size);

//Delete
void deleteStack(Stack** s);

//IsEmpty
int isEmpty(Stack* s);

//IsFull
int isFull(Stack* s);

//Clear
void clearStack(Stack* s);

//Push
void pushStack(Stack* s, int num);

//Pop
int popStack(Stack* s);

//Peek
int peekStack(Stack* s, int pos);

#endif // !Stack
