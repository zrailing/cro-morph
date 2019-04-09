all: cro.gen.hfst cro.mor.hfst cro.mor.hfstol

cro.lexc.hfst: cro.lexc
	hfst-lexc $< -o $@

cro.twol.hfst: cro.twol
	hfst-twolc $< -o $@

cro.gen.hfst: cro.twol.hfst cro.lexc.hfst
	hfst-compose-intersect -1 cro.lexc.hfst -2 cro.twol.hfst -o $@

cro.mor.hfst: cro.gen.hfst
	hfst-invert $< -o $@

cro.mor.hfstol: cro.mor.hfst
	hfst-fst2fst -w $< -o $@

clean:
	rm *.hfst *.hfstol

