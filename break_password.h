#include <stdio.h>
#include <mpi.h>
#include "md5_hash.c"
#include "generate.c"
#include "utils.c"
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

const char* hashed_password = "";

// MPI message tag
const int TAG_MASTER_SEND_PREFIX_ARRAY = 0;
const int TAG_COMPUTE_SEND_TRUE_PASSWORD = 1;
const int TAG_MASTER_SEND_STOP_SIGNAL = 2;
const int TAG_COMPUTE_FINISH = 3;
const int TAG_MASTER_SEND_PREFIX_ARRAY_LENGTH = 4;

int rank_0();
int rank_k();
int generate_hash_compare(int curr[], int end[]);
int compute_finish();
int compute_send_password();
int stop_all_computes();
