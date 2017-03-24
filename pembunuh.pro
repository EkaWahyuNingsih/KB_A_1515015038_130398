DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol  
umur=integer /*Domains berfungsi untuk mendeklarasikan tipe data*/

PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan) /*nondeterm orang memiliki 4 parameter yaitu nama, jender yang bertype data symbol dan umur bertipe data integer sesuai dengan yang telah ditetapkan pada domains*/
nondeterm selingkuh(nama, nama) /*nondeterm selingkuh memiliki 2 parameter yang sama yaitu nama yang bertipe data symbol*/
terbunuh_dengan(nama, benda)  /*terbunuh_dengan memiliki 2 parameter yaitu nama dan benda yang bertipe data symbol*/
terbunuh(nama)/*terbunuh memiliki 1 parameter yaitu nama yang bertipe data symbol*/
nondeterm pembunuh(nama)/*nondeterm pembunuh memiliki satu parameter yaitu nama dengan menggunakan type data symbol*/
motif(alasan)/*motif memiliki 1 parameter yaitu alasan yang bertipe data symbol*/
ternodai(nama, zat)/*ternodai memiliki 2 parameter yaitu nama dan zat yang bertpe data symbol*/
milik(nama, benda)/*milik memiliki 2 parameter yaitu nama dan benda yang bertipe data symbol*/
nondeterm cara_kerja_mirip(benda, benda) /*cara_kerja_mirip memiliki 2 parameter yang bertipe data symbol*/
nondeterm kemungkinan_milik(nama, benda)/*kemungkinan_milik memiliki 2 parameter yang bertipe data symbol*/
nondeterm dicurigai(nama)/*dicurigai memiliki satu parameter yang bertipe data symbol*/

/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES
orang(budi,55,m,tukang_kayu)./*menyatakan bahwa budi adalah orang yang berumur 55 tahun, memiliki jender m, dan memiliki pekerjaan sebagai tukang kayu*/
orang(aldi,25,m,pemain_sepak_bola)./*menyatakan bahwa aldi adalah orang yang berumur 25 tahun, memiliki jender m, dan memiliki pekerjaan sebagai pamin sepak bola*/
orang(aldi,25,m,tukang_jagal)./*menyatakan bahwa aldi adalah orang yang berumur 25 tahun, memiliki jender m, dan memiliki pekerjaan sebagai tukang jagal*/
orang(joni,25,m,pencopet)./*menyatakan bahwa joni adalah orang yang berumur 25 tahun, memiliki jender m, dan memiliki pekerjaan sebagai pencopet*/
selingkuh(ina,joni)./*menyatakan bahwa ina selingkuh dengan joni*/
selingkuh(ina,budi)./*menyatakan bahwa ina selingkuh dengan budi*/
selingkuh(siti,joni)./*menyatakan bahwa siti selingkuh dengan joni*/
terbunuh_dengan(siti,pentungan)./*menyatakan bahwa siti terbunuh dengan pentungan*/
terbunuh(siti)./*menyatakan bahwa siti terbunuh*/
motif(uang)./*menyatakan bahwa motifnya karena uang*/
motif(cemburu)./*menyatakan bahwa motifnya karena cemburu*/
motif(dendam)./*menyatakan bahwa motifnya karena dendam*/
ternodai(budi, darah)./*menyatakan bahwa budi ternodai dengan darah*/
ternodai(siti, darah)./*menyatakan bahwa siti ternodai dengan darah*/
ternodai(aldi, lumpur)./*menyatakan bahwa aldi ternodai dengan lumpur*/
ternodai(joni, coklat)./*menyatakan bahwa joni ternodai dengan coklat*/
ternodai(ina, coklat)./*menyatakan bahwa ina ternodai dengan coklat*/
milik(budi,kaki_palsu)./*menyatakan bahwa kaki palsu itu milik budi*/
milik(joni,pistol)./*menyatakan bahwa pistol itu milik joni*/

/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan)./*menyatakan bahwa kaki palsu cara kerjanya mirip dengan pentungan*/
cara_kerja_mirip(balok, pentungan)./*menyatakan bahwa balok cara kerjanya mirip dengan pentungan*/
cara_kerja_mirip(gunting, pisau)./*menyatakan bahwa gunting cara kerjanya dengan mirip dengan pisau*/
cara_kerja_mirip(sepatu_bola, pentungan)./*menyatakan bahwa sepatu bola cara kerjanya mirip pentungan*/
kemungkinan_milik(X,sepatu_bola):-/*menyatakan bahwa kemungkinan sepatu bola itu milik seseorang jika*/
orang(X,_,_,pemain_sepak_bola)./*orang itu adalah pemain sepak bola*/
kemungkinan_milik(X,gunting):-/*menyatakan bahwa kemungkinan gunting itu milik seseorang jika*/
orang(X,_,_,pekerja_salon)./*orang itu adalah pekerja salon*/
kemungkinan_milik(X,Benda):- /*kemungkinan benda itu milik seseorang (Benda dalam bentuk variabel*/ 
milik(X,Benda)./*seseorang memiliki benda */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- /*seseorang dicurigai*/
terbunuh_dengan(siti,Senjata) ,/*siti terbunuh dengan senjata dan*/
cara_kerja_mirip(Benda,Senjata) ,/*benda yang cara kerjanya mirip dengan senjata dan*/
kemungkinan_milik(X,Benda)./*bendaa itu kemungkinan milik seseorang*/
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-/*seseorang dicurigai jika*/
motif(cemburu),/*motifnya cemburu*/
orang(X,_,m,_),/*seseorang tersebut berjender m */
selingkuh(siti,X)./*siti selingkuh dengan seseorang*/
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-/*seeseorang dicurigai*/
motif(cemburu),/*memiliki motif cemburu*/
orang(X,_,f,_),/*orang tersebut berjender f */
selingkuh(X,Lakilaki),/*seseorang yang berselingkuh itu adalah laki-laki*/
selingkuh(siti,Lakilaki)./*siti selingkuh dnegan laki-laki*/
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-/*seseorang dicurigai jika*/
motif(uang),/*memiliki motif yang bermotif uang*/
orang(X,_,_,pencopet)./*orang itu bekera sebsgai pencopet*/
pembunuh(Pembunuh):-/*mendeklarasikan pembunuh*/
orang(Pembunuh,_,_,_),/*pembunuh itu adalah orang*/
terbunuh(Terbunuh),/*mendeklarasikan terbunuh*/
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),/*pembunuh dicurigai*/
ternodai(Pembunuh,Zat), /*pembunuh ternodai zat*/
ternodai(Terbunuh,Zat)./*pembunuh ternodai zat*/
GOAL
pembunuh(X)./*yang dicari ialah pembunuhnya*/
/*didapatkan budi karena siti terbunuh karena pentungan, sedangkan dari *
**hasil yang didapatkan bahwa budi bekerja sebagai tukang kayu, dari kemungkinan yang didapat *
**siti terbunuh dengan balok, dan bisa dikatakan bahwa tukang kayu yang memiliki balok tersebut */