#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

#define FILESIZE 100

int main(int argc, char **argv) {

  // MPI Variables
  int mpi_rank, mpi_size;
  MPI_Status status;
  MPI_File file;
  MPI_Datatype filetype;
  MPI_Offset offset;

  // Initialize MPI
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);
  MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);

  // Buffer Allocation
  int i;
  int *buffer = (int *) malloc(FILESIZE / mpi_size * sizeof(int));
  for(i = 0; i < FILESIZE / mpi_size; i++) {
    buffer[i] = i;
  }

  // Access File
  MPI_File_open(MPI_COMM_WORLD, "test.txt", MPI_MODE_CREATE|MPI_MODE_WRONLY, MPI_INFO_NULL, &file);

  // Set Offset
  // offset = mpi_rank * FILESIZE * sizeof(int);

  // Write File
  MPI_File_write(file, buffer, FILESIZE / mpi_size, MPI_INT, &status);

  // Close File
  free(buffer);
  MPI_File_close(&file);

  // Clean Up
  MPI_Finalize();
  exit(EXIT_SUCCESS);
}
