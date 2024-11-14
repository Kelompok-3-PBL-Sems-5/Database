-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2024 at 01:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kel3`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_minat`
--

CREATE TABLE `bidang_minat` (
  `id_bidang_minat` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `bidang_minat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_prodi`
--

CREATE TABLE `data_prodi` (
  `id_prodi` int NOT NULL,
  `nama_prodi` varchar(100) DEFAULT NULL,
  `kode_prodi` varchar(50) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `nidn_user` varchar(20) DEFAULT NULL,
  `jenjang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `id_kompetensi` int NOT NULL,
  `nama_kompetensi` varchar(100) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi_prodi`
--

CREATE TABLE `kompetensi_prodi` (
  `id_kompetensi_prodi` int NOT NULL,
  `id_prodi` int DEFAULT NULL,
  `id_kompetensi` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `tahun_berlaku` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `kode_matkul` varchar(50) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `id_level` int NOT NULL,
  `kode_level` varchar(50) NOT NULL,
  `nama_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `id_user` int NOT NULL,
  `id_level` int DEFAULT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username_user` varchar(50) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `nidn_user` varchar(20) DEFAULT NULL,
  `gelar_akademik` varchar(50) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `foto` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `surat_tugas` varchar(255) DEFAULT NULL,
  `tanggal_diberikan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_data_pelatihan`
--

CREATE TABLE `t_data_pelatihan` (
  `id_pelatihan` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_vendor` int DEFAULT NULL,
  `nama_pelatihan` varchar(100) NOT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `level_pelatihan` varchar(50) DEFAULT NULL,
  `jenis_pendanaan` varchar(50) DEFAULT NULL,
  `bukti_pelatihan` blob,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_data_rekomendasi_program`
--

CREATE TABLE `t_data_rekomendasi_program` (
  `id_program` int NOT NULL,
  `id_vendor` int DEFAULT NULL,
  `jenis_program` varchar(50) DEFAULT NULL,
  `nama_program` varchar(100) DEFAULT NULL,
  `id_matkul` int DEFAULT NULL,
  `id_bidang_minat` int DEFAULT NULL,
  `tanggal_program` date DEFAULT NULL,
  `level_program` varchar(50) DEFAULT NULL,
  `kuota_program` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_data_sertifikasi`
--

CREATE TABLE `t_data_sertifikasi` (
  `id_sertifikasi` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_vendor` int DEFAULT NULL,
  `nama_sertif` varchar(100) NOT NULL,
  `jenis_sertif` varchar(50) DEFAULT NULL,
  `tgl_mulai_sertif` date DEFAULT NULL,
  `tgl_akhir_sertif` date DEFAULT NULL,
  `jenis_pendanaan_sertif` varchar(50) DEFAULT NULL,
  `bukti_sertif` blob,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_peng_pelatihan`
--

CREATE TABLE `t_peng_pelatihan` (
  `id_peng_pel` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `deskripsi` text,
  `anggaran` decimal(10,2) DEFAULT NULL,
  `jadwal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_peng_sertif`
--

CREATE TABLE `t_peng_sertif` (
  `id_peng_ser` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `deskripsi` text,
  `anggaran` decimal(10,2) DEFAULT NULL,
  `jadwal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_periode`
--

CREATE TABLE `t_periode` (
  `id_periode` int NOT NULL,
  `id_sertifikasi` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_vendor`
--

CREATE TABLE `t_vendor` (
  `id_vendor` int NOT NULL,
  `nama_vendor` varchar(100) NOT NULL,
  `alamat_vendor` varchar(255) DEFAULT NULL,
  `telp_vendor` varchar(20) DEFAULT NULL,
  `jenis_vendor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_minat`
--
ALTER TABLE `bidang_minat`
  ADD PRIMARY KEY (`id_bidang_minat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `data_prodi`
--
ALTER TABLE `data_prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD PRIMARY KEY (`id_kompetensi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kompetensi_prodi`
--
ALTER TABLE `kompetensi_prodi`
  ADD PRIMARY KEY (`id_kompetensi_prodi`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_kompetensi` (`id_kompetensi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username_user` (`username_user`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `t_data_pelatihan`
--
ALTER TABLE `t_data_pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `t_data_rekomendasi_program`
--
ALTER TABLE `t_data_rekomendasi_program`
  ADD PRIMARY KEY (`id_program`),
  ADD KEY `id_vendor` (`id_vendor`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_bidang_minat` (`id_bidang_minat`);

--
-- Indexes for table `t_data_sertifikasi`
--
ALTER TABLE `t_data_sertifikasi`
  ADD PRIMARY KEY (`id_sertifikasi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `t_peng_pelatihan`
--
ALTER TABLE `t_peng_pelatihan`
  ADD PRIMARY KEY (`id_peng_pel`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `t_peng_sertif`
--
ALTER TABLE `t_peng_sertif`
  ADD PRIMARY KEY (`id_peng_ser`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `t_periode`
--
ALTER TABLE `t_periode`
  ADD PRIMARY KEY (`id_periode`),
  ADD KEY `id_sertifikasi` (`id_sertifikasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `t_vendor`
--
ALTER TABLE `t_vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_minat`
--
ALTER TABLE `bidang_minat`
  MODIFY `id_bidang_minat` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_prodi`
--
ALTER TABLE `data_prodi`
  MODIFY `id_prodi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kompetensi`
--
ALTER TABLE `kompetensi`
  MODIFY `id_kompetensi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kompetensi_prodi`
--
ALTER TABLE `kompetensi_prodi`
  MODIFY `id_kompetensi_prodi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_matkul` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `id_level` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_data_pelatihan`
--
ALTER TABLE `t_data_pelatihan`
  MODIFY `id_pelatihan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_data_rekomendasi_program`
--
ALTER TABLE `t_data_rekomendasi_program`
  MODIFY `id_program` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_data_sertifikasi`
--
ALTER TABLE `t_data_sertifikasi`
  MODIFY `id_sertifikasi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_peng_pelatihan`
--
ALTER TABLE `t_peng_pelatihan`
  MODIFY `id_peng_pel` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_peng_sertif`
--
ALTER TABLE `t_peng_sertif`
  MODIFY `id_peng_ser` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_periode`
--
ALTER TABLE `t_periode`
  MODIFY `id_periode` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_vendor`
--
ALTER TABLE `t_vendor`
  MODIFY `id_vendor` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidang_minat`
--
ALTER TABLE `bidang_minat`
  ADD CONSTRAINT `bidang_minat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `data_prodi`
--
ALTER TABLE `data_prodi`
  ADD CONSTRAINT `data_prodi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD CONSTRAINT `kompetensi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `kompetensi_prodi`
--
ALTER TABLE `kompetensi_prodi`
  ADD CONSTRAINT `kompetensi_prodi_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `data_prodi` (`id_prodi`) ON DELETE CASCADE,
  ADD CONSTRAINT `kompetensi_prodi_ibfk_2` FOREIGN KEY (`id_kompetensi`) REFERENCES `kompetensi` (`id_kompetensi`) ON DELETE CASCADE,
  ADD CONSTRAINT `kompetensi_prodi_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `m_level` (`id_level`) ON DELETE SET NULL;

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `t_data_pelatihan`
--
ALTER TABLE `t_data_pelatihan`
  ADD CONSTRAINT `t_data_pelatihan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_data_pelatihan_ibfk_2` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE SET NULL;

--
-- Constraints for table `t_data_rekomendasi_program`
--
ALTER TABLE `t_data_rekomendasi_program`
  ADD CONSTRAINT `t_data_rekomendasi_program_ibfk_1` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_data_rekomendasi_program_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_data_rekomendasi_program_ibfk_3` FOREIGN KEY (`id_bidang_minat`) REFERENCES `bidang_minat` (`id_bidang_minat`) ON DELETE SET NULL;

--
-- Constraints for table `t_data_sertifikasi`
--
ALTER TABLE `t_data_sertifikasi`
  ADD CONSTRAINT `t_data_sertifikasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_data_sertifikasi_ibfk_2` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE SET NULL;

--
-- Constraints for table `t_peng_pelatihan`
--
ALTER TABLE `t_peng_pelatihan`
  ADD CONSTRAINT `t_peng_pelatihan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `t_peng_sertif`
--
ALTER TABLE `t_peng_sertif`
  ADD CONSTRAINT `t_peng_sertif_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `t_periode`
--
ALTER TABLE `t_periode`
  ADD CONSTRAINT `t_periode_ibfk_1` FOREIGN KEY (`id_sertifikasi`) REFERENCES `t_data_sertifikasi` (`id_sertifikasi`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_periode_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
