predicates
nondeterm matkul(symbol,symbol,symbol,symbol)
nondeterm praktikum(symbol,symbol,symbol,symbol)
nondeterm jadwal(symbol,symbol,symbol,symbol)
	  
clauses
	matkul(kriptografi,"07.30",senin,"a'2015").
	matkul(kalkulus,"09.30",rabu,"b'2015").
	matkul(technopreneurship,"08.00",selasa,"c'2013").
	
	praktikum(framework,"08.30",senin,"a'2015").
	praktikum(web,"09.30",rabu,"c'2014").
	praktikum(visual,"07.30",senin,"b'2014").
	
	jadwal(NamaMatkul,Jam,Hari,Kelas):-
		matkul(NamaMatkul,Jam,Hari,Kelas);
		praktikum(NamaMatkul,Jam,Hari,Kelas).
		
goal
	matkul(NamaMatkul,Jam,senin,Kelas);
	praktikum(NamaMatkul,Jam,senin,Kelas).
	
	