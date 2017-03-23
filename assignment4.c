#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
#include "timestub.h"
// #include <hwi/include/bqc/A2_inlines.h>
#define FILESIZE 1000000

int main(int argc, char **argv) {

  // MPI Variables
  int mpi_rank, mpi_size;
  MPI_Status status;
  MPI_File file;
  MPI_Datatype filetype;
  MPI_Offset offset;

  long long start_cycle_time=0;
  long long end_cycle_time=0;
  long long total_cycle_time=0, total_cycle_time_comb=0;

  // Initialize MPI
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);
  MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);

  // Buffer Allocation
  int i;
  int *buffer = (int *) malloc((FILESIZE / mpi_size) * sizeof(int));
  for(i = 0; i < FILESIZE / mpi_size; i++) {
    buffer[i] = i;
  }

  // Access File
  MPI_File_open(MPI_COMM_WORLD, "test.txt", MPI_MODE_CREATE|MPI_MODE_WRONLY, MPI_INFO_NULL, &file);

  // Set Offset
  offset = mpi_rank * (FILESIZE / mpi_size * sizeof(int));

  start_cycle_time = GetTimeBase();
  // Write File
  MPI_File_write_at_all(file, offset, buffer, FILESIZE / mpi_size, MPI_INT, &status);

  // Read File
  // MPI_File_write_at_all(file, offset, buffer, FILESIZE / mpi_size, MPI_INT, &status);
  //
  end_cycle_time = GetTimeBase();
  total_cycle_time = end_cycle_time - start_cycle_time;

  MPI_Allreduce(
      &total_cycle_time,
      &total_cycle_time_comb,
      1,
      MPI_LONG_LONG_INT,
      MPI_MAX,
      MPI_COMM_WORLD);

  // Close File
  MPI_Barrier(MPI_COMM_WORLD);
  MPI_File_close(&file);
  free(buffer);

  // Clean Up
  MPI_Finalize();
  exit(EXIT_SUCCESS);
}
