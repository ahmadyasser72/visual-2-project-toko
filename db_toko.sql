-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Generation Time: Apr 22, 2024 at 10:25 AM
-- Server version: 11.2.3-MariaDB
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` int(11) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(25) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `tgl_kirim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `kode_barang`, `nama_barang`, `jenis_barang`, `jumlah`, `tgl_kirim`) VALUES
(1, 'barang_A', 'Barang A', 'Alphabet', '666', '2024-04-20');

--
-- Triggers `barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `update stok tiap barang keluar` AFTER INSERT ON `barang_keluar` FOR EACH ROW BEGIN
	IF EXISTS(SELECT * FROM stok WHERE stok.kode_barang = NEW.kode_barang) THEN
    	UPDATE
        	stok,
            (SELECT SUM(jumlah) as total FROM barang_masuk WHERE barang_masuk.kode_barang = NEW.kode_barang) as stok_sum
        	SET
            	stok.stok = stok_sum.total
            WHERE stok.kode_barang = new.kode_barang;
    ELSE
    	INSERT INTO stok VALUES (NEW.kode_barang, NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(25) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `kode_barang`, `nama_barang`, `jenis_barang`, `jumlah`, `tanggal_masuk`) VALUES
(2, 'barang_a', 'Barang A', 'Alphabet', '3', '2024-12-30'),
(3, 'barang_a', 'Barang A', 'Alphabet', '15', '2024-04-17'),
(4, 'barang_a', 'Barang A', 'Alphabet', '999', '2024-04-17');

--
-- Triggers `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `update stok tiap barang masuk` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
	IF EXISTS(SELECT * FROM stok WHERE stok.kode_barang = NEW.kode_barang) THEN
    	UPDATE
        	stok,
            (SELECT SUM(jumlah) as total FROM barang_masuk WHERE barang_masuk.kode_barang = NEW.kode_barang) as stok_sum
        	SET
            	stok.stok = stok_sum.total
            WHERE stok.kode_barang = new.kode_barang;
    ELSE
    	INSERT INTO stok VALUES (NEW.kode_barang, NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `kode_barang` varchar(25) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(25) NOT NULL,
  `stok` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`kode_barang`, `nama_barang`, `jenis_barang`, `stok`) VALUES
('barang_a', 'Barang A', 'Alphabet', '1017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`kode_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
