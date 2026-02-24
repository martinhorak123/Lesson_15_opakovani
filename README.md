# Opakování sort uniq cut paste join tr
## Úloha 1 - Hláskovací abeceda.
Pomocí hláskovací abecedy zakódujte libovolné slovo.

Například pro slovo `ahoj` bude výsledek 
``` bash
alfa
hotel
oscar
juliett
```
### Postup:
1. Vytvořte **fork** tohoto projektu a v něm vypracujte následující úlohy. 
2. Vytovříme souobor `slovo.txt` obsahující v každém řádku pořadí a jeden znak našeho slova. Slovo by nemělo obsahovat diakritiku a případné mezery nahraďte `_`.
     ```bash
     1;A
     2;h
     3;o
     4;j
     ```
  Lze využít následující script:
  ``` bash
echo "Ahoj" | fold -w1 | nl -w1 -s';' > slovo.txt
```
3. Ze slova pomocí tr nahraďte všechna velká písmena za malá.
4. `slovo.txt` seřadíme podle 2. sloupce a výsledek uložte do souboru `slovo_sorted.txt`
5. Pomocí příkazu join spojte soubory `slovo_sorted.txt` a `hlaskovaci_abeceta.txt` tak, aby ke každému znaku slova bylo přiřazeno odpovídající slovo z hláskovací abecedy.
6. Výsledek setřiďte podle pořadí (3. sloupce) a následně pomocí `cut` vypište pouze 2. sloupec.

## Úloha 2 - Kodovaná zpráva.
Pomocí příkazů `sort` `cut` a `join` najděte a vypište tajnou zprávu:
soubor `sifra.txt` obsahuje dva sloupce. První je index znaku v `alphabet.txt` a druhý sloupec obsahuje pořadí znaku ve výsledné zprávě. 

### Postup: 
1. Nejprve slučte sloupce 
2. Následně ve výsledném textu nahraďte všechny `_` za `[mezera]` a výsledek vypište na jeden řádak odstraněním všech `\n` (pomocí příkaz `tr`).

## Úloha 3 - Odevzdání.
Veškeré zdrojové kódy nakcomitujde do GITu a uložte do vašeho GitHub repozitáře. 
Do svého GitHub repozitáře uložte veškeré zdrojové soubory, které jste v průběhu úloh vytvořili, zejména:
* shell skripty (*.sh)
* vstupní soubory (alphabet.txt, sifra.txt, hlaskovaci_abeceda.txt, …)
* pomocné soubory vytvořené při řešení (např. step1.txt, step2.txt)
