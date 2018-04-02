// #ifndef GENERATE_H
// #define GENERATE_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "utils.h"

#define ARRLEN(x)  (sizeof(x) / sizeof((x)[0]))

const char ALPHABET[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
		'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
		's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1',
		'2', '3', '4', '5', '6', '7', '8', '9'};
const int N = ARRLEN(ALPHABET);

int generate_next_permutation(const char* end, char* curr, char* next);
int generate_next_subset(int size, char* alphabet, char* curr, char* next);
int generate_next_indices(int size, int end[], int curr[], int next[]);
void next_indices(int next[], int i);
int indices_to_string(int size, int indices[], char* str);

// #endif