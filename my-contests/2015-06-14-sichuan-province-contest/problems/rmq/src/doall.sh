#!/usr/bin/env bash -x
set -o errexit
CXXFLAGS="-O2 -std=c++11 -Wall -Wno-unused-result -Wno-parentheses -Wno-varargs -Wno-attributes"
c++ $CXXFLAGS random.cpp -orandom.exe
c++ $CXXFLAGS random_no.cpp -orandom_no.exe
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
./random.exe 4 50 50 > ../tests/004
./validator.exe < ../tests/004
./solution.exe < ../tests/004 > ../tests/004.a
./random.exe 5 50 50 > ../tests/005
./validator.exe < ../tests/005
./solution.exe < ../tests/005 > ../tests/005.a
./random.exe 6 50 50 > ../tests/006
./validator.exe < ../tests/006
./solution.exe < ../tests/006 > ../tests/006.a
./random.exe 7 50 50 > ../tests/007
./validator.exe < ../tests/007
./solution.exe < ../tests/007 > ../tests/007.a
./random.exe 8 50 50 > ../tests/008
./validator.exe < ../tests/008
./solution.exe < ../tests/008 > ../tests/008.a
./random.exe 9 50 50 > ../tests/009
./validator.exe < ../tests/009
./solution.exe < ../tests/009 > ../tests/009.a
./random.exe 10 50 50 > ../tests/010
./validator.exe < ../tests/010
./solution.exe < ../tests/010 > ../tests/010.a
./random.exe 11 50 50 > ../tests/011
./validator.exe < ../tests/011
./solution.exe < ../tests/011 > ../tests/011.a
./random.exe 12 50 50 > ../tests/012
./validator.exe < ../tests/012
./solution.exe < ../tests/012 > ../tests/012.a
./random.exe 13 50 50 > ../tests/013
./validator.exe < ../tests/013
./solution.exe < ../tests/013 > ../tests/013.a
./random_no.exe 14 50 50 > ../tests/014
./validator.exe < ../tests/014
./solution.exe < ../tests/014 > ../tests/014.a
./random_no.exe 15 50 50 > ../tests/015
./validator.exe < ../tests/015
./solution.exe < ../tests/015 > ../tests/015.a
./random_no.exe 16 50 50 > ../tests/016
./validator.exe < ../tests/016
./solution.exe < ../tests/016 > ../tests/016.a
./random_no.exe 17 50 50 > ../tests/017
./validator.exe < ../tests/017
./solution.exe < ../tests/017 > ../tests/017.a
./random_no.exe 18 50 50 > ../tests/018
./validator.exe < ../tests/018
./solution.exe < ../tests/018 > ../tests/018.a
./random_no.exe 19 50 50 > ../tests/019
./validator.exe < ../tests/019
./solution.exe < ../tests/019 > ../tests/019.a
./random_no.exe 20 50 50 > ../tests/020
./validator.exe < ../tests/020
./solution.exe < ../tests/020 > ../tests/020.a
./random_no.exe 21 50 50 > ../tests/021
./validator.exe < ../tests/021
./solution.exe < ../tests/021 > ../tests/021.a
./random_no.exe 22 50 50 > ../tests/022
./validator.exe < ../tests/022
./solution.exe < ../tests/022 > ../tests/022.a
./random_no.exe 23 50 50 > ../tests/023
./validator.exe < ../tests/023
./solution.exe < ../tests/023 > ../tests/023.a
rm -rf *.exe
