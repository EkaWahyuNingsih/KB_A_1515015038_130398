DOMAINS		
	benda = buku(judul, pengarang) ; /*Mendeklarasikan jenis parameter benda, dalam parameter ini terdapat domain-campuran jamak yaitu judul dan pengarang*/
		kuda(nama) ; 		 /*kuda terdapat argumen (nama)*/
		kapal ;			 /*kapal*/
		bukubank(saldo)		 /*bukubank terdapat argumen(saldo)*/
	judul, pengarang, nama = symbol	 /*dalam argumen judul, pengarang dan nama menggunakan jenis type data symbol*/
	saldo = real			 /*dalam argumen saldo menggunakan jenis type data real*/
	
PREDICATES
	nondeterm milik(nama,benda)	/*nondeterm untuk memberitahu compailer bahwa predikat memiliki jawaban kemungkinan lebih dari satu solution*/
	
CLAUSES	
	milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).	/* Erwin memiliki buku berjudul Markesot Bertutur dan pengaranganya Emha Ainun Najib */
	milik(erwin, kuda(buraq)). 					/* Erwin memiliki kuda buraq */
	milik(erwin, kapal). 						/* Erwin memiliki kapal */
	milik(erwin, bukubank(1000)). 					/* Erwin memiliki bukubank bernilai 1000 */
	
GOAL
	milik(erwin, Benda). /*Erwin memiliki benda dan benda itu vvariabel baru yang bisa berbentuk buku,pengarang,kuda dan bukubank */
	
	/*jadi, yang dapat ditampilkan ketika run nanti adalahh semua yang erwin miliki.*/