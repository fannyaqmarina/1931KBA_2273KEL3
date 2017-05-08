domains
 kondisi = cond*
 cond  = string
 name = name(pertama,kedua)
 pertama,kedua = symbol
 
facts
 nama(kondisi)

PREDICATES 
nondeterm mulai
nondeterm sebelum
nondeterm ini(char)
nondeterm pilih(char)
nondeterm pilih1
nondeterm pilih2
nondeterm pilih3
nondeterm pilih4 
nondeterm konsumsi1(char)
nondeterm konsumsi2(char)
nondeterm konsumsi3(char)
nondeterm konsumsi4(char)
nondeterm a1
nondeterm lihat1(kondisi)
nondeterm a2
nondeterm a3
nondeterm a4
nondeterm b1
nondeterm b2
nondeterm b3
nondeterm b4
nondeterm ab1
nondeterm ab2
nondeterm ab3
nondeterm ab4
nondeterm o1
nondeterm o2
nondeterm o3
nondeterm o4
nondeterm detaila(char)
nondeterm da1
nondeterm da2
nondeterm da3
nondeterm detailb(char)
nondeterm db1
nondeterm db2
nondeterm db3
nondeterm detailab(char)
nondeterm dab1
nondeterm dab2
nondeterm dab3
nondeterm detailo(char)
nondeterm do1
nondeterm do2
nondeterm do3
rx(char,char)
nondeterm tx(char,char)
nondeterm lagi
nondeterm keluar

CLAUSES
rx(Y,Y):- !.
rx(_,_):- fail.

tx(Y,Y) :- mulai.
tx(_,_) :- keluar.

nama(["Aqmarina Nur A.S   1515015019", "Nur Bayti                1515015031","Nirmala Adjeng W. 1515015227"]).
lihat1([]).
lihat1([H|T]):-
   write("=>"),     
   write(H),nl,  
   lihat1(T).
   
lagi:-
	write("\n"),
	write("=> Mau Coba Lagi? y/n"),nl,
	readchar(Ans), tx(Ans,'y'),mulai.
	
 keluar :-
 write("\nTerimakasih \n"),
 exit.
	
sebelum:-
write("SELAMAT DATANG "),
write("DI PROGRAM KAMI"),nl,
write("\n"),nl,
write("Perkenalkan nama kelompok kami dan nim kami : "),nl,nl,
nama(N),
lihat1(N),
write("\n"),
write("Tekan sembarang untuk melanjutkan :"),nl,
readchar(C), ini(C).

ini(C):- rx(C,'a'),mulai.
ini(_) :- mulai. 

mulai:-
write("\n"),
write("\n"),
write("========================================================="),nl,
write("       PROGRAM DIET BERDASARKAN GOLONGAN DARAH"),
write("\n"),
write("\n"),
write(" 1. Golongan darah A\n"),
write(" 2. Golongan darah B\n"),
write(" 3. Golongan darah AB\n"),
write(" 4. Golongan darah O\n"),
write(" 5. Exit\n"),
write("\n"),
write("========================================================="),nl,
write("Masukan pilihan : \n"),
readchar(P),pilih(P),
mulai.

pilih(P):- rx(P,'1'),pilih1.
pilih(P):- rx(P,'2'),pilih2.
pilih(P):- rx(P,'3'),pilih3.
pilih(P):- rx(P,'4'),pilih4.
pilih(P):- rx(P,'5'),keluar.
pilih(_):- mulai.

pilih1:-
write("\n"),
write("Mereka yang bergolongan darah ini memerlukan makanan sealami mungkin untuk memperkuat sistem kekebalan tubuh dan menghambat penyakit berbahaya"),nl,
write("Penyakit yang beresiko tinggi antara lain : jantung, diabetes militus, kanker, gangguan hati dan empedu serta hepatitis"),nl,
write("Orang dengan golongan darah A sangat cocok mengkonsumsi makanan vegetarian"),nl,nl,
write(" A. Lihat konsumsi yang disarankan"),nl,
write(" B. Lihat konsumsi yang tidak disarankan"),nl,
write(" C. Lihat olahraga yang disarankan"),nl,
write("\n"),
write("Masukan pilihan : "),
readchar(L),detaila(L).

detailA(L):- rx(L,'A'),da1.
detailA(L):- rx(L,'a'),da1.
detailA(L):- rx(L,'B'),da2.
detailA(L):- rx(L,'b'),da2.
detailA(L):- rx(L,'C'),da3.
detailA(L):- rx(L,'c'),da3.
detailA(_):- pilih1.

