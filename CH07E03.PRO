/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %mendeklarasikan bahwa list memiliki tipe data integer

predicates
  length_of(list,integer,integer) - procedure (i,o,i) %mendeklarasikan predikat list berupa input, integer berupa output, dan integer terakhir berupa input

clauses
  length_of([], Result, Result). %ketentuan jika list dalam keadaan kosong, maka variable result pertama akan bernilai sama dengan
  length_of([_|T],Result,Counter):- %ketentuan pada result kedua yang memiliki posisi sebagai input. jadi jia nilai result edua diinputan nilai 1 maka hasilnya akan sama seperti yang diinputkan sebelumnya
	NewCounter = Counter + 1, %counter berfungsi sebagai inputan dimana nilai yang diinputkan akan ditambahkan saat menghitung panjang list dan menggantikan nilai pada head
	length_of(T, Result, NewCounter).%untuk mendapatkan panjang list maka counter yang diinputkan akan ditambahkan 1 sebagai penggantti nilai head tadi 

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */ %mencari panjang list dengan counter 0
  %diketahui nilai head = 1 maka bernilai 1 pula
  %diketahui nilai tail = 2 dan 3 maka akan bernilai 2 saja 
  %nilai counter = 0
  %NewCounter = Nilai counter + 1 maka,
  %		0 + 1 = 1
  
  %length_of = lengthtail + counter
  %		2 + 1 = 3
  
 %oleh karena itu didapatkan panjang list = 3