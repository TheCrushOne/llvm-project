#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir $DIR/build
cd $DIR/build

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$DIR/../ollvm -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=$DIR/../clang -DLLVM_EXTERNAL_LLD_SOURCE_DIR=$DIR/../lld -DLLVM_EXTERNAL_POLLY_SOURCE_DIR=$DIR/../polly ..
(make -j12 -k || make -j4 -k || make) && make install && make clean