da1:-
write("\n"),
write("\n"),
write("Apakah anda memiliki alergi terhadap beberapa bahan makanan sebagai berikut ?"),nl,
write("\n"),
write(" 1. Biji-bijian \n"),
write(" 2. Kedelai \n"),
write(" 3. Biji-bijian dan kedelai \n"),
write(" 4. Tidak ada\n"),
write("\n"),
write("Masukan pilihan : "),
readchar(A),konsumsi1(A),
lagi.

konsumsi1(A):- rx(A,'1'),a1.
konsumsi1(A):- rx(A,'2'),a2.
konsumsi1(A):- rx(A,'3'),a3.
konsumsi1(A):- rx(A,'4'),a4.
konsumsi1(_):- da1.

a1:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap biji-bijian adalah sayuran dan kedelai"),nl,lagi.

a2:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap kedelai adalah sayuran dan biji-bijian"),nl,lagi.

a3:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap biji-bijian dan kedelai adalah sayuran"),nl,lagi.

a4:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk golongan darah anda adalah biji-bijian, kedelai dan sayuran"),nl,lagi.

da2:-
write("\n"),
write("\n"),
write("Golongan darah A tidak disarankan mengkonsumsi daging bebek, kentang dan susu sapi"),nl,lagi.

da3:-
write("\n"),
write("\n"),
write("Olahraga yang disarankan untuk golongan darah A ialah yoga, golf dan jalan santai"),nl,lagi.

pilih2:-
write("\n"),
write("Mereka yang bergolongan darah B sangat bagus untuk mengkonsumsi daging, golongan darah B juga dapat menikmati hampir semua produk susu"),nl,
write("Sayuran yang dikonsumsi juga disarankan yang kaya akan magnesium"),nl,nl,
write(" A. Lihat konsumsi yang disarankan"),nl,
write(" B. Lihat konsumsi yang tidak disarankan"),nl,
write(" C. Lihat olahraga yang disarankan"),nl,
write("\n"),
write("Masukan pilihan : "),
readchar(K),detailb(K),
mulai.

detailb(K):- rx(K,'A'),db1.
detailb(K):- rx(K,'a'),db1.
detailb(K):- rx(K,'B'),db2.
detailb(K):- rx(K,'b'),db2.
detailb(K):- rx(K,'C'),db3.
detailb(K):- rx(K,'c'),db3.
detailb(_):- pilih2.

db1:-
write("\n"),
write("\n"),
write("Apakah anda memiliki alergi terhadap beberapa bahan makanan sebagai berikut ?"),nl,
write("\n"),
write(" 1. Ikan laut \n"),
write(" 2. Olahan susu sapi \n"),
write(" 3. Ikan laut dan olahan susu sapi \n"),
write(" 4. Tidak ada\n"),
write("\n"),
write("Masukan pilihan : "),
readchar(B),konsumsi2(B).

konsumsi2(B):- rx(B,'1'),b1.
konsumsi2(B):- rx(B,'2'),b2.
konsumsi2(B):- rx(B,'3'),b3.
konsumsi2(B):- rx(B,'4'),b4.
konsumsi2(_):- db1.

b1:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap ikan laut adalah olahan susu sapi dan brokoli"),nl,lagi.

b2:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap olahan susu sapi adalah ikan laut dan brokoli"),nl,lagi.

b3:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap ikan laut dan olahan susu sapi adalah brokoli"),nl,lagi.

b4:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk golongan darah anda adalah ikan laut, olahan susu sapi dan brokoli"),nl,lagi.

db2:-
write("\n"),
write("\n"),
write("Golongan darah B tidak disarankan mengkonsumsi telur bebek, santan dan air soda"),nl,lagi.

db3:-
write("\n"),
write("\n"),
write("Olahraga yang disarankan untuk golongan darah B ialah dance, ballet dan tennis"),nl,lagi.

pilih3:-
write("\n"),
write("Produksi lender pada pemilik golongan darah AB sangat berlebihan sehingga lebih disarankan bagi mereka utuk mengkonsumsi beras, membatasi konsumsi daging karena akan berpengaruh pada asam lambung"),nl,
write("Sayuran yang dianjurkan ialah sayuran  segar yang merupakan sumber penting fitokimia, yakni zat alami dalam mencegah penyakit jantung dan kanker"),nl,
write("Untuk konsumsi buah-buahan lebuh disarankan untuk mengkonsumsi buh yang bersifat basa, golongan darah ini juga tidak memerlukan suplemen dalam pola makannya"),nl,nl,
write(" A. Lihat konsumsi yang disarankan"),nl,
write(" B. Lihat konsumsi yang tidak disarankan"),nl,
write(" C. Lihat olahraga yang disarankan"),nl,
write("\n"),
write("Masukan pilihan : "),
readchar(J),detailab(J),
mulai.

