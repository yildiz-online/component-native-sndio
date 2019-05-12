#!/usr/bin/env bash

cp -R ../../c++/ workdir
mkdir -p ../../../../target/classes/linux64/

export C_INCLUDE_PATH=$PWD/alsa/linux64/include
export LIBRARY_PATH=$PWD/alsa/linux64/lib

cd workdir
./configure \
--prefix=$PWD/release \
--privsep-user=$USER

make
make install
r1=$?
cp -R release/lib ../../../../../target/classes/linux64
cp -R release/include ../../../../../target/classes/linux64
cd ..
rm -r alsa
rm -r workdir

exit $r1
