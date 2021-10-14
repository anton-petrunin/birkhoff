# Euclidean plane and its relatives
## A minimalistic introduction

 * http://anton-petrunin.github.io/birkhoff/
 
The book is designed for a semester-long course in [Foundations of Geometry](http://en.wikipedia.org/wiki/Foundations_of_geometry) and meant to be rigorous, conservative, elementary and minimalist.

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

## How to build

The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/birkhoff.git`

Go to the crated folder, and run `mpost`, `pdflatex` and `makeindex` few times; it worked with full installation of TeX Live on Kubuntu 20.04.

`cd birkhoff/mpics/`<br/>
`mpost pic.mp`<br/>
`mpost pic-hints.mp`<br/>
`cd ..`<br/>
`pdflatex all-lectures.tex`<br/>
`makeindex all-lectures`<br/>
`pdflatex all-lectures.tex`<br/>
`biber all-lectures`<br/>
`makeindex all-lectures`<br/>
`pdflatex all-lectures.tex`<br/>

the following command will extract all needed files in arXiv.tar:

`tar -cvf arXiv.tar --files-from list-of-files.txt`
