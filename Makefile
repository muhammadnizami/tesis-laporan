all: clean install

TEXMFHOME = ~/texmf/
install:
	cp src/texmffiles/* -r $(TEXMFHOME)
	mkdir -p output
	mkdir -p build
	latexmk -pdf -bibtex -outdir=build -cd src/thesis.tex
	mv build/thesis.pdf output

clean:
	rm -f output/* build/*
	find . -iname "*~" -exec rm '{}' ';'
