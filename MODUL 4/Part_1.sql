-- nama ; Muh. Haeril Rapli
-- nim ; 23241069
-- kelas ; B 
-- modul ; ORDER BY,FUNGSI AGREGASI, GROUP BY, HAVING

-- mengunakan database
use pti_mart;


-- order by
-- ambil nama produk dan qty dari tabel penjualan urutan qty (quantity)
select nama_produk, qty from tr_penjualan ORDER by qty;

-- ambil nama produk dan qty dari tb penjualan urutan qty dan nama produk
select nama_produk, qty from tr_penjualan order by qty, nama_produk;


-- latihan mandiri 1
-- menampilkan semua kolom dari tabel tr_pejualan dengan mengurutkan  berdasarkan qty dan tgl_transaksi
select * from tr_penjualan order by qty, tgl_transaksi;
-- menampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select * from ms_pelanggan order by nama_pelanggan;
-- menampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat
select * from ms_pelanggan order by alamat;

-- order by asc dan desc
-- ambil nama produk, qty dari tb penjualan urutkan qty besar ke kecil
select nama_produk, qty from tr_penjualan order by qty desc;

-- ambil nama produk, qty dari tabel penjualan urutan qty dan nama produk besar ke kecil
select nama_produk, qty from tr_penjualan order by qty desc, nama_produk desc;

-- latihan mandiri 2
-- menampilkan semua kolom dari tabel tr_pejualan dengan mengurutkan  berdasarkan qty dan tgl_transaksi secara descanding
select * from tr_penjualan order by qty, tgl_transaksi desc;
-- menampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descanding
select * from ms_pelanggan order by nama_pelanggan desc;
-- menampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat secara descanding
select * from ms_pelanggan order by alamat desc;

-- order by dari hasil perhitungan
-- ambil nama produk, qty, harga, harga*qty dari table penjualan urutkan total besar ke kecil
select nama_produk, harga, qty,harga*qty AS total 
from tr_penjualan 
order by qty desc, total desc;


-- latihan mandiri 3 ( jika total tidak bisa, maka harus mengunakan qty*harga)
select nama_produk, harga, qty, diskon_persen, qty*harga AS total_harga, ((qty*harga) - ((diskon_persen/100)*harga))
As total_bayar 
from tr_penjualan
order by qty*harga desc;

-- pengunaan where (hanya menampilkan yang memiliki diskon dan di urutkan dari yang tertinggi
SELECT *FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY harga DESC;


-- latihan mandiri 4
-- 1. Tampilkan semua kolom dari transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi.
SELECT *
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY harga DESC;

-- 2. Tampilkan kolom nama_produk, kuantitas pembelian (qty), dan harga 
-- dari transaksi penjualan yang memiliki harga minimal 100.000 dan diurutkan berdasarkan harga tertinggi.
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000
ORDER BY harga DESC;

-- 3. Tampilkan kolom nama_produk, kuantitas pembelian dan harga 
-- dari transaksi penjualan yang memiliki harga minimal 100.000, dan nama_produk berawalan huruf 'T', 
-- serta diurutkan berdasarkan diskon tertinggi.
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000
  AND nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;







