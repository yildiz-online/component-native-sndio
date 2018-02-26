cp -R ../../c++/ workdir
mkdir -p ../../../../target/classes/linux64/
cd workdir
./configure \
--prefix=$PWD/release 

make install
r1=$?
cp -R release/lib ../../../../../target/classes/linux64
cp -R release/include ../../../../../target/classes/linux64
cd ..

return $r1
