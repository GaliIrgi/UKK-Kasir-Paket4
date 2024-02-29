-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 06:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galiee`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `iddetail` int(11) NOT NULL,
  `idpenjualan` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `jumlahproduk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`iddetail`, `idpenjualan`, `idproduk`, `jumlahproduk`, `subtotal`) VALUES
(1, 1, 0, 1, 10000.00),
(1, 2, 1231321, 1, 5000.00),
(2, 3, 1231321, 1, 5000.00),
(3, 4, 1231321, 1, 5000.00),
(5, 6, 321753812, 1, 2000.00),
(5, 7, 1231321, 2, 5000.00),
(6, 8, 0, 2, 10000.00),
(6, 9, 1231321, 3, 5000.00),
(7, 10, 123683, 1, 12000.00),
(7, 11, 2131233, 1, 20000.00),
(7, 12, 132131241, 1, 5000.00),
(8, 13, 123683, 1, 12000.00),
(9, 14, 132131241, 1, 5000.00),
(9, 15, 2131233, 2, 20000.00),
(10, 17, 132131241, 1, 5000.00),
(11, 18, 123683, 3, 12000.00),
(11, 19, 321753812, 5, 2000.00),
(12, 20, 2131233, 5, 20000.00),
(12, 21, 1231321, 5, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `tlp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `NoMeja`, `tlp`) VALUES
(1, 'galiee', 0, ''),
(2, 'dika', 0, ''),
(3, 'dika', 2, ''),
(4, 'dika', 23, ''),
(5, 'lutfi', 4, ''),
(6, 'aziz', 5, ''),
(7, 'dias', 10, ''),
(8, 'pandu', 12, ''),
(9, 'dapila', 13, ''),
(10, 'riski', 1, ''),
(11, 'rusli', 2, ''),
(12, 'gintot', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `idpenjualan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `idpelanggan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`idpenjualan`, `tanggal`, `total`, `idpelanggan`) VALUES
(1, '2024-02-27', NULL, NULL),
(2, '2024-02-27', NULL, NULL),
(3, '2024-02-27', NULL, NULL),
(4, '2024-02-27', NULL, NULL),
(5, '2024-02-27', NULL, NULL),
(6, '2024-02-27', NULL, NULL),
(7, '2024-02-28', NULL, NULL),
(8, '2024-02-28', NULL, NULL),
(9, '2024-02-28', NULL, NULL),
(10, '2024-02-28', NULL, NULL),
(11, '2024-02-28', NULL, NULL),
(12, '2024-02-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `Terjual` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `nama`, `harga`, `stok`, `Terjual`, `foto`) VALUES
(1, 'ayam goreng', 10000.00, 40, 0, '28022024084204.jpeg'),
(123683, 'baksoo', 12000.00, 94, 5, '28022024015751.jpg'),
(1231321, 'es teh', 5000.00, 45, 5, '27022024013418.jpeg'),
(132131241, 'nasi', 5000.00, 98, 2, '26022024051640.jpg'),
(321753812, 'bakwan', 2000.00, 95, 5, '26022024091232.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(21637126, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Petugas'),
(217638751, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `iddetail` (`iddetail`,`idproduk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `idpelanggan` (`idpelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `idpenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idpenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321753814;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217638761;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
