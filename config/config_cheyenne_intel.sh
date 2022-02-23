#!/bin/bash

# Compiler/MPI combination
export HPC_COMPILER="intel/2021.2"
export HPC_MPI="mpt/2.22"
export HPC_PYTHON="python/3.7.9"

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
export WGET="wget -nv --no-check-certificate"

module purge
#
module load ncarenv/1.3
module load intel/2021.2
module load ncarcompilers/0.5.0
module load mpt/2.22
module unload netcdf
module load cmake/3.22.0

# Build FMS with AVX2 flags
export STACK_fms_CFLAGS="-march=core-avx2"
export STACK_fms_FFLAGS="-march=core-avx2"
#
export CC=icc
export FC=ifort
export CXX=icpc

