pdf=poisot_code.pdf
md=ms.md
csl=/home/tpoisot/.pandoc/styles/vancouver-author-date.csl
bib=/home/tpoisot/.pandoc/default.bib
pfl= --csl $(csl) --bibliography $(bib)

$(pdf): $(md)
	pandoc $< -o $@ $(pfl) --template template.tex
	pandoc $< -o poisot.doc $(pfl)
	pandoc $< -o poisot.docx $(pfl)
