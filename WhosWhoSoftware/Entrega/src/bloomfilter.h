#ifndef BLOOMFILTER_H
#define BLOOMFILTER_H

#include <stdlib.h>
#include <stdbool.h>

typedef struct bloomFilter{
    int* bf;
    size_t numPositions;
    size_t (**hashFunctions)(const void*);
    size_t nHashFunctions;
} bloomFilter;

/* Initializes a new bloom filter with n positions and x hash functions */
bloomFilter* bloomFilterInit(size_t numPositions, size_t (**hashFunctions)(const void*), size_t nHashFunctions);

/* Adds an element to the bloom filter */
void insertElem(bloomFilter* bfstruct, const void* elem);

/* Checks if the bloom filter contains elem */
bool containsElem(bloomFilter* bfstruct, const void* elem);

/* Clears Bloom Filter */
void clearBloomFilter(bloomFilter* bfstruct);

#endif