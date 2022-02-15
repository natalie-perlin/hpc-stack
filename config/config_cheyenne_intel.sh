#!/bin/bash

# Compiler/MPI combination
export HPC_COMPILER="intel/2021.2"
export HPC_MPI="mpt/2.22"
export HPC_PYTHON="python/dummy"

# Build options
export USE_SUDO=N
export PKGDIR=pkg
export LOGDIR=log
export OVERWRITE=Y
export NTHREADS=4
export   MAKE_CHECK=N
export MAKE_VERBOSE=N
export   MAKE_CLEAN=N
export DOWNLOAD_ONLY=N
export STACK_EXIT_ON_FAIL=Y
export WGET="wget -nv"

module purge
#module unuse /glade/u/apps/ch/modulefiles/default/compilers
#module use   /glade/p/ral/jntp/GMTB/tools/compiler_mpi_modules/compilers
#export MODULEPATH_ROOT=/glade/p/ral/jntp/GMTB/tools/compiler_mpi_modules

module load ncarenv/1.3
module load intel/2021.2
module load ncarcompilers/0.5.0
module load mpt/2.22
module unload netcdf

# Load custom modules
module use $HOME/modulefiles
module load cmake/3.22.0

# Build FMS with AVX2 flags
export STACK_fms_CFLAGS="-march=core-avx2"
export STACK_fms_FFLAGS="-march=core-avx2"
#
export CC=icc
export FC=ifort
export CXX=icpc
#
export SERIAL_CC=$CC
export SERIAL_FC=$FC
export SERIAL_CXX=$CXX
#
export MPI_CC=mpicc
export MPI_FC=mpif90
export MPI_CXX=mpicxx
#


