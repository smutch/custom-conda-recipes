#!/bin/bash

export BZIP2_DIR=$PREFIX
export HDF5_DIR=$(dirname $(dirname $(which h5ls)))
export LZO_DIR=$PREFIX
export CC=mpicc

$PYTHON -m pip install --no-deps --no-cache-dir --ignore-installed .
