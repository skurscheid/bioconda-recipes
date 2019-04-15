#!/bin/bash

mkdir -p $PREFIX/bin

make
mv Genrich $PREFIX/bin
