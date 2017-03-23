#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

#define FILESIZE 16

int main(int argc, char **argv) {

  // MPI Variables
  int mpi_rank, mpi_size;
  MPI_Status status;
  MPI_File file;
  MPI_Datatype filetype;

  // Initialize MPI
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);
  MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);

  // Buffer Allocation
  int *buffer = (int *) malloc(FILESIZE / mpi_size);

  // Access File
  MPI_File_open(MPI_COMM_WORLD, "test.txt", MPI_MODE_RDONLY, MPI_INFO_NULL, &file);
  MPI_File_close(&file);

  // Close MPI
  free(buffer);
  MPI_Finalize();
  exit(EXIT_SUCCESS);
}
