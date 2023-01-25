-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 12:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_from` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `surat_to` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_terima` timestamp NOT NULL DEFAULT current_timestamp(),
  `perihal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no_image.jpg',
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `tgl_surat`, `surat_from`, `surat_to`, `tgl_terima`, `perihal`, `keterangan`, `image`, `status`, `user_id`, `is_active`) VALUES
(1, '4/BJM/2021', '2021-03-08', 'SMK NEGERI 2 KANDANGAN', 'PIMPINAN PT', '2021-03-07 16:00:00', 'PERMOHONAN BANTUAN', ' PERMOHONAN BANSOS', '4BJM2021.png', '', 0, 1),
(2, '5/BJM/2021', '2021-09-09', 'SMK NEGERI 2 BANJARMASIN', 'PIMPINAN PT', '2021-09-08 16:00:00', 'PERMOHONAN BANTUAN', 'ASAAD ', '5BJM2021.jpg', '', 0, 1),
(3, '6/BJM/2022', '2022-02-12', 'SMK 1 KANDANGAN', 'PIMPINAN CV', '2022-02-11 16:00:00', 'PERMOHONAN DANA', 'PERMOHONAN DANA   ', '6BJM2022.png', '', 0, 1),
(4, '6/BJM/2022', '2022-02-11', 'SMA 2 KANDANGAN', 'PIMPINAN PT', '2022-03-21 16:00:00', 'PERMOHONAN JASA', 'PERMOHONAN JASA DARI PERUSAHAAN', '6BJM2022.jpg', '', 0, 1),
(5, '8/BJM/2023', '2023-01-17', 'MAN 2 KANDANGAN', 'PIMPINAN CV', '2023-04-17 16:00:00', 'PERMOHONAN DANA', 'PERMOHONAN DANA', '8BJM2023.png', '', 0, 1),
(6, '13/BJM/2021', '2022-03-08', 'SMK NEGERI 2 KANDANGAN', 'PIMPINAN PT', '2022-03-20 16:00:00', 'PERMOHONAN BANTUAN', ' PERMOHONAN BANTUAN SOSIAL DAN DANA ', '13BJM2021.jpg', '', 6, 1),
(8, '13/BJB/2021', '2021-08-13', 'SMA 2 KANDANGAN', 'PIMPINAN PT', '2021-09-13 16:00:00', 'PERMOHONAN DANA', 'PERMOHONAN DANA DAN JASA  ', '13BJB2021.jpg', '', 6, 1),
(9, '45/BJM/2021', '2022-12-27', 'SMA 2 KANDANGAN', 'PIMPINAN PT', '2023-01-23 16:00:00', 'PERMOHONAN BANTUAN DANA', 'PERMOHONAN DANA UNTUK SEKOLAH       ', '21BJM2023.png', '', 6, 1),
(10, '21/BJM/2023', '2023-01-03', 'SMK NEGERI 2 KANDANGAN', 'PIMPINAN CV', '2023-02-02 16:00:00', 'PERMOHONAN DANA BANTUAN', 'PERMOHONAN DANA                                       ', '13BJM2021.png', '', 6, 1),
(15, '13/BJB/2021', '2023-01-17', 'SMA 2 KANDANGAN', 'PIMPINAN CV', '2023-01-25 09:18:19', 'PERMOHONAN DANA BANTUAN', 'PERMOHON DANA DAN JASA  ', '13BJB2021.png', '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_template_surat`
--

CREATE TABLE `tb_template_surat` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tujuan_surat` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `perihal` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_template_surat`
--

INSERT INTO `tb_template_surat` (`id`, `nama`, `tujuan_surat`, `tgl_kirim`, `perihal`, `keterangan`, `is_active`) VALUES
(1, 'Rendi', 'PIMPINAN PT', '2023-01-23 07:01:38', 'PERMOHONAN', 'This page is an example of using static navigation. By removing the .sb-nav-fixed class from the body , the top navigation and side navigation will become static on scroll. Scroll down this page to see an example.', 1),
(2, 'Rendi saja', 'PIMPINAN PT', '2021-08-03 00:00:00', 'PERMOHONAN DANA', 'The key thing to notice in the above example is that the second query did not utilize $this->db->from() nor did it pass a table name into the first parameter. The reason this worked is because the query has not been executed using $this->db->insert() which resets value or reset directly using $this->db->reset_query().', 1),
(4, 'Hudaifi', 'PIMPINAN PT', '2023-01-21 00:00:00', 'PERMOHONAN BANTUAN JASA', 'The key thing to notice in the above example is that the second query did not utilize $this->db->from() nor did it pass a table name into the first parameter. The reason this worked is because the query has not been executed using $this->db->insert() which resets value or reset directly using $this->db->reset_query().', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` enum('admin','sekretaris') NOT NULL DEFAULT 'admin',
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='newTable';

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
(4, 'Muhammad', '$2y$10$Tf6ugbWc9CiHE8HVe6fNnu2BKnX78nMJTM/pfHdB3VPBbNsfqCb3G', 'amat@gmail.com', 'Muhammad Aldi Hudaifi', '30', 'admin', '2023-01-25 05:56:41', 1),
(6, 'Ahmad', '$2y$10$bLkxEtngPZj/rpO.ceIQiuHZfcvn3D0rwguyI/hUrMr2Mke52epXC', 'ahmad@gmail.com', 'Ahmad Husaini', '081341414221', 'sekretaris', '2023-01-25 11:37:35', 1),
(7, 'SITI', '$2y$10$raUVblae/OKz4bLomYIDPuJHRBxm4nr7DDhAxP02DRjBqLlo6Q03a', 'siti@gmail.com', 'Siti Nadia', '08313141941', 'admin', '2023-01-25 06:21:20', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_template_surat`
--
ALTER TABLE `tb_template_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_template_surat`
--
ALTER TABLE `tb_template_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
