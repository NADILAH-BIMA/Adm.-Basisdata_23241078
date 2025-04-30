-- Nama : Nadilah
-- NIM : 23241078
-- Kelas : C
-- Modul : Modul 1 Data Definition Langauge

-- Mebuat Database
CREATE DATABASE pti_mart;

-- Menggunakan DATABASE
USE pti_mart;

-- Membuat Tabel
CREATE TABLE pelanggan(
 id_pelanggan int PRIMARY KEY NOT NULL,
 nama_pelanggan VARCHAR(50),
 alamat VARCHAR(100),
 kota VARCHAR (20),
 no_tlp VARCHAR (15)
);

CREATE TABLE produk(
 id_produk int PRIMARY KEY NOT NULL,
 nama_produk VARCHAR (50),
 kategori VARCHAR (20),
 harga int (17),
 stok int (10)
); 
 
-- membuat tabel dengan foreign key
CREATE TABLE transaksi(
 id_transaksi int PRIMARY KEY NOT NULL,
 tgl_transaksi DATE,
 id_produk int,
 id_pelanggan int,
 qty int,
 total_harga int,
 FOREIGN KEY (id_produk) REFERENCES produk (id_produk),
 FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan)
 );
 
-- mengisi data dalam tabel
INSERT INTO pelanggan(
id_pelanggan, nama_pelanggan, alamat, kota, no_tlp
)VALUES

(009,"sinta", "jl.buyahamka 708", "bima" "081339056874"),
(007,"Dila", "jl.jendral sudirman 208", "kabupaten bima", "085337279718"),
(008,"dil", "jl. sriwijaya 257", "mataram", "082333456278"),
(011,"wiwin", "jl. soekarno hatta", "kota bima","087274528314"),
(019,"Sinta", "jl. arya banjar getas", "ampenan","082337717266");


INSERT INTO produk(
id_produk, nama_produk, kategori, harga, stok
)VALUES
(341,"Bakso", "makanan", "15000", "15"),
(875,"Es jeruk", "minuman", "5000", "14"),
(907,"Es teler", "minuman", "19000", "12"),
(432,"Ayam bakar", "makanan", "20.000", "5"),
(564,"Mie yamin", "makanan", "15.000", "7");

-- cek apakah data ada 
SELECT * FROM pelanggan;
SELECT * FROM produk;

-- mengisi data pada tabel yang ada foreign key
INSERT INTO transaksi
 set id_transaksi = 2708,
	 tgl_transaksi = "2025-05-05",
     id_produk = (
     SELECT id_produk FROM produk
     WHERE id_produk = 341),
     id_pelanggan = (
     SELECT id_pelanggan FROM pelanggan
     WHERE id_pelanggan = 009),
     qty = 1,
     total_harga = (
     SELECT harga FROM produk
     WHERE id_produk = 341) * qty;
     
SELECT * FROM transaksi;
     
 
 