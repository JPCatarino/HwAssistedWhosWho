#include "bloomfilter.h"
#include <stdlib.h>

#define BITS_PER_INT 32

/* Implementation of bit array */
/* Taken from http://www.mathcs.emory.edu/~cheung/Courses/255/Syllabus/1-C-intro/bit-array.html */
#define SetBit(A,k)     ( A[(k/32)] |= (1 << (k%32)) )
#define ClearBit(A,k)   ( A[(k/32)] &= ~(1 << (k%32)) )
#define TestBit(A,k)    ( A[(k/32)] & (1 << (k%32)) )

bloomFilter* bloomFilterInit(size_t numPositions, size_t (**hashFunctions)(const void*), size_t nHashFunctions){
    bloomFilter* bfstruct;

    bfstruct = malloc(sizeof *bfstruct);
    bfstruct->bf = calloc(numPositions, sizeof(int));
    bfstruct->numPositions = numPositions;
    bfstruct->hashFunctions = hashFunctions;
    bfstruct->nHashFunctions = nHashFunctions;

    return bfstruct;
}

void insertElem(bloomFilter* bfstruct, const void* elem){
    int arrIndex;
    int maxCapacity;

    maxCapacity = bfstruct->numPositions * BITS_PER_INT;

    for(int i = 0; i != bfstruct->nHashFunctions; i++){
        arrIndex = bfstruct->hashFunctions[i](elem) % maxCapacity;
        SetBit(bfstruct->bf, arrIndex);
    }     
}


