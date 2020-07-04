#include <stdio.h>
#include <string.h>
#include "bloomfilter.h"

static int T[]={	6, 14, 184, 53, 82, 58, 98, 48, 210, 110, 171, 190, 22, 75, 170, 244,
					183, 166, 63, 80, 132, 97, 148, 235, 52, 66, 220, 141, 254, 211, 68,
					230, 12, 72, 41, 94, 165, 61, 199, 2, 156, 120, 100, 252, 176, 17, 226,
					125, 178, 223, 146, 168, 144, 25, 228, 122, 222, 193, 69, 163, 172, 119,
					201, 8, 253, 46, 153, 50, 11, 196, 60, 55, 215, 39, 129, 202, 237, 92,
					142, 118, 224, 145, 95, 213, 83, 225, 167, 77, 34, 49, 137, 3, 93, 7, 216,
					246, 134, 229, 200, 123, 209, 24, 174, 130, 250, 239, 76, 1, 255, 242, 71,
					155, 37, 38, 208, 181, 219, 115, 162, 138, 96, 243, 251, 227, 194, 40, 64, 42,
					99, 157, 86, 65, 89, 149, 108, 104, 111, 117, 185, 143, 29, 195, 158, 84, 207,
					192, 169, 204, 43, 21, 206, 191, 131, 128, 32, 164, 36, 212, 10, 186, 177, 179,
					27, 47, 57, 221, 159, 139, 0, 203, 18, 136, 147, 74, 151, 173, 247, 116, 85, 56,
					231, 154, 78, 127, 249, 13, 135, 35, 79, 124, 150, 152, 23, 5, 238, 54, 241, 91,
					33, 240, 161, 102, 112, 26, 198, 133, 62, 51, 28, 180, 214, 30, 4, 245, 9, 232, 103,
					73, 106, 217, 88, 15, 81, 45, 31, 188, 44, 234, 19, 218, 67, 175, 197, 109, 160, 187,
					101, 205, 90, 233, 121, 236, 114, 189, 140, 87, 126, 105, 113, 107, 20, 70, 248, 182, 16, 59};

size_t pearson(const void* arg)
{
    char* c = (char*) arg;
    size_t hash = strlen(c) % 256;

    for(int i = 0; i < strlen(c); i++){
        hash = T[hash ^ c[i]];
    }

    return hash;
}

size_t djb2(const void* arg)
{
    size_t hash = 5381;
    char* c = (char*) arg;
    unsigned int len = strlen(c);
    unsigned int i = 0;

    for(i = 0; i < len; c++, i++){
        hash = ((hash << 5) + hash) + (*c);
    }

    return hash;
}

int main(int argc, const char * argv[]) {
    size_t i;
    bloomFilter* bloom_filter;

    char* characteristics[] = {
        "Narigudo",
        "Bochechas Vermelhas",
        "Cabelo Longo",
        "Cabelo Curto",
        "Olhos Verdes",
        "Bigode",
        "Sobrancelhas carregadas",
        "Cicatriz",
        "Chapeu vermelho",
        "Orelhas Grandes"
    };

    size_t (*hash_functions[])(const void*) = {
        pearson,
        djb2
    };

    bloom_filter = bloomFilterInit(1, hash_functions, 2);

    for (i = 0; i < 10; i++)
    {
        printf("Pearson: %ld\n",pearson(characteristics[i]));
        printf("djb2: %ld\n", djb2(characteristics[i]));
        if(i % 2 == 0) insertElem(bloom_filter, characteristics[i]);
    }

    for (i = 0; i < 10; i++)
    {
        printf("%s: %d\n", characteristics[i], containsElem(bloom_filter, characteristics[i]));
    }

    return 0;
}