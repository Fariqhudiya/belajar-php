-- Active: 1667823387324@@127.0.0.1@3306
CREATE DATABASE fakultas;

CREATE TABLE jurusan(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
)

CREATE TABLE Mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    id_jurusan INTEGER PRIMARY NOT NULL,
    NIM CHAR(8) NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    Jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
)