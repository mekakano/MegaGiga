-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 01:26 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `megagiga`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL,
  `KodeBarang` varchar(5) NOT NULL,
  `NamaBarang` varchar(25) NOT NULL,
  `HargaJual` int(20) NOT NULL,
  `HargaBeli` int(20) NOT NULL,
  `Satuan` int(20) NOT NULL,
  `Kategori` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `KodeBarang`, `NamaBarang`, `HargaJual`, `HargaBeli`, `Satuan`, `Kategori`) VALUES
(11, 'a501', 'Ban Dalam Yamaha', 2500000, 1500000, 200000, 'Wheels'),
(12, 'a401', 'Brake', 2000000, 1000000, 78000, 'Racing Parts'),
(13, 'B01', 'Kampas', 300000, 150000, 40000, 'Racing Parts');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `NomorFaktur` int(20) NOT NULL,
  `TanggalFaktur` date NOT NULL,
  `NamaKonsumen` varchar(30) NOT NULL,
  `KodeBarang` varchar(20) NOT NULL,
  `Jumlah` int(2) NOT NULL,
  `HargaSatuan` int(20) NOT NULL,
  `HargaTotal` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12347 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NomorFaktur`, `TanggalFaktur`, `NamaKonsumen`, `KodeBarang`, `Jumlah`, `HargaSatuan`, `HargaTotal`) VALUES
(12345, '2018-04-30', 'Rane Gea Mekakano ', 'a501', 2, 200000, 400000),
(12346, '2018-04-30', 'Iki', 'a401', 2, 78000, 78000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NomorFaktur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `NomorFaktur` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12347;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
