-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2023 pada 09.17
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bigcomputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabangs`
--

CREATE TABLE `cabangs` (
  `id` int(11) NOT NULL,
  `id_cabang` char(10) NOT NULL,
  `nama_cabang` varchar(225) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cabangs`
--

INSERT INTO `cabangs` (`id`, `id_cabang`, `nama_cabang`, `alamat`, `created_at`, `updated_at`) VALUES
(3, 'CBG480', 'Big Computer Bengkulu', 'JL. Semangka, No.8, Simpang 4 Panorama, Panorama, Kec.Singran Pati, Kota Bengkulu', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fix_detail_order`
--

CREATE TABLE `fix_detail_order` (
  `id` int(11) NOT NULL,
  `id_transaction` char(10) NOT NULL,
  `id_barang` char(10) NOT NULL,
  `id_cabang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(10) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `merk` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fix_detail_order`
--

INSERT INTO `fix_detail_order` (`id`, `id_transaction`, `id_barang`, `id_cabang`, `id_user`, `nama_barang`, `kategori`, `harga`, `jumlah`, `total`, `merk`, `created_at`) VALUES
(257, '2094', '1221270', 'CBG480', 12, 'Acer Swift 3 Infinity 4', 'Laptop', 13000000, 12, 156000000, 'Lenovo', '2023-11-20 11:38:08'),
(258, '2094', '353940', 'CBG480', 12, 'acer', 'Monitor', 13000000, 12, 156000000, 'Lenovo', '2023-11-20 11:38:08'),
(259, '2094', '754410', 'CBG480', 12, 'X2', 'Laptop', 12000000, 6, 72000000, 'Lenovo', '2023-11-20 11:38:08'),
(260, '2901', '1221270', 'CBG480', 12, 'Acer Swift 3 Infinity 4', 'Laptop', 14000000, 2, 28000000, 'Lenovo', '2023-11-20 11:57:42'),
(261, '2740', '1221270', 'CBG480', 12, 'Acer Swift 3 Infinity 4', 'Laptop', 14000000, 8, 112000000, 'Lenovo', '2023-11-20 18:47:22'),
(262, '1443', '792510', 'CBG480', 12, 'Mouse', 'Mouse', 120000, 2, 240000, 'Razerr', '2023-11-22 08:34:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(10) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
('KTG1470', 'Laptop', '2023-11-11 23:32:35', '2023-11-11 23:32:35'),
('KTG1830', 'Processor', '2023-11-20 03:22:40', '2023-11-20 03:22:40'),
('KTG1950', 'Monitor', '2023-11-11 23:33:00', '2023-11-11 23:33:00'),
('KTG1980', 'Mouse Pad', '2023-11-20 03:23:15', '2023-11-20 03:23:15'),
('KTG2100', 'Mouse', '2023-11-11 23:32:51', '2023-11-11 23:32:51'),
('KTG2280', 'USB', '2023-11-20 03:21:24', '2023-11-20 03:21:24'),
('KTG2310', 'SSD', '2023-11-20 03:21:04', '2023-11-20 03:21:04'),
('KTG2730', 'Keyboard', '2023-11-11 23:32:44', '2023-11-11 23:32:44'),
('KTG630', 'HDD', '2023-11-20 03:21:13', '2023-11-20 03:21:13'),
('KTG750', 'Headset', '2023-11-20 03:21:56', '2023-11-20 03:21:56'),
('KTG840', 'aaaa', '2023-11-20 03:23:25', '2023-11-20 03:23:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merks`
--

CREATE TABLE `merks` (
  `id_merk` char(10) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `merks`
--

INSERT INTO `merks` (`id_merk`, `merk`, `created_at`, `updated_at`) VALUES
('MRK1320', 'Razerrr', '2023-11-20 03:09:06', '2023-11-20 03:09:06'),
('MRK1500', 'Lenovo', '2023-11-12 23:45:22', '2023-11-12 23:45:22'),
('MRK1620', 'Advan', '2023-11-20 03:06:20', '2023-11-20 03:06:20'),
('MRK1650', 'Kingston', '2023-11-20 03:09:33', '2023-11-20 03:09:33'),
('MRK1680', 'Asus', '2023-11-20 03:05:53', '2023-11-20 03:05:53'),
('MRK1920', 'aaa', '2023-11-20 03:28:30', '2023-11-20 03:28:30'),
('MRK2010', 'Seagate', '2023-11-20 03:09:20', '2023-11-20 03:09:20'),
('MRK2100', 'Dell', '2023-11-20 03:08:40', '2023-11-20 03:08:40'),
('MRK2370', 'MSI', '2023-11-20 03:08:13', '2023-11-20 03:08:13'),
('MRK240', 'Infinix', '2023-11-20 03:06:29', '2023-11-20 03:06:29'),
('MRK2850', 'Apple', '2023-11-20 03:06:39', '2023-11-20 03:06:39'),
('MRK540', 'Acer', '2023-11-20 03:06:11', '2023-11-20 03:06:11'),
('MRK570', 'HP', '2023-11-20 03:06:03', '2023-11-20 03:06:03'),
('MRK60', 'Logitech', '2023-11-20 03:08:56', '2023-11-20 03:08:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_09_023529_create_sessions_table', 1),
(7, '2022_08_09_044527_create_products_table', 1),
(8, '2022_08_10_035731_create_kategoris_table', 1),
(9, '2022_08_11_071212_create_satuans_table', 1),
(10, '2022_08_11_080151_create_cabangs_table', 1),
(11, '2022_08_11_095506_create_supliers_table', 1),
(12, '2023_11_10_113019_create_merks_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_barang` char(10) NOT NULL,
  `id_cabang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `harga` int(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `merk` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `profit` int(10) NOT NULL,
  `stok` int(10) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `id_cabang` char(10) NOT NULL,
  `keterangan` varchar(300) DEFAULT NULL,
  `id_suplier` char(10) NOT NULL,
  `kode_penjualan` char(10) DEFAULT NULL,
  `kode_pembelian` char(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nama_barang`, `kategori`, `harga_beli`, `harga_jual`, `profit`, `stok`, `merk`, `id_cabang`, `keterangan`, `id_suplier`, `kode_penjualan`, `kode_pembelian`, `created_at`, `updated_at`) VALUES
('1221270', 'Acer Swift 3 Infinity 4', 'Laptop', 10000000, 14000000, 4000000, 90, 'Lenovo', 'CBG480', NULL, 'SPL1950', '12345', '12333', '2023-11-12 23:52:57', '2023-11-12 23:52:57'),
('353940', 'acer', 'Monitor', 12000000, 13000000, 1000000, 100, 'Lenovo', 'CBG480', NULL, 'SPL1440', '12345w', '12333s3', '2023-11-16 12:18:12', '2023-11-16 12:18:12'),
('754410', 'X2', 'Laptop', 12000000, 12000000, 1210222222, 60, 'Lenovo', 'CBG480', NULL, 'SPL1440', '12233', '12333', '2023-11-16 13:20:06', '2023-11-16 13:20:06'),
('792510', 'Mouse', 'Mouse', 100000, 120000, 20000, 98, 'Razerr', 'CBG480', 'Tidak ada', 'SPL1440', '12231', '343555', '2023-11-22 01:32:49', '2023-11-22 01:32:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4GaSEBbpfiYyHBBybKk1SflUSqb4vkr7kEYmol62', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjR4eTVoSnJNempFQzFHR28wTXoyM2lHY1k0dHdiQnBGMjh4UGFWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1700813814);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supliers`
--

CREATE TABLE `supliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_suplier` char(10) NOT NULL,
  `nama_suplier` varchar(255) NOT NULL,
  `alamat_suplier` varchar(255) NOT NULL,
  `tlp` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supliers`
--

INSERT INTO `supliers` (`id`, `id_suplier`, `nama_suplier`, `alamat_suplier`, `tlp`, `created_at`, `updated_at`) VALUES
(1, 'SPL1440', 'Revaldo', 'Bandung', '085797887711', '2022-08-14 19:55:56', '2022-08-14 19:55:56'),
(2, 'SPL1950', 'relinsyah', 'Jakarta', '089636337580', '2022-08-14 19:56:16', '2022-08-14 19:56:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_transaction` char(10) NOT NULL,
  `id_cabang` char(10) NOT NULL,
  `id_user` bigint(10) NOT NULL,
  `total` int(10) NOT NULL,
  `cash` int(10) NOT NULL,
  `cashback` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `id_transaction`, `id_cabang`, `id_user`, `total`, `cash`, `cashback`, `created_at`) VALUES
(135, '7872', 'CBG480', 12, 13000000, 13000000, 0, '2023-11-13 06:53:36'),
(136, '3232', 'CBG480', 12, 13000000, 7, -12999993, '2023-11-16 19:14:28'),
(137, '5363', 'CBG480', 12, 39000000, 2, -38999998, '2023-11-16 19:35:15'),
(138, '6583', 'CBG480', 12, 13000000, 3, -12999997, '2023-11-16 19:45:24'),
(139, '2094', 'CBG480', 12, 384000000, 400000000, 16000000, '2023-11-20 11:38:08'),
(140, '2901', 'CBG480', 12, 28000000, 28000000, 0, '2023-11-20 11:57:42'),
(141, '2740', 'CBG480', 12, 112000000, 112000000, 0, '2023-11-20 18:47:22'),
(142, '1443', 'CBG480', 12, 240000, 240000, 0, '2023-11-22 08:34:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `id_cabang` char(10) DEFAULT NULL,
  `user_level` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `jenis_kelamin`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `id_cabang`, `user_level`, `created_at`, `updated_at`) VALUES
(12, 'Revaldo Relinsyah', 'admin@gmail.com', 'L', NULL, '$2y$10$/o3LLky6SHUq4OGWJzV88u3QAv6Q2WI9Oi0pGJV9b7Uk5KXTbmLYK', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG480', '1', NULL, NULL),
(13, 'Revaldo Relinsyah', 'kasir@gmail.com', 'L', NULL, '$2y$10$t2/LyJksaiaOmRuPEXJW4eRPdR29E75OeT.4tNU1C5z6J5i1Qgvym', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG480', '2', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_cabang` (`id_cabang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_2_barang` (`id_barang`),
  ADD KEY `detail_2_cabang` (`id_cabang`),
  ADD KEY `detail_2_transaksi` (`id_transaction`),
  ADD KEY `detail_2_user` (`id_user`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merks`
--
ALTER TABLE `merks`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_2_barang` (`id_barang`),
  ADD KEY `order_2_cabang` (`id_cabang`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_2_cabang` (`id_cabang`),
  ADD KEY `product_2_suplier` (`id_suplier`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_suplier` (`id_suplier`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_transaction` (`id_transaction`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_2_cabang` (`id_cabang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supliers`
--
ALTER TABLE `supliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  ADD CONSTRAINT `detail_2_barang` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `detail_2_cabang` FOREIGN KEY (`id_cabang`) REFERENCES `cabangs` (`id_cabang`),
  ADD CONSTRAINT `detail_2_transaksi` FOREIGN KEY (`id_transaction`) REFERENCES `transaction` (`id_transaction`),
  ADD CONSTRAINT `detail_2_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_2_barang` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_2_cabang` FOREIGN KEY (`id_cabang`) REFERENCES `cabangs` (`id_cabang`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_2_cabang` FOREIGN KEY (`id_cabang`) REFERENCES `cabangs` (`id_cabang`),
  ADD CONSTRAINT `product_2_suplier` FOREIGN KEY (`id_suplier`) REFERENCES `supliers` (`id_suplier`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_2_cabang` FOREIGN KEY (`id_cabang`) REFERENCES `cabangs` (`id_cabang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
