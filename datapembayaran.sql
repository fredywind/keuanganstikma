-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 01:36 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datapembayaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `Nim` varchar(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Jurusan` enum('Teknik Informatika','Arsitek','Komuter Multimedia') NOT NULL,
  `Jalur` enum('Beasiswa','Nonbeasiswa') NOT NULL,
  `Kelas` enum('Reguler','Karyawan') NOT NULL,
  `Gelombang Pendaftaran` enum('Satu','Dua','Tiga') NOT NULL,
  `Status` enum('Pindahan','Baru') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`Nim`, `Nama`, `Jurusan`, `Jalur`, `Kelas`, `Gelombang Pendaftaran`, `Status`) VALUES
('17112394', 'Mawahda', 'Teknik Informatika', 'Beasiswa', 'Reguler', 'Satu', 'Baru');

-- --------------------------------------------------------

--
-- Table structure for table `komponenpembayaran`
--

CREATE TABLE `komponenpembayaran` (
  `Pendaftaran` varchar(20) NOT NULL,
  `Ordik` varchar(20) NOT NULL,
  `Heregistrasi` varchar(20) NOT NULL,
  `DKM` varchar(20) NOT NULL,
  `SPP` varchar(20) NOT NULL,
  `DPP` varchar(20) NOT NULL,
  `UTS` varchar(20) NOT NULL,
  `UAS` varchar(20) NOT NULL,
  `KKN` varchar(20) NOT NULL,
  `Skripsi` varchar(20) NOT NULL,
  `Sempro` varchar(20) NOT NULL,
  `Wisuda` varchar(20) NOT NULL,
  `SP` varchar(20) NOT NULL,
  `Biaya Perawatan Ijazah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`Nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
