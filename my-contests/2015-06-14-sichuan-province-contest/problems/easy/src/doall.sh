#!/usr/bin/env bash -x
set -o errexit
CXXFLAGS="-O2 -std=c++11 -Wall -Wno-unused-result -Wno-parentheses -Wno-varargs -Wno-attributes"
c++ $CXXFLAGS random.cpp -orandom.exe
c++ $CXXFLAGS validator.cpp -ovalidator.exe
c++ $CXXFLAGS solution.cpp -osolution.exe
mkdir -p ../tests
cp 001.hand ../tests/001
./validator.exe < ../tests/001
./solution.exe < ../tests/001 > ../tests/001.a
cp 002.hand ../tests/002
./validator.exe < ../tests/002
./solution.exe < ../tests/002 > ../tests/002.a
cp 003.hand ../tests/003
./validator.exe < ../tests/003
./solution.exe < ../tests/003 > ../tests/003.a
cp 004.hand ../tests/004
./validator.exe < ../tests/004
./solution.exe < ../tests/004 > ../tests/004.a
cp 005.hand ../tests/005
./validator.exe < ../tests/005
./solution.exe < ../tests/005 > ../tests/005.a
./random.exe 6 100000 1000000000 > ../tests/006
./validator.exe < ../tests/006
./solution.exe < ../tests/006 > ../tests/006.a
./random.exe 7 100000 1000000000 > ../tests/007
./validator.exe < ../tests/007
./solution.exe < ../tests/007 > ../tests/007.a
./random.exe 8 100000 1000000000 > ../tests/008
./validator.exe < ../tests/008
./solution.exe < ../tests/008 > ../tests/008.a
./random.exe 9 100000 1000000000 > ../tests/009
./validator.exe < ../tests/009
./solution.exe < ../tests/009 > ../tests/009.a
./random.exe 10 100000 1000000000 > ../tests/010
./validator.exe < ../tests/010
./solution.exe < ../tests/010 > ../tests/010.a
./random.exe 11 100000 1000000000 > ../tests/011
./validator.exe < ../tests/011
./solution.exe < ../tests/011 > ../tests/011.a
./random.exe 12 100000 1000000000 > ../tests/012
./validator.exe < ../tests/012
./solution.exe < ../tests/012 > ../tests/012.a
./random.exe 13 100000 1000000000 > ../tests/013
./validator.exe < ../tests/013
./solution.exe < ../tests/013 > ../tests/013.a
./random.exe 14 100000 1000000000 > ../tests/014
./validator.exe < ../tests/014
./solution.exe < ../tests/014 > ../tests/014.a
./random.exe 15 100000 1000000000 > ../tests/015
./validator.exe < ../tests/015
./solution.exe < ../tests/015 > ../tests/015.a
rm -rf *.exe
