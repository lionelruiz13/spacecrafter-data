#!/bin/bash

# Install for ubuntu

echo  ---------------------------------
echo  ---                           ---
echo  ---      Spacecrafter-data    ---
echo  ---       Installing          ---
echo  ---                           ---
echo  ---------------------------------

if [ ! -d build ]
then
mkdir build
cd build
else
cd build
rm * *.* -rf
fi

cmake ..
make
sudo make install
cd ..

echo -e "\033[32mScript completed.\033[0m"
