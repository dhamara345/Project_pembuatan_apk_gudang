-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2026 at 11:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` varchar(10) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `alamat_client` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `nama_PIC` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nama_perusahaan`, `alamat_client`, `no_telepon`, `nama_PIC`) VALUES
('CLIENT-01', 'PT. CINTA TERINDAH', 'Jln. Patah Hati', '08213300345', 'Encek'),
('CLIENT-02', 'PT. ANTI LEMOT', 'Jln. Komplek Secepat Kilat Blok 6', '08213300123', 'Bpk Bowo'),
('CLIENT-03', 'PT. INTERNET GACOR ', 'Jln. Pelangi 3 Blok 7A', '08213300111', 'Bu Bila'),
('CLIENT-04', 'PT. FASNET IND', 'Jln. Komplek Wisma 3 Blok VII No 2C', '08213300117', 'Bpk Andi Saputra');

-- --------------------------------------------------------

--
-- Table structure for table `Kabel`
--

CREATE TABLE `Kabel` (
  `id_kabel` varchar(6) NOT NULL,
  `panjang_kabel` varchar(10) NOT NULL,
  `jenis_kabel` varchar(10) NOT NULL,
  `tipe_kabel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Kabel`
--

INSERT INTO `Kabel` (`id_kabel`, `panjang_kabel`, `jenis_kabel`, `tipe_kabel`) VALUES
('KBL-02', '15M', 'LAN', 'Cat6'),
('KBL-03', '1M', 'FO', 'LC-LC'),
('KBL-04', '5M', 'FO', 'LC-LC'),
('KBL-05', '10M', 'FO', 'LC-LC'),
('KBL-06', '10M', 'Console', 'RS-233');

-- --------------------------------------------------------

--
-- Table structure for table `location_rack`
--

CREATE TABLE `location_rack` (
  `id_lokasi` varchar(10) NOT NULL,
  `nama_rack` varchar(20) NOT NULL,
  `kapasitas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location_rack`
--

INSERT INTO `location_rack` (`id_lokasi`, `nama_rack`, `kapasitas`) VALUES
('RCK-01', 'rak 1', '20'),
('RCK-02', 'rak 2', '15'),
('RCK-03', 'rak 3', '25');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Perangkat`
--

CREATE TABLE `Perangkat` (
  `sn_perangkat` varchar(20) NOT NULL,
  `nama_perangkat` varchar(20) NOT NULL,
  `jenis_perangkat` varchar(20) NOT NULL,
  `Dimensi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Perangkat`
--

INSERT INTO `Perangkat` (`sn_perangkat`, `nama_perangkat`, `jenis_perangkat`, `Dimensi`) VALUES
('PRKT-01', 'Juniper MX480', 'Router', '9U'),
('PRKT-02', 'Juniper QFX5210', 'Switch', '2U'),
('PRKT-03', 'Server Dell RD960', 'Server', '1U'),
('PRKT-04', 'Tenda N300', 'Router', '1U');

-- --------------------------------------------------------

--
-- Table structure for table `Register`
--

CREATE TABLE `Register` (
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Register`
--

INSERT INTO `Register` (`nama_lengkap`, `email`, `username`, `password`) VALUES
('David Rafidhon', 'davidrafidhon01@gmail.com', 'david123', 'david123'),
('dhamara', 'dhamarayudha345@gmail.com', 'dhamara123', 'dhamara123'),
('Dhamara Yudha Prakoso', 'dhamaryudha501@gmail.com', 'dhamara345', 'dhamara345');

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `nama_PIC` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `no_telepon`, `nama_PIC`) VALUES
('SUPLR-01', 'PT. PENCARI CINTA SEJATI', 'Kp. Ambon', '089502110704', 'Yanto'),
('SUPLR-02', 'PT. KABEL PUTUS NYAMBUNG', 'Jln. Gedong', '082100074612', 'Jule'),
('SUPLR-03', 'PT. SIGNAL GOIB INDONESIA', 'Jln. Kuyang', '082100074613', 'Aconk'),
('SUPLR-04', 'PT. SUMBER MAKMUR ABADI', 'Jln, Hankam Raya', '082100074617', 'Koh Damar'),
('SUPLR-05', 'PT. MAJU MUNDUR KENA', 'Jln. Deanless', '082100074650', 'Agus Kumis');

-- --------------------------------------------------------

--
-- Table structure for table `Teknisi`
--

CREATE TABLE `Teknisi` (
  `nik_pegawai` varchar(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `departemen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Teknisi`
--

INSERT INTO `Teknisi` (`nik_pegawai`, `nama_pegawai`, `jabatan`, `departemen`) VALUES
('327504501421', 'Aditya', 'Network Operation Centers', 'IT'),
('327504501422', 'Eko', 'Field Engineer', 'IT'),
('327504501423', 'Endang', 'Customer Care', 'IT'),
('327504501424', 'Asep ', 'Network Engineer', 'IT'),
('327504501425', 'Sari', 'Customer Care', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `Transaksi`
--

CREATE TABLE `Transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jenis_transaksi` varchar(20) NOT NULL,
  `sn_perangkat` varchar(20) NOT NULL,
  `id_kabel` varchar(6) NOT NULL,
  `id_supplier` varchar(20) NOT NULL,
  `id_client` varchar(10) NOT NULL,
  `nik_pegawai` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Transaksi`
--

INSERT INTO `Transaksi` (`id_transaksi`, `tgl_transaksi`, `jenis_transaksi`, `sn_perangkat`, `id_kabel`, `id_supplier`, `id_client`, `nik_pegawai`, `username`, `jumlah`, `keterangan`) VALUES
('TRX0001', '2026-05-16', 'Barang Masuk', 'PRKT-01', 'KBL-02', 'SUPLR-01', 'CLIENT-01', '327504501421', 'dhamara345', 10, '-'),
('TRX0002', '2026-05-16', 'Barang Keluar', 'PRKT-02', 'KBL-03', 'SUPLR-02', 'CLIENT-02', '327504501422', 'dhamara345', 4, '-'),
('TRX0003', '2026-05-16', 'Barang Masuk', 'PRKT-01', 'KBL-02', 'SUPLR-01', 'CLIENT-01', '327504501421', 'dhamara345', 10, '-'),
('TRX0004', '2026-05-17', 'Barang Masuk', 'PRKT-04', 'KBL-05', 'SUPLR-03', 'CLIENT-03', '327504501424', 'dhamara345', 5, 'Stock untuk barang baru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `Kabel`
--
ALTER TABLE `Kabel`
  ADD PRIMARY KEY (`id_kabel`);

--
-- Indexes for table `location_rack`
--
ALTER TABLE `location_rack`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Perangkat`
--
ALTER TABLE `Perangkat`
  ADD PRIMARY KEY (`sn_perangkat`);

--
-- Indexes for table `Register`
--
ALTER TABLE `Register`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `Teknisi`
--
ALTER TABLE `Teknisi`
  ADD PRIMARY KEY (`nik_pegawai`);

--
-- Indexes for table `Transaksi`
--
ALTER TABLE `Transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_sn_perangkat` (`sn_perangkat`),
  ADD KEY `fk_id_kabel` (`id_kabel`),
  ADD KEY `fk_id_supplier` (`id_supplier`),
  ADD KEY `fk_id_client` (`id_client`),
  ADD KEY `fk_nik_pegawai` (`nik_pegawai`),
  ADD KEY `fk_username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Transaksi`
--
ALTER TABLE `Transaksi`
  ADD CONSTRAINT `fk_id_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_kabel` FOREIGN KEY (`id_kabel`) REFERENCES `Kabel` (`id_kabel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `Supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_pegawai` FOREIGN KEY (`nik_pegawai`) REFERENCES `Teknisi` (`nik_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sn_perangkat` FOREIGN KEY (`sn_perangkat`) REFERENCES `Perangkat` (`sn_perangkat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
