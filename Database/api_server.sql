-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Sep 2017 pada 02.57
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `api_server`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartu_penduduk`
--

CREATE TABLE IF NOT EXISTS `kartu_penduduk` (
  `nik` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `berlaku_hingga` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kartu_penduduk`
--

INSERT INTO `kartu_penduduk` (`nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `agama`, `status`, `pekerjaan`, `berlaku_hingga`) VALUES
('3201250806548922', 'Rizki', 'Bogor', '1995-01-23', 'laki-laki', 'KP Muara', '5', '4', 'Kopo', 'Cisarua', 'Islam', 'Belum Kawin', 'Pelajar', '2020-09-15'),
('3201250806548923', 'Reza', 'Bogor', '2017-09-05', 'laki-laki', 'Jalan Raya Puncak Cipayung', '005', '004', 'Kopo', 'Cisarua', 'islam', 'belum_kawin', 'Pelakar', '2019-07-25'),
('3201250806548924', 'Andi', 'Jakarta', '1996-08-04', 'laki-laki', 'Jalan raya sudirman, karet', '005', '004', 'kopo', 'cisarua', 'islam', 'menikah', 'Pengusaha', '2022-08-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kartu_penduduk`
--
ALTER TABLE `kartu_penduduk`
 ADD PRIMARY KEY (`nik`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
