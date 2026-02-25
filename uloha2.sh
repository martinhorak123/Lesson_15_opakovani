#!/bin/bash

sort -t';' -k1,1 alphabet.txt > alphabet_sorted.txt
sort -t';' -k1,1 sifra.txt > sifra_sorted.txt
join -t';' -1 1 -2 1 sifra_sorted.txt alphabet_sorted.txt > step1.txt
sort -t';' -k2,2n step1.txt > step2.txt
cut -d';' -f3 step2.txt > step3.txt
echo "Tajná zpráva:"
tr '_' ' ' < step3.txt | tr -d '\n'

echo