-- Nama : Marselina Bulu AS
-- NIM : 22241019
-- Modul 2
-- NILAI LITERAL 

-- menggunakan SELECT atatement untuk nilai literal untuk angka
SELECT 77 AS nomor_punggung;

-- menampilkan nilai literal beberapa tipe data
SELECT 77 AS Angka, true AS nilai_logika,'DQLAB' AS Teks;

-- NULL

-- menampilkan NULL
SELECT NULL AS kosong; 

-- OPERATOR MATEMATIKA

-- Kalkulusi exspresi matematika
SELECT
5%2 AS sisa_bagi,
5/2 As hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

-- perhitungan matematika
SELECT
4 * 2 AS hasil_kali,
(4 * 8)%7 AS sisa_bagi_1,
(4 * 8) MOD 7 AS sisa_bagi_2,
(4 * 8) / 7As hasil_bagi;

SELECT * FROM ter_panjang_dqlab;

-- EXPRESI MATEMATIKA
-- Menampilkan hasil hasil kali kolom qty dan harga
SELECT
5=5,
5<>5,
5<>4,
5!=5,
5!=4,
5>4;
-- operator perbandingan
-- menampilkan perbandingan literal
SELECT
1=true,
1=false,
5>=5,
5.2=5.2000,
NULL=1,
NULL=NULL;

-- OPERATOR PERBANDINGAN
-- menampilkan perbandingan literal
SELECT qty<=3 FROM tr_penjualan_dqlab;

-- FUNGSI
SELECT POW(3,2),ROUND(3.14), roud(3.54),
round(3.155,1),round(3.155,2),floor(4.28),
floor(4.78), ceiling(4.39),ceiling(4.55);
-- fungsi tanggal
SELECT NOW(),
year(now(),
datediff(now(),
day('2000-03-02');
 -- fungsi tanggal
 SELECT NOW(),
 datediff('2000-03-02',NOW(()),
 year('2022-07-23'),
 month ('2022-07-23'),
 day('2022-07-23'),
 year (now)));
 
 -- menampilkan selisih transaksi terakhir dengan tanggal saat ii
 SELECT datediff(now()),tgl_transaksi) AS selisi_hari FROM tr_penjual_dlab
 
 -- WHERE ststment
 -- Mengambil nama produk dan quantity yang quanty lebih dari 3
 SELECT
 nama_produk, qty
 FROM
 tr_penjualan_dqlab
 WHERE
 qty> 3;
 -- Mengambil nama_produk, qty, yang qty > 3, dan transaksi bulan 6
 SELECT
 nama_produk, qty
 FROM
 tr_penjualan_dqlab
 WHERE
 qty > 3 AND
 month (tgl_transaksi) 6;
 
 -- mengambil nama produk, qty dengan nama tertentu
 SELECT
 nama_produk, qty
 FROM
 tr_penjualan_dqlab tpd
 WHERE
 nama_produk = "Flashdisk Dolab 32GB";
 
 -- LIKE
 -- Mengambil nama produk yang berawal huruf "F"
 SELECT tr_penjualan_dqlab tpd
 WHERE nama_produk LIKE 'f%';
 
 -- latihan mandiri dengan mencoba berbagai filtering dengan like untuk pola teks
 SELECT nama_produk, qty FROM tr_produk_qlab WHERE nama_produk LIKE 'a%';
 SELECT kategori_produk FROM ms_produk_dqlab WHERE kateori_produk LIKE'%t%';
 SELECT kategori_produk FROM ms_produk_dqlab WHERE nama_produk LIKE 'f%' AND qty > 2;
