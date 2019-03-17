all:
	hfst-lexc cro.lexc -o cro.lexc.hfst
	hfst-twolc cro.twol -o cro.twol.hfst
	hfst-compose-intersect -1 cro.lexc.hfst -2 cro.twol.hfst -o cro.gen.hfst