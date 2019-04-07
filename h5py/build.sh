#!/bin/bash

export CC=mpicc
export mpi=1
"${PYTHON}" setup.py configure --mpi --hdf5="$(dirname $(dirname $(which h5ls)))"
"${PYTHON}" -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
