-- Screening Bina Karir

-- membuat db
CREATE DATABASE binakarir_db;

-- memakai db
USE binakarir_db;

-- TABEL USER
CREATE TABLE MY_USER (
    id bigint NOT NULL,
    username varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

-- TABEL ASOSIASI
CREATE TABLE ASOSIASI (
    id bigint NOT NULL,
    name varchar(255) NOT NULL,
    description text NOT NULL,
    PRIMARY KEY (id)
);

-- TABEL TRANSAKASI
CREATE TABLE TRANSAKSI (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    association_id bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES MY_USER (id),
    FOREIGN KEY (association_id) REFERENCES ASOSIASI (id)
);

-- Tambah data user
INSERT INTO MY_USER (id, username, Email) VALUES
(1, 'User001', 'user001@email.com'),
(2, 'User002', 'user002@email.com'),
(3, 'User003', 'user003@email.com'),
(4, 'User004', 'user004@email.com');

-- Tambah data ASOSIASI
INSERT INTO ASOSIASI (id, name, description) VALUES
(1, 'Asosiasi mahasiswa kedokteran', 'jurusan kedokteran'),
(2, 'Asosiasi mahasiswa informatika', 'jurusan informatika'),
(3, 'Asosiasi mahasiswa sastra', 'jurusan sastra');

INSERT INTO TRANSAKSI (id, user_id, association_id) VALUES
(1, 1, 1),
(2, 2, 2);

SELECT * FROM TRANSAKSI;

-- menampilkan data user mana terdaftar di asosasi apa
SELECT u.username, a.name as asosiasi_name
FROM MY_USER u
JOIN TRANSAKSI t ON u.id = t.user_id
JOIN ASOSIASI a ON t.association_id = a.id;

