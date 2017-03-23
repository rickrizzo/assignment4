#include "timestub.h"
#include <mpi.h>

long long GetTimeBase(){

  return (long long)MPI_Wtime();
}
