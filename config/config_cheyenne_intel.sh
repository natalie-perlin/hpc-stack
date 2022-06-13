#!/bin/bash

# Compiler/MPI combination
export HPC_COMPILER="intel/2022.1"
export HPC_MPI="mpt/2.25"
export HPC_PYTHON="miniconda3/4.12.0"

# Build options
export USE_SUDO=N
export PKGDIR=pkg
export LOGDIR=log
export OVERWRITE=N
export NTHREADS=4
export   MAKE_CHECK=N
export MAKE_VERBOSE=N
export   MAKE_CLEAN=N
export DOWNLOAD_ONLY=N
export STACK_EXIT_ON_FAIL=Y
export WGET="wget -nv --no-check-certificate"

module purge
module load intel/2022.1
module load mpt/2.25
# Load these basic modules for Cheyenne
module load cmake/3.22.0

# Build FMS with AVX2 flags
export STACK_fms_CFLAGS="-march=core-avx2"
export STACK_fms_FFLAGS="-march=core-avx2"

export SERIAL_CC=icc
export SERIAL_FC=ifort
export SERIAL_CXX=icpc

