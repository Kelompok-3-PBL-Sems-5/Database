-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2024 at 10:03 AM
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
-- Database: `sertifikasidosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_minat`
--

CREATE TABLE `bidang_minat` (
  `id_bidang_minat` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_dabim` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bidang_minat`
--

INSERT INTO `bidang_minat` (`id_bidang_minat`, `id_user`, `id_dabim`, `updated_at`, `created_at`) VALUES
(1, 4, 1, '2024-12-10 21:21:09', '2024-11-25 07:49:18'),
(2, 4, 2, '2024-12-10 21:21:51', '2024-11-29 07:06:43'),
(3, 5, 2, '2024-12-10 21:22:13', '2024-12-08 09:39:28'),
(4, 5, 2, '2024-12-10 21:22:20', '2024-12-08 09:39:43'),
(5, 6, 3, '2024-12-10 21:22:30', '2024-12-08 09:40:02'),
(6, 7, 2, '2024-12-10 21:22:41', '2024-12-08 09:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `data_bidang_minat`
--

CREATE TABLE `data_bidang_minat` (
  `id_dabim` int NOT NULL,
  `nama_dabim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_bidang_minat`
--

INSERT INTO `data_bidang_minat` (`id_dabim`, `nama_dabim`, `updated_at`, `created_at`) VALUES
(1, 'Teknologi Informasi', NULL, '2024-12-09 08:19:27'),
(2, 'Ekonomi', NULL, '2024-12-09 08:19:27'),
(3, 'Pendidikan', NULL, '2024-12-09 08:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `data_mata_kuliah`
--

CREATE TABLE `data_mata_kuliah` (
  `id_damat` int NOT NULL,
  `nama_damat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kode_damat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_mata_kuliah`
--

INSERT INTO `data_mata_kuliah` (`id_damat`, `nama_damat`, `kode_damat`, `updated_at`, `created_at`) VALUES
(1, 'Pemrograman Web', 'PW101', NULL, '2024-12-09 08:19:12'),
(2, 'Basis Data', 'BD202', NULL, '2024-12-09 08:19:12'),
(3, 'Jaringan Komputer', 'JK303', NULL, '2024-12-09 08:19:12');

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
  `jenjang` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_prodi`
--

INSERT INTO `data_prodi` (`id_prodi`, `nama_prodi`, `kode_prodi`, `id_user`, `nidn_user`, `jenjang`, `updated_at`, `created_at`) VALUES
(1, 'Rekayasa Teknologi Informasi', 'RTI', 2, '1233', 'S2', '2024-12-07 20:57:16', '2024-11-25 07:59:31'),
(2, 'Sistem Informasi Bisnis', 'SIB', 1, NULL, 'D4', '2024-12-07 20:57:57', '2024-11-28 21:49:07'),
(3, 'Teknik Informatika', 'TI', NULL, NULL, 'D4', '2024-12-07 20:58:23', '2024-12-07 20:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `id_kompetensi` int NOT NULL,
  `nama_kompetensi` varchar(100) NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_prodi` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kompetensi`
--

INSERT INTO `kompetensi` (`id_kompetensi`, `nama_kompetensi`, `id_user`, `id_prodi`, `updated_at`, `created_at`) VALUES
(1, 'fdsfds', NULL, 2, '2024-12-08 19:59:24', '2024-12-08 19:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_damat` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_matkul`, `id_user`, `id_damat`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2024-12-10 21:04:36', '2024-11-29 14:17:49'),
(2, 1, 2, '2024-12-10 21:04:41', '2024-11-29 07:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `id_level` int NOT NULL,
  `kode_level` varchar(50) NOT NULL,
  `nama_level` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`id_level`, `kode_level`, `nama_level`, `updated_at`, `created_at`) VALUES
(1, 'ADM', 'Administrator', NULL, '2024-11-25 10:44:36'),
(2, 'PIMJUR', 'Pimpinan Jurusan', NULL, '2024-11-25 10:44:36'),
(3, 'DSN', 'Dosen', NULL, '2024-11-25 10:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `id_user` int NOT NULL,
  `id_level` int DEFAULT NULL,
  `id_prodi` int DEFAULT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nidn_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gelar_akademik` varchar(50) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`id_user`, `id_level`, `id_prodi`, `nama_user`, `username`, `password`, `nidn_user`, `gelar_akademik`, `email_user`, `foto`, `updated_at`, `created_at`) VALUES
(1, 1, NULL, 'Administrator Wahyu Pratama', 'admin001', '$2y$12$rwC9nlziDAYwU1v8bKaHEuVkpvquXJ/s6ObgD2I3CJChbJCj5hdsG', '12345', 'S.ST', 'admin@gmail.com', 'image/profile/1733634633.jpeg', '2024-12-07 22:10:46', '2024-11-25 10:44:56'),
(2, 1, NULL, 'Administrator Siti Marlina', 'admin002', '$2y$12$ZVpvY3tscQsF7mn4QxNhWeV4im94/IQ4yLHzgzHPyIa6gkl46f/tu', NULL, NULL, NULL, '', '2024-12-07 22:11:10', '2024-11-25 04:18:11'),
(3, 1, NULL, 'Administrator Hendra Saputra', 'admin003', '$2y$12$cP1MJ48ZTdR2rMhXmX.WVukGe0TazDhTBxng6q157GbDnOmkmruVe', NULL, NULL, NULL, '', '2024-12-07 22:11:23', '2024-12-08 04:01:53'),
(4, 3, 1, 'Dr. Ahmad Rizky, M.Pd.', 'dosen001', '$2y$12$tJhfaRD1t8YZGZxvJx5Npe5dj4wkS8rDUEWFbeG8rHK5k6kkmdday', '100101', NULL, 'rizky@univ.ac.id', '', '2024-12-07 22:15:40', '2024-12-08 04:01:53'),
(5, 3, 2, 'Dr. Siti Aisyah, M.T.', 'dosen002', '$2y$12$B1XWey/JUwGNJCLvtACNVuIT/boQdFQXM39/Hup1azrp/uoYhcybu', '100102', NULL, 'aisyah@univ.ac.id', '', '2024-12-07 22:15:47', '2024-12-08 04:01:53'),
(6, 3, 2, 'Dr. Budi Santoso, M.Pd.', 'dosen003', '$2y$12$m0y915HoZT5JczcYXkVXA.YyJvJvyn9ANyM/1Dh4DYJ.fzXTl6C2q', '100103', NULL, 'budi@univ.ac.id', '', '2024-12-07 22:14:40', '2024-12-08 04:01:53'),
(7, 3, 3, 'Dr. Lina Hermawati, M.Sc.', 'dosen004', '$2y$12$SoDaRNm4R2n9VTCQy4bxz.hyMUDKG8xyac8pxODzkzn5jMbhmDv7C', '100104', NULL, 'lina@univ.ac.id', '', '2024-12-07 22:15:55', '2024-12-08 04:01:53'),
(8, 3, 2, 'Dr. Agus Pranoto, M.A.', 'dosen005', '$2y$12$PDErnICag5MABI9rBS125eFsukWLIuIwrqfeFugYTqtVPIKhg7OTC', '100105', NULL, 'agus@univ.ac.id', '', '2024-12-07 22:16:11', '2024-12-08 04:01:53'),
(9, 3, 1, 'Dr. Sulastri Nuraini, M.Kom.', 'dosen006', '$2y$12$2YNySBmwwExEebFRxlzHU.FfAmw5Oq3I4N4op.UMrdUZzNd3FdraO', '100106', NULL, 'sulastri@univ.ac.id', '', '2024-12-07 22:16:19', '2024-12-08 04:01:53'),
(10, 3, 1, 'Dr. Yudi Firmansyah, M.T.', 'dosen007', '$2y$12$1kI7xbEg3KTzsuanIm9kCOcTC63SMmgFQtrQyao.GMlwgg36KpqUu', '100107', NULL, 'yudi@univ.ac.id', '', '2024-12-07 22:16:26', '2024-12-08 04:01:53'),
(11, 3, 2, 'Dr. Anita Suharti, M.Hum.', 'dosen008', '$2y$12$PtuwwAYywm3qMUqgzYHkc.dvsjJss6/A8l8OTgsVP.TronbbEy0Tq', '100108', NULL, '', '', '2024-12-07 22:16:32', '2024-12-08 04:01:53'),
(12, 3, 3, 'Dr. Hendro Wijaya, M.Si.', 'dosen009', '$2y$12$XcarNBsmDVPNP9zyOmIqNun0bnUMY9jeu5GV0A8Q0TgvSW5ZmVQKu', '100109', NULL, 'hendro@univ.ac.id', '', '2024-12-07 22:16:39', '2024-12-08 04:01:53'),
(13, 3, 1, 'Dr. Rini Kurniasari, M.T.', 'dosen010', '$2y$12$LmodWEPtWI/aAmDx6YtXQuzn.C8JHLW9XJdTdAcx0QThFQSp6OvZG', '100110', NULL, 'rini@univ.ac.id', '', '2024-12-07 22:16:56', '2024-12-08 04:01:53'),
(14, 3, 3, 'Dr. Rahayu Hidayati, M.Sc.', 'dosen011', '$2y$12$ogyXOBEUU6lComySPysXeugljUBJ31AGJ9wIa6/FNKQ0hIypnVKzS', '100111', NULL, 'rahayu@univ.ac.id', '', '2024-12-07 22:17:49', '2024-12-08 04:01:53'),
(15, 3, 3, 'Dr. Fahmi Andrian, M.Kom.', 'dosen012', '$2y$12$mvdD9mTtSzORHap1THwt0uqRFJcfcJN3UpY3DY.yLWoaNX.mUkyhy', '100112', NULL, 'fahmi@univ.ac.id', '', '2024-12-07 22:17:57', '2024-12-08 04:01:53'),
(16, 3, 1, 'Dr. Nurul Azizah, M.Hum.', 'dosen013', '$2y$12$edPbJFr8FNjzhA1ZUOAOWuOn7NHN1FbCkzCDiGXIsZLZLGeFJ/LgW', '100113', NULL, 'nurul@univ.ac.id', '', '2024-12-07 22:18:04', '2024-12-08 04:01:53'),
(17, 3, 2, 'Dr. Iskandar Putra, M.Sc.', 'dosen014', '$2y$12$p.KvGVCkyI1vg2NYqvgJxueLJ6aSrtdmbNBw/lfQYTTDy0E/RLekS', '100114', NULL, 'iskandar@univ.ac.id', '', '2024-12-07 22:18:10', '2024-12-08 04:01:53'),
(18, 3, 3, 'Dr. Wahyu Sugeng, M.Pd.', 'dosen015', '$2y$12$IQ8MiUIy5aGrig3KBgTIxuh1tXeXuiASwXPvJrzUx/aj1Mo6gRhx2', '100115', NULL, 'wahyu@univ.ac.id', '', '2024-12-07 22:18:17', '2024-12-08 04:01:53'),
(19, 3, 1, 'Dr. Dian Kusuma, M.Kom.', 'dosen016', '$2y$12$h/ZFiuBzkwszUm.QOiI/8.AJVfZxquDBeFfuRlJ6qK6d9TWjJeJRm', '100116', NULL, 'dian@univ.ac.id', '', '2024-12-07 22:18:25', '2024-12-08 04:01:53'),
(20, 3, 1, 'Dr. Bambang Sugiarto, M.T.', 'dosen017', '$2y$12$Ad7Eejv1jHJwDK8OUUqluOL2wl6QnrTL3NP4i5HnW3cgsdEqgvu3e', '100117', NULL, 'bambang@univ.ac.id', '', '2024-12-07 22:18:32', '2024-12-08 04:01:53'),
(21, 3, 2, 'Dr. Sri Wulandari, M.Si.', 'dosen018', '$2y$12$y4XNMJOGJJvZ5I1P0YEC5.Wg/aK3AGwi8HXIFVN7XLP0TgMIm.19y', '100118', NULL, 'sri@univ.ac.id', '', '2024-12-07 22:18:40', '2024-12-08 04:01:53'),
(22, 3, 3, 'Dr. Taufiq Hidayat, M.Pd.', 'dosen019', '$2y$12$zOGT0rGGEpAmHjoCRVzFbubzmSpuu31Zd5lsMJcODBepXZEE3qz0m', '100119', NULL, 'taufiq@univ.ac.id', '', '2024-12-07 22:18:47', '2024-12-08 04:01:53'),
(23, 3, 1, 'Dr. Rahmawati Yuliani, M.A.', 'dosen020', '$2y$12$cudU8pfgC8yXp0bdrw1J3.plnfSFN09S1VcB81N5HeiGh8PrC8pmq', '100120', NULL, 'rahmawati@univ.ac.id', '', '2024-12-07 22:18:53', '2024-12-08 04:01:53'),
(24, 3, 2, 'Dr. Arif Nugroho, M.Sc.', 'dosen021', '$2y$12$rKTbvhVnnYjVgml.tHwqgOn8bKC9Go.P6vlROseohGBgwUmr07lpa', '100121', NULL, 'arif@univ.ac.id', '', '2024-12-07 22:19:47', '2024-12-08 04:01:53'),
(25, 3, 1, 'Dr. Widiya Ratnasari, M.T.', 'dosen022', '$2y$12$zQYPUZtyvD3qRhJUb2XuzexL8dykKlXys93EiCoBusLP26lhvWJ0.', '100122', NULL, 'widiya@univ.ac.id', '', '2024-12-07 22:19:15', '2024-12-08 04:01:53'),
(26, 3, 3, 'Dr. Faisal Hamidi, M.Si.', 'dosen023', '$2y$12$zD.35cLyRHc.kv38FHtHneTayz9H5mxTuGS6gUGMAgzavtc6KDoyO', '100123', NULL, 'faisal@univ.ac.id', '', '2024-12-07 22:19:10', '2024-12-08 04:01:53'),
(27, 3, 1, 'Dr. Astuti Kurniasih, M.T.', 'dosen024', '$2y$12$vM0bQKinLZoFXDJOZmfqme9k06Yi9Uvt6toyN87sjMmHR1w58S7Mm', '100124', NULL, 'astuti@univ.ac.id', '', '2024-12-07 22:19:04', '2024-12-08 04:01:53'),
(28, 2, 1, 'Pimpinan Jurusan Andi Suryanto, M.Si.', 'pimjur001', '$2y$12$uNZ3aaWPGcWEqOfpBvciAul8/9SQFYfflT2E4CN5Q.tuJfA2NjpwS', '200101', NULL, 'andi@univ.ac.id', '', '2024-12-07 22:20:16', '2024-12-08 04:01:53'),
(29, 2, 2, 'Pimpinan Jurusan Rina Damayanti, M.Pd.', 'pimjur002', '$2y$12$pytDSacehFblcQqXbqLNve8JxN0AeyTVPytQm60cn6kTH4AyEMxoi', '200102', NULL, 'rina@univ.ac.id', '', '2024-12-07 22:14:55', '2024-12-08 04:01:53'),
(30, 2, 3, 'Pimpinan Jurusan Agus Darmawan, M.A.', 'pimjur003', '$2y$12$w61lALbXqTnMYUuTvDSGRe5JTUwiUxhr7t2jVajjAYss1mzG6wv4C', '200103', NULL, 'agusdj@univ.ac.id', '', '2024-12-07 22:20:23', '2024-12-08 04:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_pelatihan`
--

CREATE TABLE `pengajuan_pelatihan` (
  `id_pengpelatihan` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `id_vendor` int DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `relevansi` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `dana` varchar(50) DEFAULT NULL,
  `implementasi` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `komentar` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_sertifikasi`
--

CREATE TABLE `pengajuan_sertifikasi` (
  `id_pengsertifikasi` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `id_vendor` int DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `relevansi` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `dana` varchar(50) DEFAULT NULL,
  `implementasi` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `komentar` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `surat_tugas` varchar(255) DEFAULT NULL,
  `tanggal_diberikan` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_data_pelatihan`
--

CREATE TABLE `t_data_pelatihan` (
  `id_pelatihan` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_vendor` int DEFAULT NULL,
  `id_bidang_minat` int DEFAULT NULL,
  `id_matkul` int DEFAULT NULL,
  `id_jenpel` int DEFAULT NULL,
  `nama_pelatihan` varchar(100) NOT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `level_pelatihan` varchar(50) DEFAULT NULL,
  `jenis_pendanaan` varchar(50) DEFAULT NULL,
  `bukti_pelatihan` blob,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_data_pelatihan`
--

INSERT INTO `t_data_pelatihan` (`id_pelatihan`, `id_user`, `id_vendor`, `id_bidang_minat`, `id_matkul`, `id_jenpel`, `nama_pelatihan`, `tgl_mulai`, `tgl_akhir`, `level_pelatihan`, `jenis_pendanaan`, `bukti_pelatihan`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 1, 1, 8, 'Pelatihan Manajemen ISO 9001', '2024-01-01', '2025-01-01', 'Nasional', 'Mandiri', 0x62756b74695f70656c61746968616e5f312e706466, 'Aktif', '2024-12-09 00:29:35', '2024-11-20 09:59:44'),
(2, 1, 3, 1, 2, 8, 'Pelatihan ISO 14001 Environmental Management', '2023-06-01', '2024-06-01', 'Nasional', 'Mandiri', 0x62756b74695f70656c61746968616e5f322e706466, 'Aktif', '2024-12-09 00:29:44', '2024-11-20 09:59:44'),
(8, 2, 2, 1, 1, 6, 'csXsX', '2024-12-05', '2024-12-28', 'Nasional', 'Mandiri', 0x65666566636465776463, NULL, '2024-12-09 00:30:41', '2024-12-09 00:30:41');

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
  `kuota_program` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_data_rekomendasi_program`
--

INSERT INTO `t_data_rekomendasi_program` (`id_program`, `id_vendor`, `jenis_program`, `nama_program`, `id_matkul`, `id_bidang_minat`, `tanggal_program`, `level_program`, `kuota_program`, `updated_at`, `created_at`) VALUES
(1, 1, 'Sertifikasi', 'kjasfdasd', 1, 1, '2024-12-17', 'Nasional', '2', '2024-12-08 21:25:16', '2024-12-08 21:25:16'),
(2, 2, 'Sertifikasi', 'kjashdfas', 1, 2, '2024-12-19', 'Internasional', '231', '2024-12-08 21:28:17', '2024-12-08 21:28:17'),
(3, 2, 'Sertifikasi', 'sfsf', 1, 2, '2024-12-12', 'Nasional', '77', '2024-12-08 21:34:30', '2024-12-08 21:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `t_data_sertifikasi`
--

CREATE TABLE `t_data_sertifikasi` (
  `id_sertifikasi` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_vendor` int DEFAULT NULL,
  `id_bidang_minat` int DEFAULT NULL,
  `id_matkul` int DEFAULT NULL,
  `nama_sertif` varchar(100) NOT NULL,
  `jenis_sertif` varchar(50) DEFAULT NULL,
  `tgl_mulai_sertif` date DEFAULT NULL,
  `tgl_akhir_sertif` date DEFAULT NULL,
  `jenis_pendanaan_sertif` varchar(50) DEFAULT NULL,
  `bukti_sertif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_data_sertifikasi`
--

INSERT INTO `t_data_sertifikasi` (`id_sertifikasi`, `id_user`, `id_vendor`, `id_bidang_minat`, `id_matkul`, `nama_sertif`, `jenis_sertif`, `tgl_mulai_sertif`, `tgl_akhir_sertif`, `jenis_pendanaan_sertif`, `bukti_sertif`, `status`, `updated_at`, `created_at`) VALUES
(24, 1, 2, 1, 1, 'asd', 'Profesi', '2024-12-04', '2024-12-05', 'Eksternal', 'xvzxc', 'Aktif', '2024-12-08 09:20:01', '2024-12-03 21:17:08'),
(25, 1, 1, 1, 1, 'uikty', 'Profesi', '2024-12-04', '2024-12-21', 'Mandiri', 'asfcaf', 'Aktif', '2024-12-08 09:20:14', '2024-12-04 18:06:15'),
(26, 1, 2, 1, 1, 'zxSX', 'Profesi', '2024-12-01', '2024-12-04', 'Mandiri', 'https://www.figma.com/community/file/1257291851824226725/pweb', NULL, '2024-12-08 09:20:28', '2024-12-04 18:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `t_jenis_pelatihan`
--

CREATE TABLE `t_jenis_pelatihan` (
  `id_jenpel` int NOT NULL,
  `nama_jenpel` varchar(50) NOT NULL,
  `deskripsi_jenpel` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_jenis_pelatihan`
--

INSERT INTO `t_jenis_pelatihan` (`id_jenpel`, `nama_jenpel`, `deskripsi_jenpel`, `updated_at`, `created_at`) VALUES
(1, 'Data Science', 'Fokus pada teknik analisis data, machine learning, dan visualisasi data menggunakan Python dan Apache Hadoop. Meningkatkan kemampuan dalam menganalisis data besar dan mengambil wawasan penting dari informasi tersebut.', '2024-12-08 04:45:43', '2024-12-08 04:45:43'),
(2, 'Web Development', 'Mempelajari cara membangun aplikasi web menggunakan Laravel dan Vue.js atau React. Mencakup pengembangan dan pemeliharaan situs web yang responsif dan fungsional.', '2024-12-08 04:45:52', '2024-12-08 04:45:52'),
(3, 'Jaringan', 'Menyediakan pengetahuan tentang manajemen jaringan, konfigurasi, dan pemecahan masalah. Memastikan keamanan dan kinerja jaringan di kampus.', '2024-12-08 04:46:01', '2024-12-08 04:46:01'),
(4, 'Keamanan (Keamanan Siber)', 'Memberikan pemahaman tentang teknik dan alat keamanan siber, serta manajemen risiko untuk melindungi data dan sistem dari ancaman digital.', '2024-12-08 04:46:16', '2024-12-08 04:46:16'),
(5, 'Mobile Development', 'Mengajarkan pengembangan aplikasi mobile untuk Android (menggunakan Kotlin) atau iOS (menggunakan Swift). Meningkatkan kemampuan menciptakan aplikasi di perangkat mobile.', '2024-12-08 04:46:23', '2024-12-08 04:46:23'),
(6, 'Cloud Computing', 'Mengenalkan konsep dan teknologi cloud computing, termasuk layanan AWS seperti EC2 dan S3. Memfokuskan pada manajemen cloud untuk fleksibilitas dan skalabilitas TI kampus.', '2024-12-08 04:46:33', '2024-12-08 04:46:33'),
(7, 'Internet of Things (IoT)', 'Mempelajari desain dan implementasi perangkat IoT menggunakan Arduino atau Raspberry Pi. Mengembangkan proyek IoT yang inovatif di kampus.', '2024-12-08 04:46:43', '2024-12-08 04:46:43'),
(8, 'Blockchain', 'Membahas teknologi blockchain, pembuatan kontrak pintar, dan implementasi aplikasi berbasis blockchain. Meningkatkan transparansi dan keamanan sistem informasi.', '2024-12-08 04:46:50', '2024-12-08 04:46:50'),
(9, 'UI/UX Design', 'Berfokus pada desain antarmuka pengguna (UI) dan pengalaman pengguna (UX) untuk aplikasi web dan mobile. Meningkatkan pengalaman pengguna dengan prinsip-prinsip desain yang baik.', '2024-12-08 04:46:58', '2024-12-08 04:46:58'),
(10, 'Manajemen', 'Mempelajari tata kelola teknologi informasi, termasuk implementasi standar seperti COBIT untuk meningkatkan kontrol operasional dan efektivitas manajemen.', '2024-12-08 04:47:09', '2024-12-08 04:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `t_periode`
--

CREATE TABLE `t_periode` (
  `id_periode` int NOT NULL,
  `id_sertifikasi` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
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
  `jenis_vendor` varchar(50) DEFAULT NULL,
  `alamat_web` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_vendor`
--

INSERT INTO `t_vendor` (`id_vendor`, `nama_vendor`, `alamat_vendor`, `telp_vendor`, `jenis_vendor`, `alamat_web`, `updated_at`, `created_at`) VALUES
(1, 'PT. Teknologi Digital', 'Jl. Raya Merdeka No. 15, Jakarta', '0812-3456-7890', 'Sertifikasi', 'https://www.teknologidigital.com', '2024-12-08 06:42:39', '2024-12-08 13:40:32'),
(2, 'CV. Solusi Jaringan', 'Jl. Jaringan No. 22, Surabaya', '0812-7654-3210', 'Pelatihan', 'https://www.helios.id/id/solusi-jaringan/', '2024-12-08 23:57:23', '2024-12-08 13:40:32'),
(3, 'PT. Aplikasi Kreatif', 'Jl. Aplikasi No. 10, Bandung', '0821-2345-6789', 'Pelatihan', 'https://www.aplikasikreatif.com', '2024-12-08 06:43:05', '2024-12-08 13:40:32'),
(4, 'PT. Keamanan Siber Indonesia', 'Jl. Keamanan No. 7, Yogyakarta', '0813-5678-9123', 'Sertifikasi', 'https://www.horangi.com/', '2024-12-09 00:00:50', '2024-12-08 13:40:32'),
(5, 'CV. Desain User Interface', 'Jl. UI/UX No. 5, Semarang', '0813-1234-5678', 'Sertifikasi', 'https://dribbble.com/tags/ui-ux-design', '2024-12-08 23:59:51', '2024-12-08 13:40:32'),
(6, 'PT. Cloud Solutions', 'Jl. Cloud No. 12, Malang', '0857-7890-1234', 'Sertifikasi', 'https://www.cloudsolutions.com', '2024-12-08 06:43:23', '2024-12-08 13:40:32'),
(7, 'CV. Internet of Things', 'Jl. IoT No. 3, Bali', '0856-5678-4321', 'Pelatihan', 'https://aws.amazon.com/id/what-is/iot/', '2024-12-08 23:58:57', '2024-12-08 13:40:32'),
(17, 'xxcvzx', 'cobaa', '3432', 'Sertifikasi', 'dvsfg', '2024-12-10 21:27:53', '2024-12-10 21:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_minat`
--
ALTER TABLE `bidang_minat`
  ADD PRIMARY KEY (`id_bidang_minat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_dabim` (`id_dabim`);

--
-- Indexes for table `data_bidang_minat`
--
ALTER TABLE `data_bidang_minat`
  ADD PRIMARY KEY (`id_dabim`);

--
-- Indexes for table `data_mata_kuliah`
--
ALTER TABLE `data_mata_kuliah`
  ADD PRIMARY KEY (`id_damat`);

--
-- Indexes for table `data_prodi`
--
ALTER TABLE `data_prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD PRIMARY KEY (`id_kompetensi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_damat` (`id_damat`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `username_user` (`username`),
  ADD KEY `id_level` (`id_level`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengajuan_pelatihan`
--
ALTER TABLE `pengajuan_pelatihan`
  ADD PRIMARY KEY (`id_pengpelatihan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `pengajuan_sertifikasi`
--
ALTER TABLE `pengajuan_sertifikasi`
  ADD PRIMARY KEY (`id_pengsertifikasi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  ADD KEY `id_vendor` (`id_vendor`),
  ADD KEY `id_bidang_minat` (`id_bidang_minat`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_jenpel` (`id_jenpel`);

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
  ADD KEY `id_vendor` (`id_vendor`),
  ADD KEY `id_bidang_minat` (`id_bidang_minat`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `t_jenis_pelatihan`
--
ALTER TABLE `t_jenis_pelatihan`
  ADD PRIMARY KEY (`id_jenpel`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_minat`
--
ALTER TABLE `bidang_minat`
  MODIFY `id_bidang_minat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_bidang_minat`
--
ALTER TABLE `data_bidang_minat`
  MODIFY `id_dabim` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_mata_kuliah`
--
ALTER TABLE `data_mata_kuliah`
  MODIFY `id_damat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_prodi`
--
ALTER TABLE `data_prodi`
  MODIFY `id_prodi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kompetensi`
--
ALTER TABLE `kompetensi`
  MODIFY `id_kompetensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_matkul` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `id_level` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `pengajuan_pelatihan`
--
ALTER TABLE `pengajuan_pelatihan`
  MODIFY `id_pengpelatihan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_sertifikasi`
--
ALTER TABLE `pengajuan_sertifikasi`
  MODIFY `id_pengsertifikasi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_data_pelatihan`
--
ALTER TABLE `t_data_pelatihan`
  MODIFY `id_pelatihan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_data_rekomendasi_program`
--
ALTER TABLE `t_data_rekomendasi_program`
  MODIFY `id_program` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_data_sertifikasi`
--
ALTER TABLE `t_data_sertifikasi`
  MODIFY `id_sertifikasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_jenis_pelatihan`
--
ALTER TABLE `t_jenis_pelatihan`
  MODIFY `id_jenpel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_periode`
--
ALTER TABLE `t_periode`
  MODIFY `id_periode` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_vendor`
--
ALTER TABLE `t_vendor`
  MODIFY `id_vendor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidang_minat`
--
ALTER TABLE `bidang_minat`
  ADD CONSTRAINT `bidang_minat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `bidang_minat_ibfk_2` FOREIGN KEY (`id_dabim`) REFERENCES `data_bidang_minat` (`id_dabim`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `data_prodi`
--
ALTER TABLE `data_prodi`
  ADD CONSTRAINT `data_prodi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD CONSTRAINT `kompetensi_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `data_prodi` (`id_prodi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `kompetensi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `mata_kuliah_ibfk_2` FOREIGN KEY (`id_damat`) REFERENCES `data_mata_kuliah` (`id_damat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `m_level` (`id_level`) ON DELETE SET NULL,
  ADD CONSTRAINT `m_user_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `data_prodi` (`id_prodi`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pengajuan_pelatihan`
--
ALTER TABLE `pengajuan_pelatihan`
  ADD CONSTRAINT `pengajuan_pelatihan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengajuan_pelatihan_ibfk_2` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pengajuan_sertifikasi`
--
ALTER TABLE `pengajuan_sertifikasi`
  ADD CONSTRAINT `pengajuan_sertifikasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengajuan_sertifikasi_ibfk_2` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
  ADD CONSTRAINT `t_data_pelatihan_ibfk_2` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_data_pelatihan_ibfk_3` FOREIGN KEY (`id_bidang_minat`) REFERENCES `bidang_minat` (`id_bidang_minat`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `t_data_pelatihan_ibfk_4` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `t_data_pelatihan_ibfk_5` FOREIGN KEY (`id_jenpel`) REFERENCES `t_jenis_pelatihan` (`id_jenpel`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
  ADD CONSTRAINT `t_data_sertifikasi_ibfk_2` FOREIGN KEY (`id_vendor`) REFERENCES `t_vendor` (`id_vendor`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_data_sertifikasi_ibfk_3` FOREIGN KEY (`id_bidang_minat`) REFERENCES `bidang_minat` (`id_bidang_minat`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `t_data_sertifikasi_ibfk_4` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
