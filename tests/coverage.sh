total=`cat cro-dict.tsv | tr ' ' '\n' | apertium-destxt | hfst-proc ../cro.mor.hfstol | apertium-retxt | wc -l`;
known=`cat cro-dict.tsv | tr ' ' '\n' | apertium-destxt | hfst-proc ../cro.mor.hfstol | apertium-retxt | grep -v '\*' | wc -l`;
coverage=`echo "($known/$total)*100" | bc -l`;
echo "$known/$total\t$coverage";
