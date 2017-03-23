#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
#include "timestub.h"
// #include <hwi/include/bqc/A2_inlines.h>
#define BLOCKS_PER 16
int main(int argc, char **argv) {

  // MPI Variables
  int mpi_rank, mpi_size;
  MPI_Status status;
  MPI_File file;
  MPI_Datatype filetype;
  MPI_Offset offset;
  MPI_Comm file_comm;
  char read_or_write = 'r';
  int files = 0, block_size = 0, file_num = 0;
  int ranks_per_file = 0, file_rank_num = 0, write_size = 0, write_elems = 0, file_size = 0;
  long long start_cycle_time=0;
  long long end_cycle_time=0;
  long long total_cycle_time=0, total_cycle_time_comb=0;

  // Initialize MPI
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);
  MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);

  // Check the command line parameters
  if (mpi_size != 1 && mpi_size%2 != 0){
    if (mpi_rank == 0)
    {
      printf("Error! bad number of tasks %d\n", mpi_size);
    }
    return EXIT_FAILURE;
  }

  if (argc != 4){
    if (mpi_rank == 0)
    {
      printf( "Error: Program expects 1 arguments\n" );
      printf( "Should be of the form:\n" );
      printf( "`./assignment4.out <op> <files> <block size>`\n" );
      printf( "Where <op> is 'r' or 'w' \n" );
      printf( "Where <files> is 1-128 \n" );
      printf( "Where <block size> is 1-16 \n" );
    }
    return EXIT_FAILURE;
  }

  // Read the command line parameters

  read_or_write = argv[1][0];

  long ret;
  ret = strtol(argv[2], NULL, 10);
  files = ret;

  ret = strtol(argv[3], NULL, 10);
  block_size = ret;

  // Verify the number of files, operation, and block size
  if (files < 1){
    if (mpi_rank == 0)
    {
      printf( "Error: There must be a positive number of files\n" );
    }
      return EXIT_FAILURE;
  }
  if (block_size < 1){
    if (mpi_rank == 0)
    {
      printf( "Error: There must be a positive block size\n" );
    }
      return EXIT_FAILURE;
  }
  if (read_or_write != 'w' && read_or_write != 'r'){
    if (mpi_rank == 0)
    {
      printf( "Error: Op must be one of 'w' or 'r' \n" );
    }
      return EXIT_FAILURE;
  }

  if (mpi_size < files){
    if (mpi_rank == 0)
    {
      printf( "Error: There should be an greater than or equal ranks as files\n" );
    }
      return EXIT_FAILURE;
  }
  if (mpi_size % files != 0){
    if (mpi_rank == 0)
    {
      printf( "Error: There should be an equal number of ranks per file\n" );
    }
      return EXIT_FAILURE;
  }

  // Start the operations
  if (mpi_rank==0 && read_or_write =='r'){
    printf( "Read %d files with block size %d, using %d ranks\n", files, block_size, mpi_size);
  }
  if (mpi_rank==0 && read_or_write =='w'){
    printf( "Write %d files with block size %d, using %d ranks\n", files, block_size, mpi_size);
  }

  // File position and number calculation
  ranks_per_file = mpi_size / files;
  file_num = (mpi_rank / ranks_per_file);
  file_rank_num = mpi_rank - (ranks_per_file * file_num);


  // Buffer Allocation
  write_size = BLOCKS_PER * block_size;
  file_size = write_size * ranks_per_file;
  write_elems = write_size / sizeof(int);

  if (write_size % sizeof(int) != 0){
    if (mpi_rank == 0)
    {
      printf( "Error: The size of an int should divide into the block size * num blocks\n" );
    }
      return EXIT_FAILURE;
  }
  int i;
  int *buffer = (int *) malloc(write_size);

  // Set Offset
  offset = file_rank_num * write_size;

  // Write the filename
  char filename[100];
  sprintf(filename,"output%d.bin", file_num);

  // Split comms based on file
  MPI_Comm_split(
    MPI_COMM_WORLD,
    file_num,
    file_rank_num,
    &file_comm);

  if (read_or_write == 'w'){
    // Access File
    MPI_File_open(file_comm, filename, MPI_MODE_CREATE|MPI_MODE_WRONLY, MPI_INFO_NULL, &file);

    start_cycle_time = GetTimeBase();

    for(i = 0; i < write_elems; i++) {
      buffer[i] = file_rank_num * write_elems + i;
    }

    // Write File
    MPI_File_write_at_all(file, offset, buffer, write_elems, MPI_INT, &status);
    end_cycle_time = GetTimeBase();

  }
  else{
    // Access File
    MPI_File_open(file_comm, filename, MPI_MODE_RDONLY, MPI_INFO_NULL, &file);

    start_cycle_time = GetTimeBase();

    // Read File
    MPI_File_read_at_all(file, offset, buffer, write_elems, MPI_INT, &status);

    end_cycle_time = GetTimeBase();

    for(i = 0; i < write_elems; i++) {
      printf( "%d ", buffer[i] );
    }
      printf( "\n");

  }

  total_cycle_time = end_cycle_time - start_cycle_time;

  MPI_Allreduce(
      &total_cycle_time,
      &total_cycle_time_comb,
      1,
      MPI_LONG_LONG_INT,
      MPI_MAX,
      MPI_COMM_WORLD);

  if (mpi_rank == 0)
  {
    printf( "The total time is %lld \n", total_cycle_time_comb );
    printf( "The total cycles are TODO\n" );
  }

  // Close File
  MPI_Barrier(MPI_COMM_WORLD);
  MPI_File_close(&file);
  free(buffer);

  // Clean Up
  MPI_Finalize();
  exit(EXIT_SUCCESS);
}
