PREDICATES
nondeterm suka(symbol,symbol) %suka memiliki 2 parameter

CLAUSES
suka(asep,membaca). %asep suka membaca
suka(asari,computers). %asari suka komputer
suka(nunung,bulutangkis).%nunung suka bulutangkis
suka(vida,bulutangkis).%vida suka bulu tangkis 
suka(astana,renang).%astana suka renang
suka(astana,membaca).%astana suka membaca

GOAL
suka(Orang, membaca),
suka(Orang, renang).
%siapa orang yang suka membaca dan renang? 
%Goalnya adalah astana karena astana menyukai memabaca sekaligus renang