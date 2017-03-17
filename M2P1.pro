PREDICATES
nondeterm dapat_membeli(symbol, symbol) %dapat_membeli memiliki 2 parameter
nondeterm orang(symbol) %orang memiliki 1 parameter
nondeterm mobil(symbol) %mobil memiliki 1 parameter 
suka(symbol, symbol) %suka memiliki 2 parameter
dijual(symbol) %dijual memiliki 1 parameter

CLAUSES
dapat_membeli(X,Y):- %X dapat membeli Y
orang(X), mobil(Y), suka(X,Y), dijual(Y). %X adalah  orang, Y adalah mobil, orang menyukai mobil, mobil dijual

orang(nur).	orang(yudi).	orang(dian).	orang(heni). %nur adalah orang. yudi adalah orang. dian adalah orang. heni adalah orang.
mobil(atoz).	mobil(kijang). %atoz adalah mobil. kijang adalah mobil.
suka(dian, atoz).	suka(yudi, pecel). %dian menyukai atoz (berarti dian menyukai mobil bermerk atoz). yudi menyukai pecel.
suka(heri, buku).	suka(nur, komputer). %heri menyukai buku. nur menyukai komputer.
dijual(kijang).		dijual(atoz).	dijual(buku). %mobil bermerk kijang dijual. mobil bermerk atoz dijual. buku dijual.

GOAL
dapat_membeli(Siapa,Apa). %siapa dapat membeli apa? (karena tadi yang terdapat dalam klausa dian menyukai atoz maka goalnya adalah dian dan atoz . kerena X dan Y mendeklarasikan orang dan mobil)
%suka(_,Apa). (hanya sebuah komentar)
%suka(Siapa,_).(hanya sebuah komentar)
%dapat_membeli(_,Apa).(hanya sebuah komentar)
%dapat membeli(Siapa,_).(hanya sebuah komentar)