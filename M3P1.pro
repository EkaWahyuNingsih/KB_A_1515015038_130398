DOMAINS
kali,jumlah = integer% kali dan jumlah operasi bilangan yang bertipe data integer

PREDICATES
tambahkan(jumlah,jumlah,jumlah)%tambahkan memilii 3 parameter jumlah)
kalikan(kali,kali,kali)%kalikan memiliki 3 parameter kali)

CLAUSES
tambahkan(X,Y,Jumlah);-Jumlah=X+Y. %X ditambahkan Y memiliki jumlah ? atau jumlah adalah hasil dari X tambah Y
kalikan(X,Y,Kali):-Kali=X*Y. %X dikalikan Y memiliki jumlah ? atau jumlah adalah hasil dari X kali Y

GOAL
tambahkan(32,54,Jumlah). %karena goalnya adalah mencari tambah dan angkanya telah didefinisikan yaitu 32 ditambahkan dengan 54 maka jumlahnya 86 