detailab(J):- rx(J,'A'),dab1.
detailab(J):- rx(J,'a'),dab1.
detailab(J):- rx(J,'B'),dab2.
detailab(J):- rx(J,'b'),dab2.
detailab(J):- rx(J,'C'),dab3.
detailab(J):- rx(J,'c'),dab3.
detailab(_):- pilih3.
 
dab1:-
write("\n"),
write("\n"),
write("Apakah anda memiliki alergi terhadap beberapa bahan makanan sebagai berikut ?"),nl,
write("\n"),
write(" 1. Susu kambing\n"),
write(" 2. Ikan tuna \n"),
write(" 3. Susu kambing dan ikan tuna \n"),
write(" 4. Tidak ada\n"),
write("\n"),
write("Masukan pilihan : "),
readchar(AB),konsumsi3(AB).

konsumsi3(AB):- rx(AB,'1'),ab1.
konsumsi3(AB):- rx(AB,'2'),ab2.
konsumsi3(AB):- rx(AB,'3'),ab3.
konsumsi3(AB):- rx(AB,'4'),ab4.
konsumsi3(_):- dab1.

ab1:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap susu kambing adalah ikan tuna dan anggur merah"),nl,lagi.

ab2:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap ikan tuna adalah susu kambing dan anggur merah"),nl,lagi.

ab3:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap susu kambing dan ikan tuna adalah anggur merah"),nl,lagi.

ab4:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk golongan darah anda adalah susu kambing, ikan tuna dan anggur merah"),nl,lagi.

dab2:-
write("\n"),
write("\n"),
write("Golongan darah AB tidak disarankan mengkonsumsi daging bebek, kentang dan susu sapi"),nl,lagi.

dab3:-
write("\n"),
write("\n"),
write("Olahraga yang disarankan untuk golongan darah AB ialah yoga, dance dan jogging santai"),nl,lagi.

pilih4:-
write("\n"),
write("Orang yang memiliki golongan darah O ini umumnya memiliki karakter pemburu yang kuat, percaya diri yang tinggi dan pantas menjadi pemimpin"),nl,
write("Golongan darah ini akan lebih baik keadaannya jika diberi makanan tinggi protein"),nl,nl,
write(" A. Lihat konsumsi yang disarankan"),nl,
write(" B. Lihat konsumsi yang tidak disarankan"),nl,
write(" C. Lihat olahraga yang disarankan"),nl,
write("\n"),
write("Masukan pilihan : "),
readchar(Z),detailo(Z),
mulai.

detailo(Z):- rx(Z,'A'),do1.
detailo(Z):- rx(Z,'a'),do1.
detailo(Z):- rx(Z,'B'),do2.
detailo(Z):- rx(Z,'b'),do2.
detailo(Z):- rx(Z,'C'),do3.
detailo(Z):- rx(Z,'c'),do3.
detailo(_):- pilih4.

do1:-
write("\n"),
write("\n"),
write("Apakah anda memiliki alergi terhadap beberapa bahan makanan sebagai berikut ?"),nl,
write("\n"),
write(" 1. Ikan\n"),
write(" 2. Daging unggas\n"),
write(" 3. Ikan dan daging unggas\n"),
write(" 4. Tidak ada\n"),
write("\n"),
write("Masukan pilihan : "),
readchar(O),konsumsi4(O).

konsumsi4(O):- rx(O,'1'),o1.
konsumsi4(O):- rx(O,'2'),o2.
konsumsi4(O):- rx(O,'3'),o3.
konsumsi4(O):- rx(O,'4'),o4.
konsumsi4(_):- do1.

o1:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap ikan adalah daging unggas dan sayuran hijau"),nl,lagi.

o2:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap daging unggas adalah ikan dan sayuran hijau"),nl,lagi.

o3:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk anda yang alergi terhadap ikan dan daging unggas adalah sayuran hijau"),nl,lagi.

o4:-
write("\n"),
write("\n"),
write("Konsumsi yang disarankan untuk golongan darah anda adalah ikan, daging unggas dan sayuran hijau"),nl,lagi.

do2:-
write("\n"),
write("\n"),
write("Golongan darah O tidak disarankan mengkonsumsi kopi, kacang merah dan yogurt"),nl,lagi.

do3:-
write("\n"),
write("\n"),
write("Olahraga yang disarankan untuk golongan darah O ialah jogging, bersepeda dan berenang"),nl,lagi.

GOAL
sebelum. 