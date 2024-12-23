-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 04:29 PM
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
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `iddonhang` int(11) DEFAULT NULL,
  `idmonan` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idmonan`, `soluong`) VALUES
(1, 1, 4, 12),
(2, 1, 1, 3),
(3, 2, 1, 1),
(4, 3, 1, 1),
(5, 4, 4, 12),
(6, 5, 1, 2),
(7, 6, 1, 2),
(8, 7, 1, 3),
(9, 8, 1, 1),
(10, 9, 1, 44),
(11, 10, 1, 433),
(12, 11, 1, 433),
(13, 12, 6, 67);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `ngaytaodon` datetime NOT NULL,
  `idkhachhang` int(11) DEFAULT NULL,
  `idnhanvien` int(11) DEFAULT NULL,
  `tonggiatri` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `ngaytaodon`, `idkhachhang`, `idnhanvien`, `tonggiatri`) VALUES
(1, '2024-12-05 15:15:17', NULL, NULL, 186000.00),
(2, '2024-12-05 15:16:14', NULL, NULL, 10000.00),
(3, '2024-12-05 21:10:04', NULL, NULL, 10000.00),
(4, '2024-12-06 23:21:06', NULL, NULL, 156000.00),
(5, '2024-12-07 13:52:32', NULL, NULL, 20000.00),
(6, '2024-12-07 13:54:53', NULL, NULL, 20000.00),
(7, '2024-12-07 13:55:05', NULL, NULL, 30000.00),
(8, '2024-12-07 13:56:48', NULL, NULL, 10000.00),
(9, '2024-12-07 13:59:13', NULL, NULL, 440000.00),
(10, '2024-12-07 14:03:06', NULL, NULL, 4330000.00),
(11, '2024-12-07 14:03:47', NULL, NULL, 4330000.00),
(12, '2024-12-07 14:04:10', NULL, NULL, 670000.00);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(100) NOT NULL,
  `gioitinh` enum('Nam','Nữ') NOT NULL,
  `ngaysinh` date NOT NULL,
  `sodienthoai` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `tenkhachhang`, `gioitinh`, `ngaysinh`, `sodienthoai`) VALUES
(1, 'Chanh Tuyết', 'Nam', '2000-02-06', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `id` int(11) NOT NULL,
  `tenmonan` varchar(255) NOT NULL,
  `gia` decimal(10,2) NOT NULL,
  `theloai` varchar(100) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`id`, `tenmonan`, `gia`, `theloai`, `hinhanh`, `mota`) VALUES
(1, 'Chanh Tuyết', 10000.00, 'sua-chua', 'assets/images/banh-flan.jpg', ''),
(3, 'Khoai Tây Chiên', 13000.00, 'do-an-vat', 'assets/images/khoai-tay-chien.jpg', ''),
(4, 'Caramen', 13000.00, 'sua-chua', 'assets/images/caramen.jpg', ''),
(5, 'Sữa chua mít', 15000.00, 'hoa-qua', 'assets/images/sua-chua-mit.jpg', ''),
(6, 'Bánh Flan', 10000.00, 'do-an-vat', 'assets/images/banh-flan.jpg', ''),
(7, 'Bánh Mì bơ tỏi', 15000.00, 'do-an-vat', 'assets/images/banh-mi-bo-toi.jpg', ''),
(8, 'Sinh tố xoài', 15000.00, 'sinh-to', 'assets/images/sinh-to-bo-xoai.jpg', ''),
(9, 'Sinh tố chuối', 15000.00, 'sinh-to', 'assets/images/sinh-to-chuoi.jpg', ''),
(10, 'Sinh tố dâu', 15000.00, 'sinh-to', 'assets/images/sinh-to-dau.jpg', ''),
(11, 'Sinh tố mãng cầu', 20000.00, 'sinh-to', 'assets/images/sinh-to-mang-cau.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `name`, `email`, `password`) VALUES
(1, '', 'admin@gmail.com', '1234567'),
(2, 'Long', 'admin1@gmail.com', '$2y$10$UjDJhE1aGuEzQXeEbdjB4.nSYGUDPi6GPybzLF.7AOH6XyqbAVUDK'),
(3, 'Khoai Tây Chiên', 'admin2@gmail.com', '$2y$10$JPPUc1lgluUNmwBU4ReXSOdjqb1nm5MFSTl3iVY2wWSvlXgW5moAu');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `tennhanvien` varchar(255) NOT NULL,
  `vaitro` varchar(100) DEFAULT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gioitinh` enum('Nam','Nữ') NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `luong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `tennhanvien`, `vaitro`, `sodienthoai`, `email`, `gioitinh`, `ngaysinh`, `luong`) VALUES
(1, 'Chanh Tuyết', 'Pha che', '021021542', 'haqt2003@gmail.com', 'Nữ', '2003-12-12', 500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddonhang` (`iddonhang`),
  ADD KEY `idmonan` (`idmonan`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`idmonan`) REFERENCES `monan` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`idnhanvien`) REFERENCES `nhanvien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
