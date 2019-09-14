# PyToBI: A Toolkit for ToBI Labeling with Python Data Structures


If you use this code or modified it, please cite the following publication:

Domínguez, M., Rohrer, P. and Soler-Company, J. 2019. PyToBI: A Toolkit for ToBI Labeling with Python Data Structures. In Proceedings of Interspeech 2019, Graz, Austria.

To use the code you need to simply: 

1.- Download or clone this repository

2.- Download Praat from http://www.fon.hum.uva.nl/praat/

3.- Modify the bash script with the suitable paths to your folders

4.- Open a terminal and run the bash script

Requirements:
Please, note that you need the word alignment of the wav file you wish to annotate with ToBI. You can get automatic word alignments with different applications. We recommend the Montreal Force Aligner (https://montreal-forced-aligner.readthedocs.io/en/latest/)

The output of the Toolkit are Praat TextGrids annotated with ToBI labels with the word alignment you provided, a Tones tier and a Breaks tier.
