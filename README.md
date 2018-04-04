# Break password
Break password using md5 hash function, implement in C + MPI on Rock Cluster

Requirement: MPI available: OpenMPI, ..

Build:

    $ mpicc break_password.c -lm -o <execute-file>

Run:

    $ mpirun -np <n-process> <execute-file> <hashed-password> <password-size> 

Example:

    $ mpicc break_password.c -lm -o main
    $ mpirun -np 8 ./main a1f4029f596842a708d2bdd97aae2733 8

### References:

- [MD5 C](https://gist.github.com/creationix/4710780)

- [MPI Documentation](https://www.open-mpi.org/doc/current/)