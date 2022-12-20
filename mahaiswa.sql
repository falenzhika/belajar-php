CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    kode CHAR(4) NOT NULL, 
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    id_jurusan INTEGER NOT NULL, 
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL, 
    jenis_kelamin enum ('Laki-laki', 'Perempuan') NOT NULL, 
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL, 
    alamat VARCHAR (255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

--TUGAS 11--

--buat database 
CREATE DATABASE fakultas; 

-- memastikan database fakultas muncul 
show databases;

-- menggunakan data base fakultas 
use fakultas;

-- input tabel jurusan 
CREATE TABLE jurusan (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     kode CHAR(4) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL
    -> );

--input tabel mahasiswa 
CREATE TABLE mahasiswa (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id_jurusan INTEGER NOT NULL,
    ->     nim CHAR(8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin enum ('Laki-laki', 'Perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR(50) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR (255) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
    -> );

-- isi tabel jurusan
 insert into jurusan (kode, nama) values ("APBL", "Sosiologi");
 insert into jurusan (kode, nama) values ("PTIF", "Teknik Elektro");

-- isi tabel mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
    -> values (1,'D0320032', 'Vino', 'Laki-laki', 'Surakarta', '2000-12-23', 'Jl. Kenanga');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
    -> values (1,'D0320033', 'Clara', 'Perempuan', 'Kebumen', '2000-2-12', 'Jl. Pemuda Sukses');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
    -> values (2,'D0320034', 'Nina', 'Perempuan', 'Boyolali', '2000-7-13', 'Jl. Patriot Proklamasi');

-- update dan ganti alamat tabel mahasiswa
update mahasiswa set alamat= "Jl. Pancasila" where id= 2;

-- hapus isi tabel 
delete from mahasiswa where id= 3;