DOMAINS		
	orang = orang(nama,alamat)			/*dalam orang terdapat objek jamak yaitu yang argumennya nama dan alamat*/
	nama = nama(pertama,kedua)			/*dalam nama terdapat objek jamak yaitu yang argumennya pertama dan kedua*/
	alamat = alamat(jalan,kota_kab,propinsi)	/*dalam alamat terdapat objek jamak yaitu yang argumennya jalan,kota_kab, dan propinsi*/
	jalan = jalan(nama_jalan,nomor)			/*dalam jalan ada objek jamak jalan yang argumennya (nama_jalan,nomor)*/
	kota_kab,propinsi,nama_jalan = string		/*dalam kota_kab,propinsi dan nama_jalan menggunakan domain string*/
	pertama,kedua = symbol				/*dalam pertama dan kedua menggunakan domain string*/
	nomor = integer					/*dalam nomor menggunakan domain integer*/
GOAL		
	P1 = orang(nama(diena,fatihah), alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),	/*Data pertama yang argumennya berisi penuh*/
	P1 = orang(nama(_,fatihah),Alamat),		/*Data akan memanggil alamat pada P1 pertama lalu ditambah dengan alamat*/
	P2 = orang(nama(nur,fatihah),Alamat),		/*Data akan memanggil alamat pada P1 pertama lalu ditambah dengan alamat*/
	write("P1=",P1),nl,				/*Data P1 ini akan dijalankan pertama dan hasilnya akan sama dengan P1 pertama yang lengkap*/
	write("P2=",P2),nl.				/*Data P2 ini akan dijalankan pertama dan hasilnya akan sama dengan P2 pertama yang lengkap*/
	
	/*jadi ketika dirunning maka akan muncul 1 solution yang menunjukan  nama yang ada di P1 line pertama goal*/