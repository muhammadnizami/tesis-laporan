REM clean
rmdir /S /Q build
rmdir /S /Q output
	
REM install
REM TODO add windows copy command for .bbx file
mkdir -p output
mkdir -p build
latexmk -pdf -bibtex -outdir=../build -cd src/thesis.tex
move build\thesis.pdf output
