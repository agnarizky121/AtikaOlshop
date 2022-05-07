-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2022 pada 17.41
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atika_olshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `id_pengirim` varchar(100) NOT NULL,
  `id_penerima` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `id_pengirim`, `id_penerima`, `message`) VALUES
(105, 'Agna', 'Admin', 'Halo'),
(106, 'Admin', 'Agna', 'Iya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan_token`
--

CREATE TABLE `pelanggan_token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan_token`
--

INSERT INTO `pelanggan_token` (`id`, `email`, `token`, `date_created`) VALUES
(3, 'putraodin2@gmail.com', '/kN8/D0dAoP4O+jKHYOet2RAnq9fDTDoi8AHo9uG3h0=', 1651171360);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `berat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(3, 'Plastik Beras Sablon', 3, 4000, 'Plastik Beras Sablon 1 warna', 'plastik_beras.jpg', 200),
(4, 'Kalender Duduk', 5, 7500, 'Kalender duduk', 'kalender.png', 200),
(6, 'Nota Barang', 6, 5000, 'Nota Hasil Transaksi', 'nota_1.jpg', 1000),
(7, 'Undangan Pernikahan', 3, 5000, 'Undangan untuk Pernikahan', 'undangan.jpg', 100),
(8, 'Banner Uk 1 meter x 2 meter', 7, 75000, 'Banner dengan Ukuran 1 Meter x 2 Meter ', 'banner1.jpg', 1000),
(9, 'Brosur A4', 2, 7500, 'Brosur ukuran kertas A4', 'brosur1.jpg', 100),
(10, 'X - Banner', 7, 100000, 'Banner Stand / X Banner', 'x-banner.jpg', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(10, 3, 'Plastik 2', 'plastik_beras_sablon_2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Kertas'),
(2, 'Brosur'),
(3, 'Undangan'),
(4, 'Sablon'),
(5, 'Kalender'),
(7, 'Banner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `is_active`, `date_created`, `foto`) VALUES
(1, 'Agna', 'agnarizky88@gmail.com', 'agnarizky', 1, 0, 'agna.jpg'),
(2, 'Aca', 'ivalatifa82@gmail.com', 'sitilatifatul', 0, 0, 'aca.jpg'),
(5, 'Rizky', 'agnarizky69@gmail.com', 'agnarizky1', 1, 1651170603, 'default.png'),
(6, 'Putra', 'putraodin2@gmail.com', 'agnarizky1', 0, 1651171360, 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'Mandiri', '1430-0244-20877', 'Agna Rizky Putra Anggara'),
(2, 'BRI', '7525-0100-4567-500', 'Siti Latifatul Munawaroh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(100) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(2, '20220328OR8FMTB7', 6, 1),
(3, '20220328OR8FMTB7', 4, 1),
(4, '20220328OR8FMTB7', 7, 1),
(5, '20220411HBYVUFOF', 10, 1),
(6, '20220411HBYVUFOF', 9, 1),
(7, '20220411HBYVUFOF', 8, 1),
(8, '20220413LQHGFSBW', 9, 1),
(9, '20220413LQHGFSBW', 8, 1),
(10, '20220414JJAMLHFQ', 3, 1),
(11, '20220414JJAMLHFQ', 6, 1),
(12, '20220414JJAMLHFQ', 7, 1),
(13, '20220414OHCUMY5V', 6, 2),
(14, '20220414OHCUMY5V', 10, 1),
(15, '20220414OHCUMY5V', 8, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telepon`) VALUES
(1, 'Toko Atika Print', 160, 'Jl. Letjen Sutoyo 88 B, Kota Jember', '082143945678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(100) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(100) DEFAULT NULL,
  `ekspedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(11) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `atas_nama` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `no_resi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `ekspedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(3, 1, '20220328OR8FMTB7', '2022-03-28', 'Mas Ok', '082143945678', '11', 'Banyuwangi', 'Genteng', '68465', 'jne', 'REG', '2-3 Hari', 6000, 1300, 17500, 23500, 1, 'IMG_20190704_202954.jpg', 'Mas ik', 'BRI', '1123-4568-12390', 0, NULL),
(4, 2, '20220411HBYVUFOF', '2022-04-11', 'Siti Latifatul', '081259557129', '11', 'Malang', 'Malang Lawang', '64123', 'jne', 'OKE', '2-3 Hari', 14000, 2100, 182500, 196500, 0, NULL, NULL, NULL, NULL, 0, NULL),
(5, 2, '20220413LQHGFSBW', '2022-04-13', 'Siti Latifatul', '081259557129', '11', 'Jember', 'Jember Tumpeng', '68123', 'tiki', 'ECO', '4 Hari', 5000, 1100, 82500, 87500, 1, 'agna.jpg', 'Siti Latifatul', 'Mandiri', '1234-5678-90123', 1, NULL),
(6, 1, '20220414JJAMLHFQ', '2022-04-14', 'Agna', '08123454321', '11', 'Surabaya', 'Sidoarjo', '68721', 'pos', 'Paket Kilat Khusus', '2 HARI Hari', 15200, 1300, 14000, 29200, 1, 'IMG_20190704_203623.jpg', 'Mas ik', 'BRI', '1123-4568-12390', 3, 'BAC093193190'),
(7, 1, '20220414OHCUMY5V', '2022-04-14', 'Mas ik', '08123454321', '11', 'Bondowoso', 'Bondowoso', '68122', 'jne', 'REG', '2-3 Hari', 36000, 6000, 335000, 371000, 1, 'IMG_20190704_202216.jpg', 'Agna Rizky', 'BRI', '1239-1234-5543', 3, 'JBR081239957');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_user` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'Admin', 'admin', 'admin', 1),
(3, 'Dian', 'user', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan_token`
--
ALTER TABLE `pelanggan_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `pelanggan_token`
--
ALTER TABLE `pelanggan_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
