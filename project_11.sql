-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2021 pada 13.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_11`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '2020-11-12 23:29:54', '2020-11-12 23:29:54'),
(2, 'Handphone', '2020-11-12 23:30:52', '2020-11-12 23:30:52'),
(3, 'Pakaian Pria', '2020-11-12 23:31:06', '2020-11-12 23:31:06'),
(4, 'Pakaian Wanita', '2020-11-12 23:31:16', '2020-11-12 23:31:16'),
(5, 'Buku', '2021-01-02 22:36:30', '2021-01-02 22:36:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `harga` char(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `nama`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(6, 'Poco X3 NFC 8/128 GB', '3700000', 2, '2020-11-13 04:19:52', '2020-11-13 04:19:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `brand` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `harga` char(30) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `brand`, `nama`, `foto`, `harga`, `stok`, `id_kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Xiaomi', 'Poco X3 NFC 8/128 GB', NULL, '3700000', 10, 2, 'NETWORK Technology\r\nGSM / HSPA / LTE\r\nLAUNCH Announced 2020, September 07\r\nStatus Available. Released 2020, September 08', '2021-01-11 06:45:30', '2021-01-10 23:45:30'),
(2, 1, 'Asus', 'LAPTOP GAMING ASUS P1410CDA RYZEN 3-3250U 8GB 256GB SSD W10', NULL, '8000000', 50, 1, '- Deskripsi Asus EXPERTBOOK P1410CDA-BV3421T Ryzen 3-3250U 8GB 256GB SSD W10 BLACK\r\n- Processor AMD Ryzen 3 - 3250U ( 2.6GHz Turbo maksimal 3.5GHz)\r\n- Chipset AMD', '2021-01-11 06:46:10', '2021-01-10 23:46:10'),
(3, 2, 'LLACES', 'Dress Wanita - Evelyn Flare Dress', NULL, '330000', 100, 4, 'Deskripsi LLACES Clothing - Dress Wanita - Evelyn Flare Dress - Merah, S\r\n- Midi dress desain flare sleeve detail pita ikat\r\n- Warna hitam& Merah\r\n- Kerah lapel\r\n- Unlined\r\n- Regular fit\r\n- Kancing depan\r\n- Material poliester tidak transparan, ringan dan tidak stretch\r\n- Tinggi model 175cm, mengenakan ukuran S\r\n\r\nLingkar Dada x Panjang Lengan x Panjang Badan:\r\n- S (86 cm x 18 cm x 97 cm)\r\n- M (88 cm x 19 cm x 98 cm)\r\n- L (90 cm x 20 cm x 99 cm)', '2020-11-22 14:45:29', '2020-11-22 14:45:29'),
(5, 1, 'Buble', 'Buble wrap untuk produk', NULL, '1000', 1000, 1, 'Untuk pelindung barang anda', '2020-11-22 15:03:58', '2020-11-22 15:03:58'),
(6, 1, 'Samsung', 'Galaxy A51 6/128 GB', NULL, '4500000', 10, 2, 'Garansi resmi sein indonesia / Samsung Indonesia', '2020-11-22 14:45:18', '2020-11-22 14:45:18'),
(7, 1, 'Realme', 'Realme C17', 'app/images/produk/-1609764202-Htf72.png', '2520000', 10, 2, 'Realme C17 hadir dengan layar 6,5 inci, kecepatan refresh 90Hz, chipset Qualcomm Snapdragon 460, GPU Octa-core 11nm, Adreno 610.', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(8, 1, 'Asus', 'Asus Laptop 14 X409FA', 'app/images/produk/-1609769094-jT6Zf.png', '4399000', 10, 1, 'ASUS VivoBook 14 A409 adalah laptop entry-level yang memberikan kinerja yang kuat dan visual yang mendalam.', '2021-01-11 06:47:10', '2021-01-10 23:47:10'),
(9, 1, 'Lenovo', 'Lenovo ideapad 330', 'app/images/produk/-1610264922-UbHls.png', '5452100', 10, 1, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Harga dan&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Spesifikasi Lenovo ideapad 330</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. 8th Gen Intel® Quad Core i7-8550U. 4 GB onboard DDR4 + 8 GB DIMM. 14” FHD (1920 x 1080). Desainnya yang sangat kuat, namun tetap terlihat sederhana membuat Anda nyaman menggunakan&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">laptop</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;walau dalam waktu yang lama</span><br></p>', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(10, 1, 'Acer', 'Laptop Acer TravelMate B115-M', 'app/images/produk/-1610267023-uRhyv.png', '1710000', 10, 1, '<p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Ready Stok... Laptop Acer TravelMate B115-M</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Sering belajar di luar ruangan? Dimensinya yang portable sangat ringan dan memudahkan kamu untuk bekerja di manapun. TravelMate</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">B115-M memiliki bobot hanya 1.32 kg, sangat ringan tidak akan membuatmu kelelahan saat membawanya.</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Spesifikasi Lengkap :</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Processor Intel Celeron N2940 @1.83GHz<br>RAM 4GB DDR3<br>Hardisk 500GB<br>Intel HD Graphics<br>Layar 11.6 Inchi HD Resolusi (1366x768) Layar Normal</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Suda Ada Webcam/Kamera, Sudah Bisa untuk Meeting Online/Belajar</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Online</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Estimasi Baterai Kurang Lebih 1 Jam++ (Tergantung Pemakaian)</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Kondisi Mesin OK<br>Engsel Kokoh<br>Speaker OK<br>WiFi OK</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Terinstall Windows 7 64Bit</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Sudah terinstall aplikasi Microsoft (Word, Excel, Power Point dll), Browser (Mozzila Firefox/Google Chrome), Aplikasi Multimedia (Pemutar Video/Musik), dan aplikasi lainnya</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Laptop tinggal pakai, sudah siap untuk kerja</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Kondisi Second, Fisik Mulus 80%-90%, Lecet Pemakaian Wajar</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Bisa digunakan untuk pemakaian sehari hari seperti sekolah,</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">kuliah, ataupun kerja</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Kelengkapan : Unit Laptop + Charger</p><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Garansi Toko 30 Hari</p>', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(11, 1, 'Opo', 'OPO A12', 'app/images/produk/-1610267723-z4Atu.png', '1499000', 20, 2, '<p style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 13px; line-height: 2.2rem; color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif;\">opo A12 resmi masuk di Indonesia April 2020 bersamaan dengan peluncuran xiomi readmi 3 pro. Harga OPPO A12 saat dirilis dipatok seharga Rp 2.500.000 dengan spesifikasi OPPO A12 yang mencakup layar 6,22 inci dan proteksi Corning Gorilla Glass 3, varian RAM 3GB dan 4GB, serta varian memori internal 32GB dan 64GB.</p><p style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 13px; line-height: 2.2rem; color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif;\">Tak hanya itu, dengan banderol harga HP OPPO A12 ini sudah dibekali dengan dua kamera utama 13MP dan 2MP, dengan kamera depan 5MP. Untuk prosesor, HP OPPO ini sudah dipersenjatai dengan chipset Mediatek MT6765 Helio P35 (12nm).</p>', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(12, 1, 'Vivo', 'Vivo Y12', 'app/images/produk/-1610267999-1LsRy.png', '148000', 2, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif; font-size: 13px;\">Harga Vivo Y12 saat dirilis pada September 2019 adalah Rp 2.199.000. Harga Vivo Y12 ini berbeda-beda, bergantung pada varian warna, jenis garansi, serta bundle atau promo paket internet yang menyertainya. Kini kamu bisa mendapatkan harga Vivo Y12 lebih murah, karena telah banyak tersedia Vivo Y12 bekas dengan kualitas bagus.</span><br></p>', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(13, 1, 'Samsung', 'Samsung Galaxy A51', 'app/images/produk/-1610268347-WV7lE.png', '3600000', 30, 2, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Samsung A51 Galaxy terbaik termurah</span><br></p>', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(14, 1, 'Notebook', 'Notebook Lenovo E10-30 10\" Intel', 'app/images/produk/-1610277969-CTZG3.png', '2200000', 15, 1, '<p><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Lenovo E10</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">-</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">30</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;adalah sebuah&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">notebook</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dengan ukuran&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">10</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">”.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Notebook</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;ini didominasi oleh warna hitam khas&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Lenovo</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dengan menggunakan plastik sebagai bahan utama. ...&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Lenovo E10</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">-</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">30</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;menggunakan prosesor&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Intel</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;Celeron N2815 dan dilengkapi dengan memory sebesar 2 GB</span><br></p>', '2021-01-10 13:24:25', '2021-01-10 13:24:25'),
(15, 1, 'Realme', 'Realme narzo 20', 'app/images/produk/-1610278220-ArLhD.png', '2199000', 50, 2, '<p><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Realme Narzo 20</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;membawa layar IPS LCD 6,5 inci beresolusi HD Plus (720 x 1600 piksel) dengan kecerahan 450 nits hingga 562 nits (peak). Perangkat didukung chipset gaming MediaTek Helio G85 bersistem fabrikasi 12 nm. HP baru ini membawa RAM 4 GB yang dipasangkan dengan memori internal 64 GB.</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(16, 1, 'Realme', 'Realme 5 Pro', 'app/images/produk/-1610282667-Khp1H.png', '1580000', 100, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif; font-size: 13px;\">Realme 5 Pro merupakan handphone HP dengan kapasitas 4035mAh dan layar 6.3\" yang dilengkapi dengan kamera belakang 48 + 8 + 2 + 2MP dengan tingkat densitas piksel sebesar 409ppi dan tampilan resolusi sebesar 1080 x 2340pixels. Dengan berat sebesar 184g, handphone HP ini memiliki prosesor Octa Core. Tanggal rilis untuk Realme 5 Pro: Agustus 2019.</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(17, 1, 'Iphone', 'Hp Apple iPhone 11 128', 'app/images/produk/-1610282885-m9VRU.png', '15475000', 50, 2, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Ready Stock, tanggal 29 mei silahkan langsung diorder aja\r\n\r\nApple iPhone 11 128GB New\r\nOriginal\r\nGaransi Internasional 1 Tahun\r\nKamera Bisa Silent\r\nBukan Barang Jepang/Korea\r\n\r\nReady Warna : Black, White, Red, Green, Purple, Yellow\r\n\r\nTULIS WARNA DI ORDER PESANAN,DAN APABILA PILIHAN WARNA YANG DIINGINKAN TERNYATA KOSONG,MAKA KITA KIRIM RANDOM\r\n\r\nMOHON DIMENGERTI\r\nMEMBELI = SETUJU\r\n\r\nSpecification :\r\nBody Aluminum frame\r\nGorilla Glass front with oleophobic coating\r\nGorilla Glass back with glossy finish\r\nIP68 certified for water and dust resistance\r\nScreen 6.1\" IPS LCD screen of 828 x 1792 pixel resolution\r\n326ppi, 625 nits, 120Hz touch sensing, wide color gamut.\r\nTrue Tone adjustment via a six-channel ambient light sensor.\r\n\r\nOS Apple iOS 13\r\nApple A13 Bionic chip (7nm+)\r\nHexa-Core (2x2.66 GHz Lightning + 4x1.8 GHz Thunder)\r\n4GB of RAM; 128GB of internal storage\r\n\r\nMain Dual 12MP camera\r\n26mm main wide-angle, F/1.8, OIS, Dual Pixel AF\r\n13mm ultra wide-angle, F/2.4, 120-degree field of view; quad-LED flash with slow sync\r\nSelfie Dual camera\r\n23mm 12MP F/2.2 front-facing camera with HDR mode + 3D TOF camera\r\n\r\nWi-Fi a/b/g/n/ac/ax; Bluetooth 5.0; Lightning port; GPS with A-GPS, GLONASS, GALILEO, QZSS; NFC; Apple U1 chip ultrawideband\r\n\r\nBattery 3.110 mAh, 18W fast charging, Qi wireless charging\r\n\r\nFace ID through dedicated TrueDepth camera, stereo speakers, Taptic Engine</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(18, 1, 'Iphone', 'Apple iPhone X', 'app/images/produk/-1610283116-Njcuy.png', '7500000', 25, 2, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">apple iPhone X \r\n64gb \r\nWarna grey \r\nBatre 85%\r\noriginal iPhone apple \r\ngaransi toko 1 bulan </span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(19, 1, 'Iphone', 'Apple iPhone 8', 'app/images/produk/-1610283483-YmAqe.png', '3950000', 10, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16.003px;\">iPhone 8 berlayar 4.7, didesain dengan kamera belakang dual vertikal yang dikabarkan beresolusi 12MP, kamera depan dengan 7MP, dibenami chipset Apple A11.</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(20, 1, 'Vivo', 'Vivo Y30', 'app/images/produk/-1610283795-TNDbH.png', '1509000', 50, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif; font-size: 13px;\">vivo Y30 merupakan handphone HP dengan kapasitas 5000mAh dan layar 6.47\" yang dilengkapi dengan kamera belakang 13 + 8 + 2 + 2MP dengan tingkat densitas piksel sebesar 266ppi dan tampilan resolusi sebesar 720 x 1560pixels. Dengan berat sebesar 197g, handphone HP ini memiliki prosesor Quad Core. Tanggal rilis untuk vivo Y30: Mei 2020</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(21, 1, 'Vivo', 'Vivo Y91', 'app/images/produk/-1610284061-JneZr.png', '1475000', 30, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif; font-size: 13px;\">Vivo Y91 merupakan handphone HP dengan kapasitas 4030mAh dan layar 6.2\" yang dilengkapi dengan kamera belakang 13MP dengan tingkat densitas piksel sebesar 270ppi dan tampilan resolusi sebesar 720 x 1520pixels. Dengan berat sebesar 163g, handphone HP ini memiliki prosesor Octa Core. Tanggal rilis untuk Vivo Y91: Desember 2018</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(22, 1, 'Samsung', 'Samsung Galaxy S20', 'app/images/produk/-1610284313-iblAw.png', '8990000', 50, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Noto Sans&quot;, &quot;Noto Sans Thai&quot;, sans-serif; font-size: 13px;\">Samsung Galaxy S20 merupakan handphone HP dengan kapasitas 4000mAh dan layar 6.2\" yang dilengkapi dengan kamera belakang 12 + 12 + 64MP dengan tingkat densitas piksel sebesar 563ppi dan tampilan resolusi sebesar 3200 x 1440pixels. Dengan berat sebesar 163g, handphone HP ini memiliki prosesor Octa Core. Tanggal rilis untuk Samsung Galaxy S20: Maret 2020.</span><br></p>', '2021-01-10 13:24:26', '2021-01-10 13:24:26'),
(43, 1, 'Leptop HP', 'Laptop HP 8460 core i7', 'app/images/produk/-1610285545-u84w9.png', '4500000', 50, 1, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">hp elitebook 8460\r\ncore i7 2620 2.7ghz\r\nram 4gb\r\nhardisk 320gb\r\ndvd rw\r\ncam\r\nwifi\r\nlayar 13.3\r\nvga amd radeon hd 6400m series\r\ntas new\r\nadaptor bawaan</span><br></p>', '2021-01-10 15:08:44', '2021-01-10 08:08:44'),
(44, 1, 'Acer', 'ACER PREDATOR HELIOS PH315-51-8750H-16GB-256GB-1TB-GTX1060-WIN10 SHALE BLACK', NULL, '1480000', 10, 1, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">SILAHKAN MEMBACA KETENTUAN YANG BERLAKU SEBELUM MENGORDER !!!!\r\n\r\nSpesifikasi : \r\n•	Intel Core i7 8750H-2.2Ghz upto 4.1Ghz\r\n•	RAM 16GB\r\n•	HDD 256GB SSD + 1TB\r\n•	nVidia GTX1060-6GB\r\n•	Display 15.6\" FHD\r\n•	Windows 10 Home\r\n\r\nGARANSI : ACER 2 Tahun (Service &amp; SparePart)\r\nMendapatkan Garansi toko (Tukar Unit) selama 3 Hari setelah barang sampai kepada Pembeli (Untuk waktu pengiriman barang tidak dihitung) Dengan kerusakan Di Luar Human error\r\n\r\nKELENGKAPAN :\r\nUnit, Charger, Dus\r\n\r\nORIGINAL :\r\nSemua produk yang kami jual adalah original 100%.\r\nGaransi 100% uang kembali jika barang replika/palsu\r\n\r\nPENGIRIMAN Go-SEND/GO-JEK:\r\nUntuk pengiriman menggunakan Go-Send hanya bisa maksimal nilai harga barang 10jt.\r\nJika nilai harga barang lebih dari 10jt tidak akan kami proses karena menyalahi aturan.\r\n\r\nNOTE :\r\n- Silahkan tanyakan ketersediaan stok barang atau warna terlebih dahulu sebelum membeli, untuk lebih jelasnya silahkan menghubungi kami melalui chat atau web kami.\r\n- Untuk berat sudah termasuk packing dengan bubble wrap.\r\n</span></p><div><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span></div>', '2021-01-10 15:08:59', '2021-01-10 08:08:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'utinchindy', 'utincindyselvira16@gmail.com', 'Utin Chindy Selvira', '$2y$10$vlupIagIE1nqErxkgHd/Ze4LMQTiZdJtfQvAvy3VBz1VK1jLdtH2q', NULL, '2021-01-04 14:08:11', '2021-01-04 14:08:11'),
(2, 'selvira store', 'selvira@gmail.com', 'selvira', '$2y$10$6e8k9KCmNi/2R6sQlVeENunEhURGd1C97o/rB.lKU1DWmLlHuW1na', NULL, '2020-11-22 07:57:33', '2020-11-22 07:57:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_handphone` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 1, '+6289600000', '2020-11-22 14:48:02', '2020-11-22 14:48:02'),
(2, 2, '+6282250111111', '2020-11-22 07:57:33', '2020-11-22 07:57:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
