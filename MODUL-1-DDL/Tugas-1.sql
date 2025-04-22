-- nama ; muh. haeril rapli
-- nim  ; 23241069 --
-- judul; top up game online --


CREATE DATABASE top_up_game_online;
USE top_up_game_online;

-- tabel costumer --
CREATE TABLE CUSTOMER (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    nama_customer VARCHAR(100),
    email VARCHAR(100),
    no_whatsapp VARCHAR(20),
    metode_pembayaran VARCHAR(50)
);

-- tabel game --
CREATE TABLE GAME (
    id_game INT AUTO_INCREMENT PRIMARY KEY,
    nama_game VARCHAR(100),
    kategori VARCHAR(50),
    deskripsi TEXT,
    informasi_game TEXT
);

-- tabel item --
CREATE TABLE ITEM (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    nama_item VARCHAR(100),
    deskripsi_item TEXT,
    harga_item DECIMAL(10,2),
    id_game INT,
    FOREIGN KEY (id_game) REFERENCES GAME(id_game)
);

-- tabel transaksi --
CREATE TABLE TRANSAKSI (
    id_transaksi INT PRIMARY KEY,
    id_customer INT,
    metode_pembayaran VARCHAR(50),
    total_harga INT,
    FOREIGN KEY (id_customer) REFERENCES CUSTOMER(id_customer)
);

-- tabel detail transaksi --
CREATE TABLE DETAIL_TRANSAKSI (
    id_detail INT PRIMARY KEY,
    id_transaksi INT,
    id_item INT,
    jumlah INT,
    subtotal INT,
    FOREIGN KEY (id_transaksi) REFERENCES TRANSAKSI(id_transaksi),
    FOREIGN KEY (id_item) REFERENCES ITEM(id_item)
);


-- tabel relasi --
CREATE TABLE MEMBELI (
    id_customer INT,
    id_item INT,
    tanggal_pembelian DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_customer, id_item),
    FOREIGN KEY (id_customer) REFERENCES CUSTOMER(id_customer),
    FOREIGN KEY (id_item) REFERENCES ITEM(id_item)
);


-- data customer --
INSERT INTO CUSTOMER (nama_customer, email, no_whatsapp, metode_pembayaran)
VALUES
('Risky', 'risky@example.com', '083812345678', 'Gopay'),
('Masud', 'masud@example.com', '081234112233', 'Dana'),
('Sahrul', 'sahrul@example.com', '082244556677', 'OVO'),
('Arbiyan', 'arbiyan@example.com', '085278945612', 'ShopeePay'),
('Ilham', 'ilham@example.com', '089912345678', 'Transfer Bank');

-- data game --
INSERT INTO GAME (nama_game, kategori, deskripsi, informasi_game)
VALUES
('Mobile Legends', 'MOBA', 'Game MOBA populer 5v5.', 'Top up diamond, skin, battle pass'),
('Free Fire', 'Battle Royale', 'Game survival shooter seru.', 'Top up diamond dan bundle'),
('PUBG Mobile', 'Battle Royale', 'Game realistis tembak-tembakan.', 'Top up UC dan Royal Pass'),
('Genshin Impact', 'RPG', 'Game open world RPG anime style.', 'Top up Genesis Crystal'),
('Higgs Domino', 'Casual', 'Game kartu lokal Indonesia.', 'Top up chip dan koin');

-- data item --
INSERT INTO ITEM (nama_item, deskripsi_item, harga_item, id_game)
VALUES
('Diamond 250 ML', 'Top up 250 Diamond MLBB', 35000, 1),
('Diamond 100 FF', 'Top up 100 Diamond Free Fire', 14000, 2),
('UC 300 PUBG', 'Top up 300 Unknown Cash PUBG', 45000, 3),
('Genesis Crystal 300', 'Top up 300 Crystal Genshin Impact', 55000, 4),
('Chip 1B Domino', 'Top up 1 Miliar Chip Higgs Domino', 60000, 5);

-- data transaksi --
INSERT INTO TRANSAKSI (id_transaksi, id_customer, metode_pembayaran, total_harga)
VALUES 
(1, 1, 'Gopay', 35000),
(2, 2, 'Dana', 14000),
(3, 3, 'OVO', 45000),
(4, 4, 'ShopeePay', 55000),
(5, 5, 'Transfer Bank', 60000);

-- data detail transaksi --
INSERT INTO DETAIL_TRANSAKSI (id_detail, id_transaksi, id_item, jumlah, subtotal)
VALUES
(1, 1, 3, 1, 35000), -- Risky beli Diamond 250 ML (id_item = 3)
(2, 2, 2, 1, 14000), -- Mas'ud beli Diamond 100 FF (id_item = 2)
(3, 3, 4, 1, 45000), -- Sahrul beli UC 300 PUBG (id_item = 4)
(4, 4, 5, 1, 55000), -- Arbiyan beli Genesis Crystal (id_item = 5)
(5, 5, 1, 1, 60000); -- Ilham beli Chip 1B Domino (id_item = 1)

-- data relasi --
-- Risky beli item dari game Mobile Legends
INSERT INTO MEMBELI (id_customer, id_item) VALUES (1, 1);

-- Mas'ud beli item dari Free Fire
INSERT INTO MEMBELI (id_customer, id_item) VALUES (2, 2);

-- Sahrul beli item dari PUBG
INSERT INTO MEMBELI (id_customer, id_item) VALUES (3, 3);

-- Arbiyan beli item dari Genshin Impact
INSERT INTO MEMBELI (id_customer, id_item) VALUES (4, 4);

-- Ilham beli item dari Higgs Domino
INSERT INTO MEMBELI (id_customer, id_item) VALUES (5, 5);



-- mengakses isi semua data --
SELECT * FROM customer;
SELECT * FROM game;
SELECT * FROM item;
SELECT * FROM transaksi;
SELECT * FROM detail_transaksi;
SELECT * FROM membeli;











