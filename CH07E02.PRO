/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %mendeklarasikan bahwa list memliki tipe data integer

predicates
  length_of(list,integer) - procedure (i,o) %mendelarasikan bahwa pada predikat length_of memiliki parameter list yang sebagai input dan parameter integer sebagai output

clauses
  length_of([], 0). % menyatakan bahwa bila list kosong maka akan bernilai 0
  length_of([_|T],L):- % mmenyatakan bahwa predikat memiliki head dan tail
	length_of(T,TailLength), % maka menghitungnya dengan cara :
	L = TailLength + 1.	%menjumlahkan tail dan head

goal
  length_of([1,2,3],L). %mencari panjang list :
  			% diketahui head = 1
  			% diketahui tail = 2 dan 3 maka hanya diambil 2 saja
  			%rumusnya :
  			% TailLength + 1
  			% maka didapatkan 2 + 1 = 3
  			% maka didapatkan panjang list = 3
