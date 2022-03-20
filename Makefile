all: doc_jp.pdf

doc_jp.pdf: doc_jp.dvi
	dvipdfmx doc_jp.dvi

doc_jp.dvi: doc_jp.tex
	platex doc_jp.tex
	platex doc_jp.tex

clean:
	rm *.dvi
	rm *.pdf
	rm *.aux
	rm *.log

.PHONY: clean