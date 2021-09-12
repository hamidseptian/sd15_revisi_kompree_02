-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2021 at 05:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd15`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `id_wali_kelas` varchar(5) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `hadir` int(3) NOT NULL,
  `sakit` int(3) NOT NULL,
  `izin` int(3) NOT NULL,
  `alfa` int(3) NOT NULL,
  `tinggi` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `penglihatan` varchar(25) NOT NULL,
  `pendengaran` varchar(25) NOT NULL,
  `gigi` varchar(25) NOT NULL,
  `penyakit_lainnya` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(15) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `username`, `password`, `level`, `foto`) VALUES
(6, 'Adit', '111', '111', 'Admin', ''),
(7, 'Unknown', '22', '22', 'Master', '');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(25) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `tmpl` varchar(25) NOT NULL,
  `tgll` date NOT NULL,
  `nip` varchar(25) NOT NULL,
  `gol` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `tmt` date NOT NULL,
  `mulai_masuk` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `ijazah_tahun` varchar(25) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `jk`, `tmpl`, `tgll`, `nip`, `gol`, `jabatan`, `tmt`, `mulai_masuk`, `alamat`, `nohp`, `ijazah_tahun`, `foto`) VALUES
(1, 'Hamid Septian', 'L', 'Padang', '2021-02-10', '11', '3A', 'Kepsek', '2021-02-09', '', 'Maransi', '081212121', '2019', ''),
(2, 'Faisal Maryono', '', '', '0000-00-00', '22', '', '', '0000-00-00', '2020', '', '', '', ''),
(5, 'Rozaldi Rosman', 'P', 'Padang city', '2008-03-14', '000000', 'Kasubag Data', '3AB', '2013-03-14', '', 'Maransi city', '00000999', '2022', ''),
(4, 'Ghino', '', '', '0000-00-00', '44', '', '', '0000-00-00', '', '', '', '', ''),
(6, 'Udin ', 'L', 'Padang', '2019-01-19', '45345', 'Kasubag', '3A', '2019-01-19', '', 'Maransi', '00000999', '2020', ''),
(7, 'Dhina', 'P', 'Padang city', '2008-03-14', '000000', 'Kasubag Data', '3AB', '2013-03-14', '', 'Maransi city', '00000999', '2022', ''),
(8, 'Admindar', 'P', 'Padang city', '2008-03-14', '000000', 'Kasubag Data', '3AB', '2013-03-14', '', 'Maransi city', '00000999', '2022', ''),
(9, 'Oktario Rosman', 'P', 'Padang city', '2008-03-14', '000000', 'Kasubag Data', '3AB', '2013-03-14', '', 'Maransi city', '00000999', '2022', ''),
(10, 'Rahmi dewi', 'P', 'Padang city', '2008-03-14', '000000', 'Kasubag Data', '3AB', '2013-03-14', '', 'Maransi city', '00000999', '2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `tingkat` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `tingkat`) VALUES
(1, '1A', '1'),
(2, '1B', '1'),
(3, '2A', '2'),
(5, '3A', '3'),
(6, '4A', '4'),
(7, '5A', '5'),
(8, '6A', '6');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id_ks` int(11) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_wali_kelas` varchar(5) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `id_next_kelas` varchar(5) NOT NULL,
  `id_ta_next` varchar(5) NOT NULL,
  `status_ks` varchar(15) NOT NULL,
  `catatan_wali_kelas_semester_1` text NOT NULL,
  `catatan_wali_kelas_semester_2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id_ks`, `id_siswa`, `id_kelas`, `id_wali_kelas`, `id_ta`, `id_next_kelas`, `id_ta_next`, `status_ks`, `catatan_wali_kelas_semester_1`, `catatan_wali_kelas_semester_2`) VALUES
(1, '78', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(2, '79', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(3, '80', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(4, '81', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(5, '82', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(6, '83', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(7, '84', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(8, '85', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(9, '86', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(10, '87', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(11, '88', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(12, '89', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(13, '90', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(14, '91', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(15, '92', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(16, '93', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(17, '94', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(18, '95', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(19, '96', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(20, '97', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(21, '98', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(22, '99', '1', '1', '1', '3', '2', 'Lanjut', '', ''),
(23, '78', '3', '3', '2', '', '', 'Tinggal', '', ''),
(24, '79', '3', '3', '2', '', '', 'Tinggal', '', ''),
(25, '80', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(26, '81', '3', '3', '2', '', '', 'Tinggal', '', ''),
(27, '82', '3', '3', '2', '', '', 'Tinggal', '', ''),
(28, '83', '3', '3', '2', '', '', 'Tinggal', '', ''),
(29, '84', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(30, '85', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(31, '86', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(32, '87', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(33, '88', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(34, '89', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(35, '90', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(36, '91', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(37, '92', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(38, '93', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(39, '94', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(40, '95', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(41, '96', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(42, '97', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(43, '98', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(44, '99', '3', '3', '2', '5', '3', 'Lanjut', '', ''),
(45, '80', '5', '4', '3', '', '', 'Tinggal', '', ''),
(46, '84', '5', '4', '3', '', '', 'Tinggal', '', ''),
(47, '85', '5', '4', '3', '', '', 'Tinggal', '', ''),
(48, '86', '5', '4', '3', '', '', 'Tinggal', '', ''),
(49, '87', '5', '4', '3', '', '', 'Tinggal', '', ''),
(50, '88', '5', '4', '3', '', '', 'Tinggal', '', ''),
(51, '89', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(52, '90', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(53, '91', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(54, '92', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(55, '93', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(56, '94', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(57, '95', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(58, '96', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(59, '97', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(60, '98', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(61, '99', '5', '4', '3', '6', '4', 'Lanjut', '', ''),
(62, '89', '6', '5', '4', '', '', 'Tinggal', '', ''),
(63, '90', '6', '5', '4', '', '', 'Tinggal', '', ''),
(64, '91', '6', '5', '4', '', '', 'Tinggal', '', ''),
(65, '92', '6', '5', '4', '', '', 'Tinggal', '', ''),
(66, '93', '6', '5', '4', '', '', 'Tinggal', '', ''),
(67, '94', '6', '5', '4', '7', '5', 'Lanjut', '', ''),
(68, '95', '6', '5', '4', '7', '5', 'Lanjut', '', ''),
(69, '96', '6', '5', '4', '7', '5', 'Lanjut', '', ''),
(70, '97', '6', '5', '4', '7', '5', 'Lanjut', '', ''),
(71, '98', '6', '5', '4', '7', '5', 'Lanjut', '', ''),
(72, '99', '6', '5', '4', '7', '5', 'Lanjut', '', ''),
(73, '94', '7', '6', '5', '', '', 'Tinggal', '', ''),
(74, '95', '7', '6', '5', '8', '6', 'Lanjut', '', ''),
(75, '96', '7', '6', '5', '8', '6', 'Lanjut', '', ''),
(76, '97', '7', '6', '5', '8', '6', 'Lanjut', '', ''),
(77, '98', '7', '6', '5', '8', '6', 'Lanjut', '', ''),
(78, '99', '7', '6', '5', '8', '6', 'Lanjut', '', ''),
(79, '95', '8', '7', '6', '', '', 'Lulus', '', ''),
(80, '96', '8', '7', '6', '', '', 'Tinggal', '', ''),
(81, '97', '8', '7', '6', '', '', 'Lulus', '', ''),
(82, '98', '8', '7', '6', '', '', 'Lulus', '', ''),
(83, '99', '8', '7', '6', '', '', 'Lulus', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(4) NOT NULL,
  `tingkat` varchar(5) NOT NULL,
  `nama_mapel` text NOT NULL,
  `kkm` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `tingkat`, `nama_mapel`, `kkm`) VALUES
(1, '1', 'Matematika', 75),
(2, '1', 'Bahasa INdonesia', 65),
(3, '1', 'ipa', 90),
(4, '2', 'Matematika', 60),
(5, '2', 'Bahasa INdonesia', 55),
(6, '2', 'IPA', 99),
(7, '3', 'IPA', 70),
(8, '3', 'IPS', 87),
(9, '1', 'bta', 50),
(10, '4', 'Matematika', 60),
(11, '4', 'ipa', 40),
(12, '5', 'Algoritma', 90),
(13, '5', 'Hukum', 50),
(14, '6', 'Bahasa INdonesia', 88);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `id_wali_kelas` varchar(5) NOT NULL,
  `id_mapel` varchar(5) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_kelas`, `id_ta`, `semester`, `id_wali_kelas`, `id_mapel`, `id_siswa`, `nilai`) VALUES
