-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2023 pada 05.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `username`, `password`, `no_telp`, `level`) VALUES
(1, 'Aini', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '08580602131', 1),
(10, 'aini', 'petugas1', '827ccb0eea8a706c4c34a16891f84e7b', '082338990881', 2),
(11, 'Anjayni', 'petugas2', '827ccb0eea8a706c4c34a16891f84e7b', '085770293556', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_masyarakat`
--

CREATE TABLE `tbl_masyarakat` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_masyarakat`
--

INSERT INTO `tbl_masyarakat` (`nik`, `nama`, `username`, `password`, `no_telp`, `aktif`) VALUES
('2019278354617829', 'kurnia', 'alfin', '827ccb0eea8a706c4c34a16891f84e7b', '082341562782', 1),
('26374832726374837', 'sukardi', 'masya1', '827ccb0eea8a706c4c34a16891f84e7b', '083487659263', 1),
('2037274882325372', 'masyarakat', 'masyarakat', 'e10adc3949ba59abbe56e057f20f883e', '082447671624', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengaduan`
--

CREATE TABLE `tbl_pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(20) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengaduan`
--

INSERT INTO `tbl_pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1617611599, '2023-02-16', '2019278354617829', 'Banjir Di Dusun rowo tapen', 'anjir.jpeg', 0),
(1677298576, '2021-12-06', '2019278354617829', 'Erupsi Gunung Semeru', 'file__pelaporan1.png', 0),
(1677629457, '2023-03-01', '2019278354617829', 'Angin Kencang Di Wilayah Jember', 'file_laporan.jpeg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tanggapan`
--

CREATE TABLE `tbl_tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_tanggapan`
--

INSERT INTO `tbl_tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_admin`) VALUES
(1617612457, 1617611599, '2021-04-05', 'Ok Gan tim banser dalam perjalanan', 1),
(1677633630, 1677298576, '2023-03-01', 'Berdasarkan data Badan Nasional Penanggulangan Bencana (BNPB) per Senin, 6 Desember 2021, pukul 20.15 WIB, awan panas guguran Gunung Semeru mengakibatkan kerusakan di sektor permukiman, pendidikan, maupun sarana dan prasarana. Posko masih terus melakukan pemutakhiran terhadap dampak kerugian material, dengan data sementara rumah terdampak 2.970 unit, fasilitas pendidikan 38 unit dan jembatan (Jembatan Gladak Perak) putus 1 unit.', 10),
(1677634542, 1677629457, '2023-03-01', 'Oke Akan Segera saya Proses, Tim Masih Dalam Perjalanan', 1),
(1677805794, 1617611599, '2023-03-03', 'Apabila ada Korban jiwa Amankan terlebih dahulu', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `tbl_tanggapan`
--
ALTER TABLE `tbl_tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
