all:
	latexmk tex/slide.tex 

clean:
	latexmk -C tex/slide.tex
	rm -f slide.bbl tex/__latexindent_temp.tex tex/*.aux tex/*.fdb_latexmk tex/*.fls tex/*.log
