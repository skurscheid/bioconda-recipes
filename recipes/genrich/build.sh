#!/bin/bash

# https://bioconda.github.io/troubleshooting.html#zlib-errors
export CFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"
export CPATH=${PREFIX}/include

make
mkdir -p $PREFIX/bin
cp Genrich $PREFIX/bin && chmod +x $PREFIX/bin/Genrich
