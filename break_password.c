#include <stdio.h>
// #include <mpi.h>
#include "md5_hash.c"
#include "generate.c"
#include "utils.c"

// int main(int argc, char** argv) {
// 	// Initialize the MPI environment
// 	// MPI_Init(NULL, NULL);

// 	// Output string
// 	char out[128];

// 	if (argc > 1) {
// 		hash(argv[1], out);
// 		printf("Hashed: %s\n", out);
// 	} else {
// 		printf("Please enter input\n");
// 	}

// 	// Finalize the MPI environment
// 	// MPI_Finalize();

// 	return 1;
// }