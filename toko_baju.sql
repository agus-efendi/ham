-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2021 at 03:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_baju`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `harga` varchar(35) NOT NULL,
  `stok` varchar(35) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`, `gambar`, `id_kategori`) VALUES
(21, 'T-Shirt', '30000', '17', 'baju1.jpg', 8),
(22, 'klambih', '50000', '20', 'baju2.jpg', 8),
(23, 'celana', '60000', '17', 'celana1.jpg', 9),
(24, 'sepatu', '35000', '28', 'sepatu1.jpg', 10),
(25, 'sandal celleng', '5000', '19', 'Sandal-jepit-Keren-pantai-sandal-Hitam-dan-coklat-warna-ukuran-besar.jpg', 11),
(26, 'celana jeans', '80000', '12', 'celana2.jpg', 9),
(27, 'sepatu celleng', '40000', '31', 'sepatu2.jpg', 10),
(28, 'Baju', '25000', '26', 'baju3.jpg', 8),
(29, 'gray shoes', '65000', '25', 'sepatu3.jpg', 10),
(30, 'sandal pink', '20000', '19', 'oasis-sandal--162208Z 5J-front-1-300-0-320-320.jpg', 11),
(31, 'celana binik', '80000', '28', 'celana3.jpg', 9),
(32, 'Lenovo IdeaPad S300', '4000000', '9', 'b6544222-6c7e-4c91-ae01-ce74c36e30d9.png', 12);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(8, 'baju'),
(9, 'celana'),
(10, 'sepatu'),
(11, 'sandal'),
(12, 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `harga_barang` varchar(25) NOT NULL,
  `jumlah_beli` varchar(25) NOT NULL,
  `status` varchar(30) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `total` varchar(25) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `harga_barang`, `jumlah_beli`, `status`, `waktu`, `total`, `id_barang`, `id_pengguna`) VALUES
(49, '4000000', '1', 'proses kirim', 'Friday, 19-10-2018 09:09:05pm', '4000000', 32, 2),
(50, '50000', '1', 'dikirim', 'Monday, 24-08-2020 09:02:38pm', '50000', 22, 1),
(51, '60000', '1', 'dikirim', 'Monday, 24-08-2020 09:02:38pm', '60000', 23, 1),
(52, '50000', '1', 'proses kirim', 'Wednesday, 27-02-2019 09:21:07am', '50000', 22, 1),
(53, '50000', '1', 'lunas', 'Tuesday, 04-08-2020 07:15:37pm', '50000', 22, 7),
(54, '80000', '1', 'lunas', 'Tuesday, 04-08-2020 07:15:37pm', '80000', 26, 7),
(56, '5000', '1', 'lunas', 'Tuesday, 04-08-2020 07:17:28pm', '5000', 25, 8),
(57, '60000', '1', 'proses kirim', 'Monday, 24-08-2020 09:01:57pm', '60000', 23, 2),
(58, '30000', '1', 'proses kirim', 'Monday, 24-08-2020 09:01:57pm', '30000', 21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `jenis_kelamin`, `tgl_lahir`, `username`, `password`, `hak`) VALUES
(1, 'anonymous', 'Laki - Laki', '1992-09-14', 'anonymous', '123', 'pengguna'),
(2, 'google', 'Laki - Laki', '1999-06-09', 'gogel', '321', 'pengguna'),
(6, 'admin online shop', 'Laki - Laki', '1992-09-14', 'admin', 'admin', 'admin'),
(7, 'LG', 'Laki - Laki', '2019-12-04', 'lg', '123456', 'pengguna'),
(8, 'JBL', 'Laki - Laki', '2005-01-09', 'jbl', '123456', 'pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `waktu_transaksi` varchar(50) NOT NULL,
  `subtotal` varchar(25) NOT NULL,
  `status_transaksi` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `waktu_transaksi`, `subtotal`, `status_transaksi`, `alamat`, `no_hp`, `id_pengguna`) VALUES
(45, 'Friday, 19-10-2018 09:09:05pm', '4000000', 'proses kirim', 'Jeu', '083865209181', 2),
(46, 'Monday, 24-08-2020 09:02:38pm', '110000', 'dikirim', 'kjij', '987654', 1),
(47, 'Wednesday, 27-02-2019 09:21:07am', '50000', 'proses kirim', 'kjij', '897897987', 1),
(48, 'Tuesday, 04-08-2020 07:15:37pm', '130000', 'lunas', 'Indonesia', '083850057649', 7),
(49, 'Tuesday, 04-08-2020 07:17:28pm', '5000', 'lunas', 'Indonesia', '08976544455', 8),
(50, 'Monday, 24-08-2020 09:01:57pm', '90000', 'proses kirim', 'qwert4tw', '08976544455', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
