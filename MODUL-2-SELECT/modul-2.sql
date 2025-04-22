-- Nama		; Muh. Haeril Rapli --
-- NIM		; 23241069 --
-- Kelas	; B --
-- Modul	: 2 (SELECT) --

-- membuat database --
CREATE DATABASE pti_mart;

-- mengunakan database --
USE pti_mart;

-- cek kolom dalam table --
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- SELECT
-- mengunakan select untuk 1 tabel
-- mengambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- mengambil lebih dari satu kolom dari sebuah tabel
SELECT nama_produk, harga FROM ms_produk;

-- mengambil semua kolom dari sebuah tabel
SELECT * FROM ms_produk;

-- latihan
-- mengambil kode produk dan nama produk dari tabel produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- mengambil seluruh kolom dari tabel penjualan
 SELECT * FROM tr_penjualan;
 
 -- PREFIX dan ALIAS
 -- PREFIX , bagian objek database
 -- mengunakan nama prefix nama tabel untuk kolom nama_produk dari tabel produk
 SELECT ms_produk. nama_produk FROM ms_produk;
 
 -- mengumnakan nama database dan tabel sebagai prfix untuk kolom nama_produk
 SELECT pti_mart. ms_produk. nama_produk FROM ms_produk;
 
 -- ALIAS, nama sementara untuk objek database asli
 -- menganti sementara kolom nama produk dengan ALIAS 
 SELECT nama_produk AS np FROM ms_produk;
 SELECT nama_produk np FROM ms_produk;
 
 -- mnganti sementara tabel dengan alias
 SELECT nama_produk FROM ms_produk AS msp;
 
 -- kombinasi prefix dan alias
 SELECT msp.nama_produk from ms_produk AS msp;
 
 
 -- case 1
 SELECT nama_pelanggan, alamat from ms_pelanggan;
 
 -- case 2
SELECT nama_produk, harga FROM ms_produk;
 
 


