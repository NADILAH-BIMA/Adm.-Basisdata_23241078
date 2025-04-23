-- Nama : dila
-- NIM : 23241078
-- Kelas : c

-- melihat data base yang ada
SHOW DATABASES;

-- memilih database
USE mysql;

-- melihat tabel dalam data mysql
SHOW TABLES;

-- mendeskripsikan sebuah tabel yang di pilih ex, tabel "USER"
DESCRIBE User;

-- melihat isi tabel user, khusu untuk kolom Host,User, dan Password
SELECT Host, User, Password FROM user;