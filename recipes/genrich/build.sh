#!/bin/bash

# https://bioconda.github.io/troubleshooting.html#zlib-errors
export CFLAGS="-I$PREFIX/include"
export CPPFLAGS="-DHAVE_LIBDEFLATE -I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"
export CPATH=${PREFIX}/include

mkdir -p $PREFIX/bin

make
mv Genrich $PREFIX/bin && chmod +x $PREFIX/bin/Genrich
