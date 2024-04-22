SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `db_toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_toko`;

DROP TABLE IF EXISTS `barang_keluar`;
CREATE TABLE `barang_keluar` (
  `id_barang_keluar` int NOT NULL,
  `kode_barang` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_barang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_barang` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_kirim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TRIGGER IF EXISTS `update stok tiap barang keluar`;
DELIMITER $$
CREATE TRIGGER `update stok tiap barang keluar` AFTER INSERT ON `barang_keluar` FOR EACH ROW BEGIN
	IF EXISTS(SELECT * FROM stok WHERE stok.kode_barang = NEW.kode_barang) THEN
    	UPDATE
        	stok,
            (SELECT COALESCE(SUM(jumlah), 0) as total FROM barang_masuk WHERE barang_masuk.kode_barang = NEW.kode_barang) as masuk,
            (SELECT COALESCE(SUM(jumlah), 0) as total FROM barang_keluar WHERE barang_keluar.kode_barang = NEW.kode_barang) as keluar
        	SET
            	stok.stok = masuk.total - keluar.total
            WHERE stok.kode_barang = new.kode_barang;
    ELSE
    	INSERT INTO stok VALUES (NEW.kode_barang, NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    END IF;
END
$$
DELIMITER ;

DROP TABLE IF EXISTS `barang_masuk`;
CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int NOT NULL,
  `kode_barang` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_barang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_barang` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TRIGGER IF EXISTS `update stok tiap barang masuk`;
DELIMITER $$
CREATE TRIGGER `update stok tiap barang masuk` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
	IF EXISTS(SELECT * FROM stok WHERE stok.kode_barang = NEW.kode_barang) THEN
    	UPDATE
        	stok,
            (SELECT COALESCE(SUM(jumlah), 0) as total FROM barang_masuk WHERE barang_masuk.kode_barang = NEW.kode_barang) as masuk,
            (SELECT COALESCE(SUM(jumlah), 0) as total FROM barang_keluar WHERE barang_keluar.kode_barang = NEW.kode_barang) as keluar
        	SET
            	stok.stok = masuk.total - keluar.total
            WHERE stok.kode_barang = new.kode_barang;
    ELSE
    	INSERT INTO stok VALUES (NEW.kode_barang, NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    END IF;
END
$$
DELIMITER ;

DROP TABLE IF EXISTS `stok`;
CREATE TABLE `stok` (
  `kode_barang` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_barang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_barang` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stok` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`);

ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

ALTER TABLE `stok`
  ADD PRIMARY KEY (`kode_barang`);


ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
