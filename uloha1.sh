#!/bin/bash


SLOVO="MIlujuMartinakterejjehezkej"


echo "$SLOVO" | fold -w1 | nl -w1 -s';' > slovo.txt
tr 'A-Z' 'a-z' < slovo.txt > slovo_lower.txt
sort -t';' -k2,2 slovo_lower.txt > slovo_sorted.txt
sort -t';' -k1,1 hlaskovaci_abecdeda.txt > abecdeda_sorted.txt
join -t';' -1 2 -2 1 slovo_sorted.txt abecdeda_sorted.txt > spojeno.txt
sort -t';' -k2,2n spojeno.txt > final_sorted.txt
echo "Výsledek:"
cut -d';' -f3 final_sorted.txt