#!/bin/bash

# Write the path to PyToBI here. NOTE: a copy of Praat should be inside this folder
path2pytobi=/local/path/to/pytobi/

# Comment/uncomment the following lines depending on your system (Mac, Linus/Windows)
# Mac Users must uncomment the following line and comment the Linux/Windows line 10
#praat=Praat.app/Contents/MacOS/Praat

#Linux/Windows users must uncomment the following line and comment the Mac line 7
praat=praat

directory=$1
subdir=praatScripts/

cd $directory
echo "Entering directory"
for file in *.wav
do
	echo "····························································"
	echo "····························································"
	echo "Processing file " $file
	basename="${file%.*}"
	
	cd $path2pytobi$subdir

	./praat --run module01.praat $directory $basename
	./praat --run module02.praat $directory $basename
	./praat --run module03.praat $directory $basename
	./praat --run module04.praat $directory $basename

	cd $path2pytobi

	python3 tobi.py $directory $basename
	echo "PyToBI has been completed"
	echo "#########################"
done