(1, '1', '1', '2', '1', '1', '78', 90),
(2, '1', '1', '2', '1', '2', '78', 90),
(3, '1', '1', '2', '1', '3', '78', 90),
(4, '1', '1', '2', '1', '9', '78', 90),
(5, '3', '2', '2', '6', '4', '78', 77),
(6, '3', '2', '2', '6', '5', '78', 66),
(7, '3', '2', '2', '6', '6', '78', 55),
(8, '3', '2', '2', '6', '4', '81', 77),
(9, '3', '2', '2', '6', '5', '81', 66),
(10, '3', '2', '2', '6', '6', '81', 89),
(11, '3', '2', '2', '6', '4', '83', 55),
(12, '3', '2', '2', '6', '5', '83', 44),
(13, '3', '2', '2', '6', '6', '83', 33),
(14, '3', '2', '2', '6', '4', '82', 55),
(15, '3', '2', '2', '6', '5', '82', 44),
(16, '3', '2', '2', '6', '6', '82', 66),
(17, '3', '2', '2', '6', '4', '79', 80),
(18, '3', '2', '2', '6', '5', '79', 88),
(19, '3', '2', '2', '6', '6', '79', 76),
(20, '8', '6', '2', '9', '14', '95', 40),
(21, '8', '6', '2', '9', '14', '96', 56),
(22, '8', '6', '2', '9', '14', '97', 50),
(23, '8', '6', '2', '9', '14', '98', 50),
(24, '8', '6', '2', '9', '14', '99', 33);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_siswa` varchar(5) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_siswa`, `tanggal_bayar`, `keterangan`, `jumlah`) VALUES
(3, '27', '2021-05-10', 'dp', 5000),
(6, '27', '2021-05-10', 'ok', 5000),
(7, '10', '2021-05-10', 'awal', 80000000),
(8, '10', '2021-05-10', 'lunas', 110000),
(9, '99', '2021-06-21', 'awal', 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE `pengambilan` (
  `id_pengambilan` int(11) NOT NULL,
  `id_siswa` varchar(5) NOT NULL,
  `barang` varchar(25) NOT NULL,
  `biaya` int(16) NOT NULL,
  `waktu_pengambilan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id_pengambilan`, `id_siswa`, `barang`, `biaya`, `waktu_pengambilan`) VALUES
(3, '19', 'Buku Paket', 90000, '2021-04-18'),
(5, '10', 'LKS', 100000, '2021-04-18'),
(7, '27', 'Baju Pramuka se', 10000, '2021-04-18'),
(9, '10', 'Baju Pramuka se', 10000, '2021-05-10'),
(10, '10', 'Almamater', 80000000, '2021-05-10'),
(11, '99', 'Baju Pramuka se', 10000, '2021-06-21'),
(12, '99', 'LKS', 100000, '2021-06-21'),
(13, '99', 'Komputer', 5000000, '2021-06-21'),
(14, '78', 'Baju Pramuka se', 10000, '2021-06-24'),
(15, '78', 'Buku Paket', 90000, '2021-06-24'),
(16, '78', 'Almamater', 80000000, '2021-06-24'),
(17, '78', 'Komputer', 5000000, '2021-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `nama_pengumuman` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_input` date NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `nama_pengumuman`, `keterangan`, `tgl_input`, `file`) VALUES
(3, 'Pengumuan baru', '<p>harap lengkapi</p>\r\n', '2021-02-08', '090244Data Pengunjung Wisata(7).pdf'),
(4, 'sdvbhdsb', '<p>skbvsdkbvsl</p>\r\n', '2021-02-08', ''),
(5, 'scjbcsjbjb', '<p>jbjbscjbscjb</p>\r\n', '2021-02-08', '084915Data Pengunjung Wisata(6).pdf'),
(6, '3458034', '<p>lnclasn</p>\r\n', '2021-02-08', '090525Data Pengunjung Wisata(5).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `penunjang_belajar`
--

CREATE TABLE `penunjang_belajar` (
  `id_penunjang` int(11) NOT NULL,
  `nama_penunjang` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `biaya` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penunjang_belajar`
--

INSERT INTO `penunjang_belajar` (`id_penunjang`, `nama_penunjang`, `keterangan`, `biaya`) VALUES
(3, 'Baju Pramuka se', 'coklat', 10000),
(4, 'LKS', '', 100000),
(5, 'Buku Paket', 'PSS', 90000),
(6, 'Almamater', '', 80000000),
(7, 'Komputer', '', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(25) NOT NULL,
  `nis` int(16) NOT NULL,
  `nisn` varchar(16) NOT NULL,
  `tmpl` varchar(25) NOT NULL,
  `tgll` date NOT NULL,
  `jk` varchar(1) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `pendidikan_sebelumnya` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `nama_ayah` varchar(25) NOT NULL,
  `nama_ibu` varchar(25) NOT NULL,
  `kerja_ayah` varchar(25) NOT NULL,
  `kerja_ibu` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `foto` text NOT NULL,
  `status_siswa` varchar(25) NOT NULL,
  `daftar_via` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `kelas_awal` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nis`, `nisn`, `tmpl`, `tgll`, `jk`, `agama`, `pendidikan_sebelumnya`, `alamat`, `no_telp`, `nama_ayah`, `nama_ibu`, `kerja_ayah`, `kerja_ibu`, `password`, `foto`, `status_siswa`, `daftar_via`, `keterangan`, `kelas_awal`) VALUES
(7, 'GENTA SURYA DARNA', 2296, '1234567', 'Padang', '2021-02-02', 'L', 'Islam', 'TK', 'Maransi City', '08121223213', 'Nasril', 'ZUrnida', 'ojol', 'irt', '1234567', '210213014927logoandroid.PNG', 'Aktif', 'Offline', '', ''),
(6, 'FAJRI MARZUKI', 22, '4643', 'Padang', '2021-02-16', 'L', 'Islam', 'TKIT', 'Padang', '3523', 'fefwe', 'gdfg3', 'sdgdfh', 'dfgdfvdfgd', '123', '210213122822fokis.jpg', 'Aktif', 'Offline', '', ''),
(4, 'DESRIZAL RANI FITRI', 2263, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2263', '', 'Aktif', '', '', ''),
(3, 'DAVID ILHAM', 2260, '4334', 'Marani', '2021-03-06', 'L', 'Islam', 'SMP', 'disana', '3', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210331080447bg_home.jpg', 'Aktif', 'Offline', '', ''),
(1, 'AFIFA RAHMADANI', 2238, '66', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '66', '', 'Aktif', '', '', ''),
(2, 'ALFRENDOM BINTAR', 2243, '77', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '77', '', 'Aktif', '', '', ''),
(8, 'HENDRI VALDI', 2300, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2300', '', 'Aktif', '', '', ''),
(9, 'LUSI JAYUSMAN', 2317, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2317', '', 'Aktif', '', '', ''),
(10, 'M. ARFINUS AKBAR', 2319, '111', '', '0000-00-00', 'L', '', '', '', '', 'Ucok', 'Upiak', '', '', '111', '', 'Aktif', '', '', ''),
(12, 'MUHAMAD RAHUL SAPUTRA', 2331, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2331', '', 'Aktif', '', '', ''),
(13, 'NADIA RAHMADANI', 2348, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2348', '', 'Aktif', '', '', ''),
(14, 'NALDI HARIANTO', 2349, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2349', '', 'Aktif', '', '', ''),
(15, 'NURAINI SAFITRI', 2358, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2358', '', 'Aktif', '', '', ''),
(16, 'REVALINA KLARISSA', 2377, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '123', '', 'Aktif', '', '', ''),
(17, 'RIDHO FEBRI ANANDA', 2384, '0', 'padang', '2021-05-11', 'L', 'islam', 'tk', 'padang', '0812', 'nas', 'ida', 'ojol', 'irt', '2384', '', 'Aktif', '', '', ''),
(18, 'RINO AIDIL SAPUTRA', 2389, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2389', '', 'Aktif', '', '', ''),
(19, 'RIVA SAPITRI', 2391, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2391', '', 'Aktif', '', '', ''),
(20, 'RUZI HARDIAN', 2394, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2394', '', 'Aktif', '', '', ''),
(21, 'SARI MAHARANI PUTRI', 2400, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2400', '', 'Aktif', '', '', ''),
(22, 'SAYFUL ANDANIL', 2401, '55', 'padang', '2020-04-29', 'L', 'Islam', 'SMP', 's', '1424', 'kdls', 'klsk', 'dslk', 'sdls', '123', '210328015938hamid_fp.PNG', 'Aktif', 'Offline', '', ''),
(23, 'SILVI GUSNI ASNATUL KHAIR', 2405, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2405', '', 'Aktif', '', '', ''),
(24, 'TIRA RIMAWATI PUTRI', 2417, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2417', '', 'Aktif', '', '', ''),
(25, 'WAHYU RASIDI', 2425, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2425', '', 'Aktif', '', '', ''),
(26, 'YULIA ANANI', 2431, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2431', '', 'Aktif', '', '', ''),
(27, 'ZULEYKA DELLA ZAHARA', 2436, '0', 'Padang', '2021-05-10', 'P', 'Islam', 'TK', 'padang', '0812', 'Nas', 'ida', 'ojol', 'irt', '2436', '', 'Aktif', '', '', ''),
(28, 'ABDULLAH AZZAM', 2236, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2236', '', 'Aktif', '', '', ''),
(29, 'ARIF ABDILLAH', 2250, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2250', '', 'Aktif', '', '', ''),
(30, 'CICI SRIWAHYU NINGSIH', 2254, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2254', '', 'Aktif', '', '', ''),
(31, 'CICI ZULIYANTI', 2255, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2255', '', 'Aktif', '', '', ''),
(32, 'ELVINA', 2277, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2277', '', 'Aktif', '', '', ''),
(33, 'FIFO KHAER ARIFIN', 2290, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2290', '', 'Aktif', '', '', ''),
(34, 'FITRI', 2293, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2293', '', 'Aktif', '', '', ''),
(35, 'GIRVARUZI KHALID', 2297, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2297', '', 'Aktif', '', '', ''),
(36, 'IKBAL', 2301, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2301', '', 'Aktif', '', '', ''),
(37, 'IKRA MUHAMMAD FALENTINO', 2302, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2302', '', 'Aktif', '', '', ''),
(39, 'LISA FAUZIAH RAMADHANI', 2316, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2316', '', 'Aktif', '', '', ''),
(40, 'MELATI APRIANI', 2328, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2328', '', 'Aktif', '', '', ''),
(41, 'MUHAMMAD AL FIQRAM', 2336, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2336', '', 'Aktif', '', '', ''),
(42, 'MUHAMMAD AL HADID', 2338, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2338', '', 'Aktif', '', '', ''),
(43, 'NIRAWATI', 2354, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2354', '', 'Aktif', '', '', ''),
(44, 'NOVY FEBRI ANGGRAINI', 2357, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2357', '', 'Aktif', '', '', ''),
(45, 'RAJA ASLAM SYAWIR', 2369, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2369', '', 'Aktif', '', '', ''),
(46, 'RESI ASMI', 2375, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2375', '', 'Aktif', '', '', ''),
(47, 'RESTU SYAHDA', 2376, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2376', '', 'Aktif', '', '', ''),
(48, 'RIAN PUTRA MAIFIDA', 2382, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2382', '', 'Aktif', '', '', ''),
(49, 'SALSA BILA', 2397, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2397', '', 'Aktif', '', '', ''),
(50, 'SELVI JULIA PUTRI', 2402, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2402', '', 'Calon Siswa', '', '', ''),
(51, 'TEDY FIRMANSYAH', 2413, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2413', '', 'Calon Siswa', '', '', ''),
(52, 'UTARI', 2420, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2420', '', 'Calon Siswa', '', '', ''),
(53, 'VANESYA IVANKA', 2421, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2421', '', 'Calon Siswa', '', '', ''),
(54, 'ZULFI ANDRE', 2437, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2437', '', 'Calon Siswa', '', '', ''),
(55, 'ADI RAHMANTO', 2231, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2231', '', 'Calon Siswa', '', '', ''),
(56, 'ADINDA PUSPA SARI', 2232, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2232', '', 'Calon Siswa', '', '', ''),
(57, 'ALFAUZI IKHRAM', 2242, '22', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '22', '', 'Calon Siswa', '', '', ''),
(58, 'ANJELIKA SEPTIA', 2247, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2247', '', 'Calon Siswa', '', '', ''),
(59, 'ARIF RAHMAT SAPUTRA', 2251, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2251', '', 'Calon Siswa', '', '', ''),
(60, 'DIMAS ARI', 2268, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2268', '', 'Calon Siswa', '', '', ''),
(61, 'ELFIRA FITRIA ARIFIN', 2274, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2274', '', 'Calon Siswa', '', '', ''),
(62, 'ELSA JUNIARTI', 2276, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2276', '', 'Calon Siswa', '', '', ''),
(63, 'FIKHRA WINATA', 2291, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2291', '', 'Calon Siswa', '', '', ''),
(64, 'ILHAM SAFRIANTO', 2304, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2304', '', 'Calon Siswa', '', '', ''),
(65, 'INDRY NURFADILLAH', 2305, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2305', '', 'Calon Siswa', '', '', ''),
(66, 'LIDIA AMELIA SUNDARI', 2315, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2315', '', 'Calon Siswa', '', '', ''),
(67, 'LUTHFIANSYAH GAYO', 2318, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2318', '', 'Calon Siswa', '', '', ''),
(68, 'MUHAMMAD FAUZAN', 2342, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2342', '', 'Calon Siswa', '', '', ''),
(69, 'MUHAMMAD VICKY', 2345, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2345', '', 'Calon Siswa', '', '', ''),
(70, 'MUTIARA AULIA', 2347, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2347', '', 'Calon Siswa', '', '', ''),
(71, 'PUTRI INDRI YANI', 2362, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2362', '', 'Calon Siswa', '', '', ''),
(72, 'REZA ARRIDHO', 2378, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2378', '', 'Calon Siswa', '', '', ''),
(73, 'SANTIA RISNI', 2399, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2399', '', 'Calon Siswa', '', '', ''),
(74, 'SUCI INTAN SARI', 2410, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2410', '', 'Calon Siswa', '', '', ''),
(75, 'TITI SANTIYA', 2418, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2418', '', 'Calon Siswa', '', '', ''),
(76, 'FAJRATUL ADNI', 2283, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2283', '', 'Calon Siswa', '', '', ''),
(77, 'INDAH CAHYANI', 2440, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2440', '', 'Calon Siswa', '', '', ''),
(78, 'MUHAMMAD PUTRA', 2349, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2349', '', 'Aktif', '', '', ''),
(79, 'REZA OKTA SHINTIA', 2379, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2379', '', 'Aktif', '', '', ''),
(80, 'STEFI MONIKA', 2408, '0', 'RRRRR', '2021-03-30', 'L', 'Islam', 'SMP', 'Disana', '081221', 'Udin', 'Upiak', '-', '-', '123', '210331075745qw.png', 'Aktif', 'Offline', '', ''),
(81, 'ADIT ANUGRAH', 2233, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2233', '', 'Aktif', '', '', ''),
(82, 'AFIFA FAUZIAH', 2238, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2238', '', 'Aktif', '', '', ''),
(83, 'ALIF SURYADI', 2244, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2244', '', 'Aktif', '', '', ''),
(84, 'APRIZA WIRANDA', 2248, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2248', '', 'Aktif', '', '', ''),
(85, 'DESI DELFITA', 2262, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2262', '', 'Aktif', '', '', ''),
(86, 'DIMAS ARIO PUTRA', 2269, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2269', '', 'Aktif', '', '', ''),
(87, 'EKA JELITA PUTRI', 2273, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2273', '', 'Aktif', '', '', ''),
(88, 'ELMI NOVITA', 2275, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2275', '', 'Aktif', '', '', ''),
(89, 'FAJAR SIDDIK DJAAFAR', 0, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '', '', 'Aktif', '', '', ''),
(90, 'FAUZIAH MAILANI', 2286, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2286', '', 'Aktif', '', '', ''),
(91, 'HALIMUR RASYID', 2299, '0', '', '0000-00-00', 'L', '', '', '', '', '', '', '', '', '2299', '', 'Aktif', '', '', ''),
(92, 'IRWAN FADHILA', 2307, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2307', '', 'Aktif', '', '', ''),
(93, 'MARINA SYARAH', 2326, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2326', '', 'Aktif', '', '', ''),
(94, 'MASYURAH NABILLA SARI', 2327, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2327', '', 'Aktif', '', '', ''),
(95, 'NATHASYA NOVIA RAMADHAN', 2350, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2350', '', 'Selesai', '', '', ''),
(96, 'NAURA AMELIA PUTRI', 2352, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2352', '', 'Aktif', '', '', ''),
(97, 'NISA ANA DINDA', 2355, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2355', '', 'Selesai', '', '', ''),
(98, 'RARA FITRI', 2371, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2371', '', 'Selesai', '', '', ''),
(99, 'RIDO MUHAMAD PRATAMA', 2386, '0', 'padang', '2012-12-12', 'L', 'Islam', 'SMP', 'padang', '081212121212', 'Nas', 'ida', 'ojol', 'itr', '6666', '210624081106padi.jpg', 'Selesai', 'Offline', '', ''),
(100, 'RIZKA AULIA PUTRI', 2392, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2392', '', 'Calon Siswa', '', '', ''),
(101, 'SALSA ASHYIFA', 2396, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2396', '', 'Calon Siswa', '', '', ''),
(102, 'SITI SA`DIAH', 2406, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2406', '', 'Calon Siswa', '', '', ''),
(103, 'ZHIARA SINTA MUTIARANI', 2434, '0', '', '0000-00-00', 'P', '', '', '', '', '', '', '', '', '2434', '', 'Calon Siswa', '', '', ''),
(104, 'Hamid Septian', -2, '-2', 'Ampang', '2019-12-11', 'P', 'Hindu', 'TK IT', 'Maransi', '-1', 'nasril', 'zurnida', 'ojek', 'irt', '123', '210213120035cbt us.PNG', 'Calon Siswa', 'Offline', '', ''),
(105, 'A', 12312312, '1231231', '1A', '1111-11-12', 'L', 'Islam', '1', '1', '1', '1', '1', '1', '1', '123', '210220113506fokis.jpg', 'Calon Siswa', 'Offline', '', ''),
(106, 'Ucok Baba', 12433, '232', 'Padang', '2021-04-27', 'P', 'Kristen', 'TK IT', 'disana', '-2', 'kdls', 'klsk', 'dslk', 'sdls', '123', '210328125423logoandroid.PNG', 'Calon Siswa', 'Offline', '', ''),
(107, '8', 8, '8', '8', '1212-08-08', 'L', 'Islam', '8', '8', '8', '8', '8', '8', '8', '123', '210405083251himasi.jpg', 'Calon Siswa', 'Offline', '', ''),
(108, '6', 6, '6', '6', '0006-06-06', 'L', 'Islam', '6', '6', '6', '6', '6', '6', '6', '123', '210405083748pantiasuhan.PNG', 'Calon Siswa', 'Online', '', ''),
(109, 'Udin penyok', 1234, '1234', 'Padang', '2022-05-10', 'L', 'Islam', 'SMP', 'Maransi', '0812', 'Udin', 'penyok', 'ojol', 'irt', '123', '210409051604mapala.jpg', 'Calon Siswa', 'Online', '', ''),
(110, 'ucok baba', 123, '0', 'padang', '2022-05-12', 'P', 'Kristen', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'erhbdsfx', 'sdls', '123', '210411072241hotel.PNG', 'Aktif', 'Offline', '', ''),
(111, 'Zurnida', 123456, '', 'Padang City', '2022-05-12', 'P', 'Kristen', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210411073009mapala.jpg', 'Aktif', 'Online', '', ''),
(112, 'cssdv', -3, '', 'Padang City', '2019-02-09', 'P', 'Hindu', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210411073037hotel.PNG', 'Calon Siswa', 'Online', '', ''),
(113, 'vvkhb', -2, '', 'Padang City', '2019-02-09', 'P', 'Hindu', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210411073138coverdicoding.PNG', 'Calon Siswa', 'Online', '', ''),
(114, 'M R X', 99, '', 'padang', '1212-12-12', 'L', 'Islam', 'SMP', 'disana', '3', 'Udin', 'Upiak', 'ojek', 'sdls', '123', '210411073226personalweb.PNG', 'Calon Siswa', 'Online', '', ''),
(115, 'ppppppppppppppp', 12345, '', 'sbsucb', '2022-05-12', 'L', 'Kristen', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210411073727hotel.PNG', 'Aktif', 'Offline', '', ''),
(116, 'Ucok Baba', 9090, '', '909090', '0099-09-09', 'P', 'Hindu', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210416015329fokis.jpg', '', 'Offline', '', ''),
(117, 'sac sjkh bvkdjfhb', -2, '', 'Padang City', '2019-02-14', 'P', 'Hindu', 'SMP', 'disana', '-2', 'ndg', 'klsk', 'dslk', 'sdls', '123', '210416015358hotel.PNG', '', 'Offline', 'dddddddddddd', '3'),
(118, 'ppppppppppppppppppppppppp', -2, '', 'Padang City', '2019-02-14', 'P', 'Kristen', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210416015439logoandroid.PNG', '', 'Offline', 'karena begini', '3'),
(119, '111111111111', 111, '', 'pp', '2019-02-14', 'P', 'Hindu', 'SMP', 'disana', '-2', 'Udin', 'klsk', 'dslk', 'sdls', '123', '210416015507qw.png', 'Aktif', 'Offline', 'pppppppp', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `no` int(11) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `nama_ta` varchar(25) NOT NULL,
  `semester` int(2) NOT NULL,
  `status_ta` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`no`, `id_ta`, `nama_ta`, `semester`, `status_ta`) VALUES
(1, '1', '2019', 1, 'Selesai'),
(2, '1', '2019', 2, 'Selesai'),
(3, '2', '2020', 1, 'Selesai'),
(4, '2', '2020', 2, 'Selesai'),
(5, '3', '2021', 1, 'Selesai'),
(6, '3', '2021', 2, 'Selesai'),
(7, '4', '2022', 1, 'Selesai'),
(8, '4', '2022', 2, 'Selesai'),
(9, '5', '2023', 1, 'Selesai'),
(10, '5', '2023', 2, 'Selesai'),
(11, '6', '2014', 1, 'Selesai'),
(12, '6', '2014', 2, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` varchar(5) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status_wali_kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_walikelas`, `id_guru`, `id_kelas`, `username`, `password`, `status_wali_kelas`) VALUES
(1, '1', '1', '11', '123', '1'),
(2, '4', '2', '44', '123', '1'),
(3, '6', '3', '33', '123', '1'),
(4, '2', '5', '22', '123', '1'),
(5, '5', '6', '55', '123', '1'),
(6, '8', '7', '88', '123', '1'),
(7, '9', '8', 'qq', 'qq', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pengambilan`
--
ALTER TABLE `pengambilan`
  ADD PRIMARY KEY (`id_pengambilan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `penunjang_belajar`
--
ALTER TABLE `penunjang_belajar`
  ADD PRIMARY KEY (`id_penunjang`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penunjang_belajar`
--
ALTER TABLE `penunjang_belajar`
  MODIFY `id_penunjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
