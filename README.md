# PyToBI: A Toolkit for ToBI Labeling with Python Data Structures


If you use this code or modified it, please cite the following publication:

Domínguez, M., Rohrer, P. and Soler-Company, J. 2019. PyToBI: A Toolkit for ToBI Labeling with Python Data Structures. In Proceedings of Interspeech, Graz, Austria, pp: 3675-3676.

To use the code you need to simply: 

1.- Download or clone this repository

2.- Download Praat from http://www.fon.hum.uva.nl/praat/

3.- Modify the bash script with the local path to PyToBI and sytem (Mac or Linux/Windows)

4.- Open a terminal and run the bash script specifying the directory to your corpus:

./runPyToBI.sh /path/to/your/files/

Requirements:
Please, note that you need the word alignment of the wav file you wish to annotate with ToBI. 
You can get automatic word alignments with different applications. We recommend the Montreal Force Aligner (https://montreal-forced-aligner.readthedocs.io/en/latest/).

The audio file and word alignment must have the same name, e.g. filename01.wav filename01.TextGrid


The output of the Toolkit are Praat TextGrids annotated with ToBI labels with the word alignment you provided, a Tones tier and a Breaks tier. The resulting filname will have the original filename + "\_result.TextGrid"
