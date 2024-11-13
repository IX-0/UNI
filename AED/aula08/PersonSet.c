//
// Algoritmos e Estruturas de Dados --- 2024/2025
//
// Joaquim Madeira, Nov 2023, Nov 2024
//

// Complete the functions (marked by ...)
// so that they pass all tests.

#include "PersonSet.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Definition of the structure
struct _PersonSet_ {
    int capacity;    // the current capacity of the array
    int size;        // the number of elements currently stored
    Person **array;  // points to an array of pointers to persons
};

typedef struct _PersonSet_ PersonSet;

#define INITIAL_CAPACITY 4

// You may add auxiliary definitions and declarations here, if you need to.

// Create a PersonSet.
PersonSet* PersonSetCreate() {
    PersonSet* ps = (PersonSet*) malloc(sizeof(PersonSet));
    
    Person** arr  = (Person**) malloc(INITIAL_CAPACITY * sizeof(Person*));
    ps->array = arr;

    ps->capacity = INITIAL_CAPACITY;
    ps->size = 0;

    return ps;
}

// Destroy PersonSet *pps
void PersonSetDestroy(PersonSet **pps) {
    assert(*pps != NULL);
    PersonSet* ps = *pps;
    free(ps->array);
    free(ps);
    *pps = NULL;
}

int PersonSetSize(const PersonSet *ps) { return ps->size; }

int PersonSetIsEmpty(const PersonSet *ps) { return ps->size == 0; }

void PersonSetPrint(const PersonSet *ps) {
    printf("{\n");
    for (int i = 0; i < ps->size; i++) {
        Person *p = ps->array[i];
        PersonPrintf(p, ";\n");
    }
    printf("}(size=%d, capacity=%d)\n", ps->size, ps->capacity);
}

// Find index in ps->array of person with given id.
// (INTERNAL function.)
static int search(const PersonSet *ps, int id) {
    
    for (int i = 0; ps->capacity; i++) {
        if (((ps->array)[i]->id) == id) {
            return i;
        }
    } 

    return -1;
}

// Append person *p to *ps, without verifying presence.
// Use only when sure that *p is not contained in *ps!
// (INTERNAL function.)
static void append(PersonSet *ps, Person *p) {
    assert(ps != NULL);
    assert(p != NULL);
    
    if (ps->size == ps->capacity) {
        ps->array = realloc(ps->array, sizeof(Person*) * ps->capacity * 2);
    }

    ps->array[ps->size] = p;
    ps->size++;
}

static void _remove(const PersonSet *ps, int pos) {
    Person** arr = ps->array;
    for (int i = pos; i < ps->size; i++) {
        arr[pos] = arr[pos + 1];
    }
}

// Add person *p to *ps.
// Do nothing if *ps already contains a person with the same id.
void PersonSetAdd(PersonSet *ps, Person *p) {

    if (search(ps, p->id) == -1) {
        append(ps, p);
    }

}

// Pop one person out of *ps.
Person *PersonSetPop(PersonSet *ps) {
    assert(!PersonSetIsEmpty(ps));

    Person* p = (ps->array)[ps->size - 1];
    ps->size--;

    return p;
}

// Remove the person with given id from *ps, and return it.
// If no such person is found, return NULL and leave set untouched.
Person *PersonSetRemove(PersonSet *ps, int id) {
    int index = search(ps, id);
    if (index != -1) {
        _remove(ps, index);
    }
    return NULL;
}

// Get the person with given id of *ps.
// return NULL if it is not in the set.
Person *PersonSetGet(const PersonSet *ps, int id) {
    int pos = search(ps, id);
    if (pos != -1) {
        return (ps->array[pos]);
    }
    return NULL;
}

// Return true (!= 0) if set contains person wiht given id, false otherwise.
int PersonSetContains(const PersonSet *ps, int id) {
    return search(ps, id) >= 0;
}

// Return a NEW PersonSet with the union of *ps1 and *ps2.
// Return NULL if allocation fails.
// NOTE: memory is allocated.  Client must call PersonSetDestroy!
PersonSet *PersonSetUnion(const PersonSet *ps1, const PersonSet *ps2) {
    PersonSet *ps = PersonSetCreate();

    // COMPLETE ...

    return ps;
}

// Return a NEW PersonSet with the intersection of *ps1 and *ps2.
// Return NULL if allocation fails.
// NOTE: memory is allocated.  Client must call PersonSetDestroy!
PersonSet *PersonSetIntersection(const PersonSet *ps1, const PersonSet *ps2) {
    // COMPLETE ...

    return NULL;
}

// Return a NEW PersonSet with the set difference of *ps1 and *ps2.
// Return NULL if allocation fails.
// NOTE: memory is allocated.  Client must call PersonSetDestroy!
PersonSet *PersonSetDifference(const PersonSet *ps1, const PersonSet *ps2) {
    // COMPLETE ...

    return NULL;
}

// Return true iff *ps1 is a subset of *ps2.
int PersonSetIsSubset(const PersonSet *ps1, const PersonSet *ps2) {
    // COMPLETE ...

    return 0;
}

// Return true if the two sets contain exactly the same elements.
int PersonSetEquals(const PersonSet *ps1, const PersonSet *ps2) {
    // You may call PersonSetIsSubset here!

    // COMPLETE ...

    return 0;
}
