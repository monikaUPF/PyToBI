#!/bin/bash
directory=$1
cd $directory
echo "Entering directory"
for file in *.wav
do
	echo "····························································"
	echo "····························································"
	echo "Processing file " $file
	basename="${file%.*}"
	cd /home/upf/Desktop/PyToBI/
	./praat --run /home/upf/Desktop/PyToBI/mod01_v01_std.praat $directory $basename
	./praat --run /home/upf/Desktop/PyToBI/mod02_v01_std.praat $directory $basename
	./praat --run /home/upf/Desktop/PyToBI/mod03_v01_std.praat $directory $basename
	./praat --run /home/upf/Desktop/PyToBI/mod04_v01_std.praat $directory $basename
	python3 tobi.py $directory $basename
done