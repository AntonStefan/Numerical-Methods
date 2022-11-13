Nume: Anton Stefan
Grupa: 311CC
===========================================================================
Timp lucru: cam 3 zile (in jur de 11 ore)
===========================================================================
Testare: Tema a fost realizata in OCTAVE(GUI)

Comenzi rulare:
R= Iterative ("graf1",0.85,0.001)
R = Iterative ("graf2", 0.85, 0.001)

R= Algebraic("graf1",0.85,0.001)
R= Algebraic("graf2",0.85,0.001)

[R1 R2] = PageRank ("graf1", 0.85, 0.001)
[R1 R2] = PageRank ("graf2", 0.85, 0.001)
===========================================================================
Tema consta in algoritmul de la Google si anume PageRank.
===========================================================================
Implementare:
    ITERATIVE
  Am inceput cu functia Iterative in care am citit mai intai N, dupa care 
am citit matricea de adiacenta A, urmand sa construim vectorul de linkuri L,
in care am insumat pe fiecare pozitie numarul de 1 gasit in matricea de 
adiacenta A.
  Indicii si M au fost implementati pe baza formulelor din tema. Calcularea 
indicilor PageRankului se opreste cand eroarea este mai mica decat eps.
    ALGEBRAIC
  Pentru acest algoritm am folosit partea initiala din iterative, la care am 
calculat algebric folosind algoritmul G-S.
    PAGERANK
Am facut citirile ca la punctele anterioare si am mai citit si cele 2 valori.
Am facut o copie la PR algebric si l-am sortat, ca mai apoi sa afisam in functie 
de gradul de apartenenta folosind PR sortat.
    Se afiseaza rezultatele 
	Vectorul de Page Rank obtinunt cu alg Iterative
	Vectorul de Page Rank obtinunt cu alg Algebraic
	Sortarea nodurilor si Topul acestora cat si gradul de apartenenta
	calculat prin apelarea functiei Apartenenta(x,val1,val2)



