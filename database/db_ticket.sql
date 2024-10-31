-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 12:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `kerata_api` varchar(50) NOT NULL,
  `nomor_ka` varchar(20) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `berangkat` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `kerata_api`, `nomor_ka`, `tujuan`, `berangkat`, `foto`, `keterangan`) VALUES
(1, 'Argowilis', 'ARG001', 'Bandung - Semarang', 'Sabtu, 17/02/23', 'testing', 'Siap Berangkat'),
(3, 'CR400AF', 'ARG002', 'Bandung - Jakarta', 'Minggu, 24/09/23', 'testing', 'Siap Berangkat'),
(5, 'Argowilis', 'ARG001', 'Bandung - Semarang', 'Sabtu, 17/02/23', 'testing', 'Siap Berangkat'),
(6, 'CR400AF', 'ARG002', 'Bandung - Jakarta', 'Minggu, 24/09/23', 'testing', 'Siap Berangkat'),
(7, 'CRH380A', 'ARG003', 'Jakarta - Subang', 'Senin, 25/09/23', 'testing', 'Siap Berangkat'),
(8, 'Argobromo', 'ARG004', 'Surabaya - Semarang', 'Selasa, 26/09/23', 'testing', 'Siap Berangkat'),
(9, 'Argolawu', 'ARG005', 'Solo - Gambir', 'Rabu, 27/09/23', 'testing', 'Siap Berangkat'),
(10, 'Argomuria', 'ARG006', 'Semarang - Gambir', 'Kamis, 28/09/23', 'testing', 'Siap Berangkat'),
(11, 'Argosindoro', 'ARG007', 'Gambir - Semarang', 'Jum\'at, 29/09/23', 'testing', 'Siap Berangkat'),
(12, 'Ciremai', 'ARG008', 'Bandung - Semarang', 'Sabtu, 30/09/23', 'testing', 'Siap Berangkat'),
(13, 'Cikuray', 'ARG 009', 'Garut - Pasar Senen', 'Minggu, 01/10/23', 'testing', 'Siap Berangkat'),
(14, 'Pangrango', 'ARG010', 'Bogor - Sukabumi', 'Senin, 02/10/23', 'testing', 'Siap Berangkat'),
(15, 'Rajabasa', 'ARG011', 'Tajungkarang - Kertapati', 'Selasa, 03/10/23', 'testing', 'Siap Berangkat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kereta`
--

CREATE TABLE `tb_kereta` (
  `kode_type` int(11) NOT NULL,
  `kereta` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kereta`
--

INSERT INTO `tb_kereta` (`kode_type`, `kereta`, `status`) VALUES
(7132, 'ARGO WILIS', 'BAIK'),
(7244, 'ARGO SEMERU', 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_identitas` varchar(25) NOT NULL,
  `kereta` varchar(50) NOT NULL,
  `no_kursi` int(10) NOT NULL,
  `tgl_keberangkatan` date NOT NULL,
  `tujuan_keberangkatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id_pemesanan`, `nama`, `no_identitas`, `kereta`, `no_kursi`, `tgl_keberangkatan`, `tujuan_keberangkatan`) VALUES
(1, 'Hafizh Ahmad A', '3204323105040004', 'ARGO WILIS', 1, '2023-09-22', 'Bandung - Surabaya'),
(2, 'Hafizh Ahmad A', '3204323105040004', 'ARGO WILIS', 1, '2023-09-22', 'Bandung - Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `tingkat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `pass`, `tingkat`) VALUES
(1, 'bladecs', '12345', ''),
(5, 'bladecs86', '12345', 'user'),
(6, 'nikitaaaura17@gmail.com', 'nikita1704', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kereta`
--
ALTER TABLE `tb_kereta`
  ADD PRIMARY KEY (`kode_type`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
