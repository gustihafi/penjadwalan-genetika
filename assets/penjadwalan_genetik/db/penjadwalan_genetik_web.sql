-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 Agu 2017 pada 11.25
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjadwalan_genetik_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `kode` int(2) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`kode`, `nip`, `nama`, `alamat`, `telp`, `password`) VALUES
(85, '', 'Maesaroh, S.Pd', '', '', 'agama'),
(86, '', 'Abdul Somat, Lc', '', '', ''),
(87, '', 'Abdul Ruhiyat, S.Pd', '', '', ''),
(88, '', 'Nidia Desiyanti, S.Pd', '', '', ''),
(89, '', 'Alek Alubis', '', '', ''),
(90, '', 'Dra. Pratiwi Nurhayati', '', '', ''),
(91, '', 'Mardiana Palantika, S.Pd', '', '', ''),
(92, '', 'Siti Nurhayatulismah, S.Pd', '', '', ''),
(93, '', 'Dra. Siwi Purwantini', '', '', ''),
(94, '', 'Hj. Neti Risnawati, M.Pd', '', '', ''),
(95, '', 'Sri Mulyati, Ssi', '', '', ''),
(96, '', 'Wita Yulistia, S.Pd', '', '', ''),
(97, '', 'Hj. Elismawati, S.Pd', '', '', ''),
(98, '', 'Lina Deliana, S.Pd', '', '', ''),
(99, '', 'Nani Maryani, S.Pd', '', '', ''),
(100, '', 'Januar Ashari, S.Pd', '', '', ''),
(101, '', 'Lutfi Choeril, S.Pd', '', '', ''),
(102, '', 'Dono Wasito, S.Pd', '', '', ''),
(103, '', 'Alif Ruhbi, S.Pd', '', '', ''),
(104, '', 'Tedi Setiadi, S.Kom', '', '', ''),
(105, '', 'Drs. Kurnadi', '', '', ''),
(106, '', 'Lina Yudiastuti, S.Si', '', '', ''),
(107, '', 'Riyana Hermadiana, S.Si', '', '', ''),
(108, '', 'Dra. Susetyawati', '', '', ''),
(109, '', 'Ahmad Faizol, S.Pd', '', '', ''),
(110, '', 'Dwijo Riyanto, S.Kom', '', '', ''),
(111, '', 'Nana Setiana, S.P', '', '', ''),
(113, '', 'Drs. Miswan Wahyudi, MM', '', '', ''),
(114, '', 'Kartanto, S.Pd', '', '', ''),
(115, '', 'Hajarol Harahap, S.Pd', '', '', ''),
(116, '', 'Salikin, S.Pd', '', '', ''),
(117, '', 'Runen', '', '', ''),
(118, '', 'Bachtiar, S.Pd', '', '', ''),
(119, '', 'Sopian', '', '', ''),
(120, '', 'Hasrul A Harahap, S.Kom', '', '', ''),
(121, '', 'Erwan Usmawan, S.ST', '', '', ''),
(122, '', 'Zulkarnaen N.S, S.Kom', '', '', ''),
(123, '', 'Heru Setiawan, S.Kom', '', '', ''),
(124, '', 'Aviani Sofiansyah', '', '', ''),
(125, '', 'Ajid, S.Ds', '', '', ''),
(126, '', 'Boma Bondan Suharto, S.Sos', '', '', ''),
(127, '', 'Zulfikar', '', '', ''),
(128, '', 'Wanda Kurniawan', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`kode`, `nama`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalpelajaran`
--

CREATE TABLE `jadwalpelajaran` (
  `kode` int(10) NOT NULL,
  `kode_pengampu` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_ruang` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hasil proses';

--
-- Dumping data untuk tabel `jadwalpelajaran`
--

INSERT INTO `jadwalpelajaran` (`kode`, `kode_pengampu`, `kode_jam`, `kode_hari`, `kode_ruang`) VALUES
(1, 264, 9, 4, 18),
(2, 265, 1, 3, 23),
(3, 266, 5, 1, 10),
(4, 267, 8, 1, 24),
(5, 268, 4, 3, 9),
(6, 269, 9, 3, 8),
(7, 270, 1, 4, 17),
(8, 271, 3, 2, 14),
(9, 272, 1, 5, 18),
(10, 273, 10, 4, 17),
(11, 274, 5, 3, 13),
(12, 275, 6, 1, 16),
(13, 276, 1, 2, 5),
(14, 277, 1, 3, 9),
(15, 278, 7, 2, 14),
(16, 279, 3, 4, 18),
(17, 280, 8, 2, 22),
(18, 281, 9, 1, 19),
(19, 282, 11, 1, 23),
(20, 283, 6, 4, 2),
(21, 284, 2, 3, 21),
(22, 285, 6, 1, 9),
(23, 286, 8, 3, 24),
(24, 287, 8, 5, 14),
(25, 288, 5, 1, 20),
(26, 289, 9, 3, 20),
(27, 290, 2, 3, 18),
(28, 291, 6, 4, 9),
(29, 292, 11, 5, 6),
(30, 293, 1, 1, 7),
(31, 294, 2, 5, 19),
(32, 295, 7, 5, 12),
(33, 296, 5, 3, 2),
(34, 297, 8, 1, 18),
(35, 298, 3, 4, 12),
(36, 299, 8, 4, 19),
(37, 300, 9, 1, 21),
(38, 301, 4, 1, 2),
(39, 302, 3, 3, 16),
(40, 303, 7, 5, 8),
(41, 304, 1, 3, 17),
(42, 305, 10, 5, 10),
(43, 306, 5, 3, 24),
(44, 307, 4, 4, 23),
(45, 308, 11, 3, 21),
(46, 309, 9, 4, 3),
(47, 310, 11, 4, 11),
(48, 311, 3, 2, 15),
(49, 312, 7, 2, 23),
(50, 313, 2, 3, 10),
(51, 314, 11, 5, 14),
(52, 315, 1, 1, 20),
(53, 316, 8, 4, 24),
(54, 317, 7, 1, 19),
(55, 318, 10, 1, 15),
(56, 319, 8, 5, 18),
(57, 320, 1, 2, 23),
(58, 321, 11, 4, 20),
(59, 322, 2, 2, 11),
(60, 323, 9, 2, 5),
(61, 324, 7, 1, 1),
(62, 325, 7, 5, 1),
(63, 326, 1, 4, 1),
(64, 327, 3, 1, 7),
(65, 328, 6, 3, 10),
(66, 329, 2, 1, 5),
(67, 330, 1, 4, 2),
(68, 331, 1, 2, 24),
(69, 332, 7, 2, 2),
(70, 333, 6, 1, 8),
(71, 334, 6, 4, 4),
(72, 335, 7, 5, 22),
(73, 336, 2, 1, 17),
(74, 337, 9, 2, 3),
(75, 338, 8, 5, 7),
(76, 339, 6, 1, 11),
(77, 340, 6, 3, 15),
(78, 341, 8, 4, 9),
(79, 342, 4, 4, 3),
(80, 343, 3, 2, 4),
(81, 344, 9, 2, 9),
(82, 345, 2, 3, 4),
(83, 346, 2, 4, 24),
(84, 347, 8, 4, 1),
(85, 348, 5, 2, 17),
(86, 349, 1, 2, 21),
(87, 350, 2, 1, 22),
(88, 351, 6, 3, 6),
(89, 352, 1, 3, 1),
(90, 353, 9, 2, 24),
(91, 354, 5, 2, 10),
(92, 355, 8, 3, 1),
(93, 356, 10, 4, 10),
(94, 357, 6, 4, 18),
(95, 358, 1, 2, 22),
(96, 359, 9, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`kode`, `range_jam`, `aktif`) VALUES
(1, '07.15-08.00', NULL),
(2, '08.00-08.45', NULL),
(3, '08.45-09.30', NULL),
(4, '09.30-10.15', NULL),
(5, '10.30-11.15', NULL),
(6, '11.30-12.10', NULL),
(7, '11.15-12.00', NULL),
(8, '12.50-13.35', NULL),
(9, '13.35-14.20', NULL),
(10, '14.20-15.05', NULL),
(11, '15.20-16.05', NULL),
(13, '16:05-16:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `kode` int(10) NOT NULL,
  `kode_mk` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sks` int(6) DEFAULT NULL,
  `semester` int(6) DEFAULT NULL,
  `aktif` enum('True','False') DEFAULT 'True',
  `jenis` enum('TEORI','PRAKTIKUM') DEFAULT 'TEORI'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='example kode_mk = 0765109 ';

--
-- Dumping data untuk tabel `matapelajaran`
--

INSERT INTO `matapelajaran` (`kode`, `kode_mk`, `nama`, `sks`, `semester`, `aktif`, `jenis`) VALUES
(73, '', 'PAI KELAS 10', 3, 1, 'True', 'TEORI'),
(74, '', 'PAI KELAS 11', 3, 1, 'True', 'TEORI'),
(75, '', 'PAI KELAS 12', 2, 1, 'True', 'TEORI'),
(77, '', 'Bahasa Indonesia Kelas 10', 4, 1, 'True', 'TEORI'),
(78, '', 'Bahasa Indonesia Kelas 11', 3, 1, 'True', 'TEORI'),
(79, '', 'Bahasa Indonesia Kelas 12', 2, 1, 'True', 'TEORI'),
(81, '', 'Sejarah Indo/IPS kelas 10', 3, 1, 'True', 'TEORI'),
(82, '', 'Bahasa Inggris kelas 10', 3, 1, 'True', 'TEORI'),
(83, '', 'Bahasa Inggris kelas 11', 3, 1, 'True', 'TEORI'),
(84, '', 'Bahasa Inggris kelas 12', 4, 1, 'True', 'TEORI'),
(85, '', 'Seni Budaya kelas 10', 3, 1, 'True', 'TEORI'),
(87, '', 'Simulasi Digital kelas 10', 3, 1, 'True', 'TEORI'),
(88, '', 'Kewirausahaan kelas 12', 2, 1, 'True', 'TEORI'),
(89, '', 'Fisika kelas 10 rpl', 3, 1, 'True', 'TEORI'),
(90, '', 'Fisika kelas 10 TPL,TKR', 4, 1, 'True', 'TEORI'),
(93, '', 'Fisika kelas 12', 2, 1, 'True', 'TEORI'),
(96, '', 'Kimia Kelas 12', 2, 1, 'True', 'TEORI'),
(97, '', 'Bahasa Jepang kelas 11', 2, 1, 'True', 'TEORI'),
(98, '', 'Bahasa Jepang kelas 12', 2, 1, 'True', 'TEORI'),
(99, '', 'KKPI kelas 12', 2, 1, 'True', 'TEORI'),
(100, '', 'PLH kelas 12', 2, 1, 'True', 'TEORI'),
(101, '', 'PPKN Kelas 10', 2, 1, 'True', 'TEORI'),
(102, '', 'PPKN Kelas 11', 2, 1, 'True', 'TEORI'),
(103, '', 'PPKN Kelas 12', 2, 1, 'True', 'TEORI'),
(104, '', 'Matematika kelas 10', 4, 1, 'True', 'TEORI'),
(105, '', 'Matematika kelas 11', 4, 1, 'True', 'TEORI'),
(106, '', 'Matematika kelas 12', 4, 1, 'True', 'TEORI'),
(107, '', 'PJOK  Kelas 10', 2, 1, 'True', 'TEORI'),
(108, '', 'PJOK  Kelas 11', 2, 1, 'True', 'TEORI'),
(109, '', 'PJOK  Kelas 12', 2, 1, 'True', 'TEORI'),
(110, '', 'FISIKA Kelas 11', 4, 1, 'True', 'TEORI'),
(111, '', 'Kimia Kelas 10', 3, 1, 'True', 'TEORI'),
(112, '', 'Kimia Kelas 11', 3, 1, 'True', 'TEORI'),
(113, '', '10 TPL 1', 4, 1, 'True', 'TEORI'),
(114, '', '10 TPL 2', 4, 1, 'True', 'TEORI'),
(115, '', '11 TPL 1', 4, 1, 'True', 'TEORI'),
(116, '', '11 TPL 2', 4, 1, 'True', 'TEORI'),
(117, '', '11 TPL 3', 4, 1, 'True', 'TEORI'),
(118, '', '12 TPL 1', 4, 1, 'True', 'TEORI'),
(119, '', '10 TKR 1', 4, 1, 'True', 'TEORI'),
(120, '', '10 TKR 2', 4, 1, 'True', 'TEORI'),
(123, '', '11 TKR 3', 4, 1, 'True', 'TEORI'),
(124, '', '12 TKR 1', 4, 1, 'True', 'TEORI'),
(125, '', '12 TKR 2', 4, 1, 'True', 'TEORI'),
(126, '', '10 RPL 1', 4, 1, 'True', 'TEORI'),
(127, '', '10 RPL 2', 4, 1, 'True', 'TEORI'),
(128, '', '11 RPL 1', 4, 1, 'True', 'TEORI'),
(129, '', '11 RPL 2', 4, 1, 'True', 'TEORI'),
(130, '', '11 RPL 3', 4, 1, 'True', 'TEORI'),
(131, '', '11 RPL 4', 4, 1, 'True', 'TEORI'),
(132, '', '12 RPL 1', 4, 1, 'True', 'TEORI'),
(133, '', '12 RPL 2', 4, 1, 'True', 'TEORI'),
(134, '', '10 ANM 1', 4, 1, 'True', 'TEORI'),
(135, '', '10 ANM 2', 4, 1, 'True', 'TEORI'),
(136, '', '10 ANM 3', 4, 1, 'True', 'TEORI'),
(137, '', '11 ANM 1', 3, 1, 'True', 'TEORI'),
(138, '', '11 ANM 2', 4, 1, 'True', 'TEORI'),
(139, '', '11 ANM 3', 4, 1, 'True', 'TEORI'),
(140, '', '12 ANM 1', 4, 1, 'True', 'TEORI'),
(141, '', '12 ANM 2', 4, 1, 'True', 'TEORI'),
(142, '', '12 ANM 3', 4, 1, 'True', 'TEORI'),
(143, '', '11 TKR 1', 4, 1, 'True', 'TEORI'),
(144, '', '11 TKR 2', 4, 1, 'True', 'TEORI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengampu`
--

CREATE TABLE `pengampu` (
  `kode` int(10) NOT NULL,
  `kode_mk` int(10) DEFAULT NULL,
  `kode_guru` int(10) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengampu`
--

INSERT INTO `pengampu` (`kode`, `kode_mk`, `kode_guru`, `kelas`, `tahun_akademik`) VALUES
(264, 73, 85, 'RPL 1', '2017-2018'),
(265, 73, 85, 'RPL 2', '2017-2018'),
(266, 73, 85, 'RPL 3', '2017-2018'),
(267, 73, 85, 'TPL', '2017-2018'),
(268, 73, 85, 'ANM 1', '2017-2018'),
(269, 73, 85, 'ANM 2', '2017-2018'),
(270, 73, 85, 'TKR 1', '2017-2018'),
(271, 73, 85, 'TKR 2', '2017-2018'),
(272, 74, 86, 'RPL 1', '2017-2018'),
(273, 74, 86, 'RPL 2', '2017-2018'),
(274, 74, 86, 'RPL 3', '2017-2018'),
(275, 74, 86, 'TPL', '2017-2018'),
(276, 74, 86, 'ANM 1', '2017-2018'),
(277, 74, 86, 'ANM 2', '2017-2018'),
(278, 74, 86, 'TKR 1', '2017-2018'),
(279, 74, 86, 'TKR 2', '2017-2018'),
(280, 75, 87, 'RPL 1', '2017-2018'),
(281, 75, 87, 'RPL 2', '2017-2018'),
(282, 75, 87, 'RPL 3', '2017-2018'),
(283, 75, 87, 'TPL', '2017-2018'),
(284, 75, 87, 'ANM 1', '2017-2018'),
(285, 75, 87, 'ANM 2', '2017-2018'),
(286, 75, 87, 'TKR 1', '2017-2018'),
(287, 75, 87, 'TKR 2', '2017-2018'),
(288, 101, 88, 'RPL 1', '2017-2018'),
(289, 101, 88, 'RPL 2', '2017-2018'),
(290, 101, 88, 'RPL 3', '2017-2018'),
(291, 101, 88, 'TPL', '2017-2018'),
(292, 101, 88, 'ANM 1', '2017-2018'),
(293, 101, 88, 'ANM 2', '2017-2018'),
(294, 101, 88, 'TKR 1', '2017-2018'),
(295, 101, 88, 'TKR 2', '2017-2018'),
(296, 102, 88, 'RPL 1', '2017-2018'),
(297, 102, 88, 'RPL 2', '2017-2018'),
(298, 102, 88, 'RPL 2', '2017-2018'),
(299, 102, 88, 'TPL', '2017-2018'),
(300, 102, 89, 'ANM 1', '2017-2018'),
(301, 102, 89, 'ANM 2', '2017-2018'),
(302, 102, 89, 'TKR 1', '2017-2018'),
(303, 102, 89, 'TKR 2', '2017-2018'),
(304, 103, 89, 'RPL 1', '2017-2018'),
(305, 103, 89, 'RPL 2', '2017-2018'),
(306, 103, 89, 'RPL 3', '2017-2018'),
(307, 103, 89, 'TPL', '2017-2018'),
(308, 103, 89, 'ANM 1', '2017-2018'),
(309, 103, 89, 'ANM 2', '2017-2018'),
(310, 103, 89, 'TKR 1', '2017-2018'),
(311, 103, 89, 'TKR 2', '2017-2018'),
(312, 77, 90, 'TKR 1', '2017-2018'),
(313, 77, 90, 'TKR 2', '2017-2018'),
(314, 79, 90, 'RPL 1', '2017-2018'),
(315, 79, 90, 'RPL 2', '2017-2018'),
(316, 79, 90, 'RPL 3', '2017-2018'),
(317, 79, 90, 'TPL', '2017-2018'),
(318, 79, 90, 'ANM 1', '2017-2018'),
(319, 79, 90, 'ANM 2', '2017-2018'),
(320, 79, 90, 'TKR 1', '2017-2018'),
(321, 79, 90, 'TKR 2', '2017-2018'),
(322, 77, 91, 'RPL 1', '2017-2018'),
(323, 77, 91, 'RPL 2', '2017-2018'),
(324, 77, 91, 'RPL 3', '2017-2018'),
(325, 77, 91, 'TPL', '2017-2018'),
(326, 77, 91, 'ANM 1', '2017-2018'),
(327, 77, 91, 'ANM 2', '2017-2018'),
(328, 105, 93, 'RPL 1', '2017-2018'),
(329, 105, 93, 'RPL 2', '2017-2018'),
(330, 105, 93, 'RPL 3', '2017-2018'),
(331, 105, 93, 'TPL', '2017-2018'),
(332, 105, 93, 'ANM 1', '2017-2018'),
(333, 105, 93, 'ANM 2', '2017-2018'),
(334, 105, 93, 'TKR 1', '2017-2018'),
(335, 105, 93, 'TKR 2', '2017-2018'),
(336, 106, 94, 'RPL 1', '2017-2018'),
(337, 106, 94, 'RPL 2', '2017-2018'),
(338, 106, 94, 'RPL 3', '2017-2018'),
(339, 106, 94, 'TPL', '2017-2018'),
(340, 106, 94, 'ANM 1', '2017-2018'),
(341, 106, 94, 'ANM 2', '2017-2018'),
(342, 106, 94, 'TKR 1', '2017-2018'),
(343, 106, 94, 'TKR 2', '2017-2018'),
(344, 104, 95, 'RPL 1', '2017-2018'),
(345, 104, 95, 'RPL 2', '2017-2018'),
(346, 104, 95, 'RPL 3', '2017-2018'),
(347, 104, 95, 'TPL', '2017-2018'),
(348, 104, 95, 'ANM 1', '2017-2018'),
(349, 104, 95, 'ANM 2', '2017-2018'),
(350, 104, 95, 'TKR 1', '2017-2018'),
(351, 104, 95, 'TKR 2', '2017-2018'),
(352, 81, 96, 'RPL 1', '2017-2018'),
(353, 81, 96, 'RPL 2', '2017-2018'),
(354, 81, 96, 'RPL 3', '2017-2018'),
(355, 81, 96, 'TPL', '2017-2018'),
(356, 81, 96, 'ANM 1', '2017-2018'),
(357, 81, 96, 'ANM 2', '2017-2018'),
(358, 81, 96, 'TKR 1', '2017-2018'),
(359, 81, 96, 'TKR 2', '2017-2018'),
(360, 84, 97, 'RPL 1', '2017-2018'),
(361, 84, 97, 'RPL 2', '2017-2018'),
(362, 84, 97, 'RPL 3', '2017-2018'),
(363, 84, 97, 'TPL', '2017-2018'),
(364, 84, 97, 'ANM 1', '2017-2018'),
(365, 84, 97, 'ANM 2', '2017-2018'),
(366, 84, 97, 'TKR 1', '2017-2018'),
(367, 84, 97, 'TKR 2', '2017-2018'),
(368, 83, 98, 'RPL 1', '2017-2018'),
(369, 83, 98, 'RPL 2', '2017-2018'),
(370, 83, 98, 'RPL 3', '2017-2018'),
(371, 83, 98, 'TPL', '2017-2018'),
(372, 83, 98, 'ANM 1', '2017-2018'),
(373, 83, 98, 'ANM 2', '2017-2018'),
(374, 83, 98, 'TKR 1', '2017-2018'),
(375, 83, 98, 'TKR 2', '2017-2018'),
(376, 82, 99, 'RPL 1', '2017-2018'),
(377, 82, 99, 'RPL 2', '2017-2018'),
(378, 82, 99, 'RPL 3', '2017-2018'),
(379, 82, 99, 'TPL', '2017-2018'),
(380, 82, 99, 'ANM 1', '2017-2018'),
(381, 82, 99, 'ANM 2', '2017-2018'),
(382, 82, 99, 'TKR 1', '2017-2018'),
(383, 82, 99, 'TKR 2', '2017-2018'),
(384, 85, 101, 'RPL 1', '2017-2018'),
(385, 85, 101, 'RPL 2', '2017-2018'),
(386, 85, 101, 'RPL 3', '2017-2018'),
(387, 85, 101, 'TPL', '2017-2018'),
(388, 85, 101, 'ANM 1', '2017-2018'),
(389, 85, 101, 'ANM 2', '2017-2018'),
(390, 85, 101, 'TKR 1', '2017-2018'),
(391, 85, 101, 'TKR 2', '2017-2018'),
(392, 108, 102, 'ANM 1', '2017-2018'),
(393, 108, 102, 'ANM 2', '2017-2018'),
(394, 108, 102, 'TKR 1', '2017-2018'),
(395, 108, 102, 'TKR 2', '2017-2018'),
(396, 109, 102, 'RPL 1', '2017-2018'),
(397, 109, 102, 'RPL 2', '2017-2018'),
(398, 109, 102, 'RPL 3', '2017-2018'),
(399, 109, 102, 'TPL', '2017-2018'),
(400, 109, 102, 'ANM 1', '2017-2018'),
(401, 109, 102, 'ANM 2', '2017-2018'),
(402, 109, 102, 'TKR 1', '2017-2018'),
(403, 109, 102, 'TKR 2', '2017-2018'),
(404, 107, 103, 'RPL 1', '2017-2018'),
(405, 107, 103, 'RPL 2', '2017-2018'),
(406, 107, 103, 'RPL 3', '2017-2018'),
(407, 107, 103, 'TPL', '2017-2018'),
(408, 107, 103, 'ANM 1', '2017-2018'),
(409, 107, 103, 'ANM 2', '2017-2018'),
(410, 107, 103, 'TKR 1', '2017-2018'),
(411, 107, 103, 'TKR 2', '2017-2018'),
(412, 108, 103, 'RPL 1', '2017-2018'),
(413, 108, 103, 'RPL 2', '2017-2018'),
(414, 108, 103, 'RPL 3', '2017-2018'),
(415, 108, 103, 'TPL', '2017-2018'),
(416, 87, 104, 'RPL 1', '2017-2018'),
(417, 87, 104, 'RPL 2', '2017-2018'),
(418, 87, 104, 'RPL 3', '2017-2018'),
(419, 87, 104, 'TPL', '2017-2018'),
(420, 87, 104, 'ANM 1', '2017-2018'),
(421, 87, 104, 'ANM 2', '2017-2018'),
(422, 87, 104, 'TKR 1', '2017-2018'),
(423, 87, 104, 'TKR 2', '2017-2018'),
(424, 88, 105, 'RPL 1', '2017-2018'),
(425, 88, 105, 'RPL 2', '2017-2018'),
(426, 88, 105, 'RPL 3', '2017-2018'),
(427, 88, 105, 'TPL', '2017-2018'),
(428, 88, 105, 'ANM 1', '2017-2018'),
(429, 88, 105, 'ANM 2', '2017-2018'),
(430, 88, 105, 'TKR 1', '2017-2018'),
(431, 88, 105, 'TKR 2', '2017-2018'),
(432, 110, 106, 'TKR 1', '2017-2018'),
(433, 110, 106, 'TKR 2', '2017-2018'),
(434, 93, 106, 'RPL 1', '2017-2018'),
(435, 93, 106, 'RPL 2', '2017-2018'),
(436, 93, 106, 'RPL 3', '2017-2018'),
(437, 93, 106, 'TPL', '2017-2018'),
(438, 93, 106, 'ANM 1', '2017-2018'),
(439, 93, 106, 'ANM 2', '2017-2018'),
(440, 93, 106, 'TKR 1', '2017-2018'),
(441, 93, 106, 'TKR 2', '2017-2018'),
(442, 89, 107, 'RPL 1', '2017-2018'),
(443, 89, 107, 'RPL 2', '2017-2018'),
(444, 89, 107, 'RPL 3', '2017-2018'),
(445, 90, 107, 'TPL', '2017-2018'),
(446, 90, 107, 'TKR 1', '2017-2018'),
(447, 90, 107, 'TKR 2', '2017-2018'),
(448, 110, 107, 'TPL', '2017-2018'),
(449, 111, 108, 'TPL', '2017-2018'),
(450, 111, 108, 'TKR 1', '2017-2018'),
(451, 111, 108, 'TKR 2', '2017-2018'),
(452, 112, 108, 'TPL', '2017-2018'),
(453, 112, 108, 'TKR 1', '2017-2018'),
(454, 112, 108, 'TKR 2', '2017-2018'),
(455, 96, 108, 'RPL 1', '2017-2018'),
(456, 96, 108, 'RPL 2', '2017-2018'),
(457, 96, 108, 'RPL 3', '2017-2018'),
(458, 96, 108, 'TPL', '2017-2018'),
(459, 96, 108, 'ANM 1', '2017-2018'),
(460, 96, 108, 'ANM 2', '2017-2018'),
(461, 96, 108, 'TKR 1', '2017-2018'),
(462, 96, 108, 'TKR 2', '2017-2018'),
(463, 97, 109, 'RPL 1', '2017-2018'),
(464, 97, 109, 'RPL 2', '2017-2018'),
(465, 97, 109, 'RPL 3', '2017-2018'),
(466, 97, 109, 'TPL', '2017-2018'),
(467, 97, 109, 'ANM 1', '2017-2018'),
(468, 97, 109, 'ANM 2', '2017-2018'),
(469, 97, 109, 'TKR 1', '2017-2018'),
(470, 97, 109, 'TKR 2', '2017-2018'),
(471, 98, 109, 'RPL 1', '2017-2018'),
(472, 98, 109, 'RPL 2', '2017-2018'),
(473, 98, 109, 'RPL 3', '2017-2018'),
(474, 98, 109, 'TPL', '2017-2018'),
(475, 98, 109, 'ANM 1', '2017-2018'),
(476, 98, 109, 'ANM 2', '2017-2018'),
(477, 98, 109, 'TKR 1', '2017-2018'),
(478, 98, 109, 'TKR 2', '2017-2018'),
(479, 99, 110, 'RPL 1', '2017-2018'),
(480, 99, 110, 'RPL 2', '2017-2018'),
(481, 99, 110, 'RPL 3', '2017-2018'),
(482, 99, 110, 'TPL', '2017-2018'),
(483, 99, 110, 'ANM 1', '2017-2018'),
(484, 99, 110, 'ANM 2', '2017-2018'),
(485, 99, 110, 'TKR 1', '2017-2018'),
(486, 99, 110, 'TKR 2', '2017-2018'),
(487, 100, 110, 'RPL 1', '2017-2018'),
(488, 100, 110, 'RPL 2', '2017-2018'),
(489, 100, 110, 'RPL 3', '2017-2018'),
(490, 100, 110, 'TPL', '2017-2018'),
(491, 100, 110, 'ANM 1', '2017-2018'),
(492, 100, 110, 'ANM 2', '2017-2018'),
(493, 100, 110, 'TKR 1', '2017-2018'),
(494, 100, 110, 'TKR 2', '2017-2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL,
  `jenis` enum('TEORI','LABORATORIUM') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`, `kapasitas`, `jenis`) VALUES
(1, 'Ruang 1', NULL, 'TEORI'),
(2, 'Ruang 2', NULL, 'TEORI'),
(3, 'Ruang 3', NULL, 'TEORI'),
(4, 'Ruang 4', NULL, 'TEORI'),
(5, 'Ruang 5', NULL, 'TEORI'),
(6, 'Ruang 6', NULL, 'TEORI'),
(7, 'Ruang 7', NULL, 'TEORI'),
(8, 'Ruang 8', NULL, 'TEORI'),
(9, 'Ruang 9', NULL, 'TEORI'),
(10, 'Ruang 10', NULL, 'TEORI'),
(11, 'Ruang 11', NULL, 'TEORI'),
(12, 'Ruang 12', NULL, 'TEORI'),
(13, 'Ruang 13', NULL, 'TEORI'),
(14, 'Ruang 14', NULL, 'TEORI'),
(15, 'Ruang 15', NULL, 'TEORI'),
(16, 'Ruang 16', NULL, 'TEORI'),
(17, 'Ruang 17', 34, 'TEORI'),
(18, 'Ruang 18', 0, 'TEORI'),
(19, 'Ruang 19', 0, 'TEORI'),
(20, 'Ruang 20', 0, 'TEORI'),
(21, 'Ruang 21', 0, 'TEORI'),
(22, 'Ruang 22', 0, 'TEORI'),
(23, 'Ruang 23', 0, 'TEORI'),
(24, 'Ruang 24', 0, 'TEORI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `level` varchar(20) NOT NULL,
  `status` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `level`, `status`) VALUES
(1, 'ima', '90843576aaa5d2861830289e821b0a737e9baf1a', 'admin', 'Y'),
(2, 'guru', 'ac1dadf0e00da94d8b637e29d592de43812f4242', 'guru', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_tidak_bersedia`
--

CREATE TABLE `waktu_tidak_bersedia` (
  `kode` int(10) NOT NULL,
  `kode_guru` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
