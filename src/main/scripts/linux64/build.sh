cp -R ../../c++/ workdir
mkdir -p ../../../../target/classes/linux64/
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
rm -r workdir
rm -R alsa

return $r1
