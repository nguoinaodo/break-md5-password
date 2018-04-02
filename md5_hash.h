#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
 
// leftrotate function definition
#define LEFTROTATE(x, c) (((x) << (c)) | ((x) >> (32 - (c))))

int hash(char* inp, char* out);
void md5(uint8_t *initial_msg, size_t initial_len);