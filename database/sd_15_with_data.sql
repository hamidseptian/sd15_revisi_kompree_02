-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 06:23 AM
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
-- Database: `sd_15_with_data`
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

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_kelas`, `id_ta`, `semester`, `id_wali_kelas`, `id_siswa`, `hadir`, `sakit`, `izin`, `alfa`, `tinggi`, `berat`, `penglihatan`, `pendengaran`, `gigi`, `penyakit_lainnya`) VALUES
(1, '1', '1', '1', '', '1', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(2, '1', '1', '1', '', '2', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(3, '2', '1', '1', '', '3', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(4, '2', '1', '1', '', '4', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(5, '3', '1', '1', '', '5', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(6, '3', '1', '1', '', '6', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(7, '4', '1', '1', '', '7', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(8, '4', '1', '1', '', '8', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(9, '5', '1', '1', '', '9', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(10, '5', '1', '1', '', '10', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(11, '6', '1', '1', '', '11', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(12, '6', '1', '1', '', '12', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(13, '1', '1', '2', '', '1', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(14, '1', '1', '2', '', '2', 0, 1, 1, 1, 0, 0, '', '', '', '');

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
(1, 'Rohani, S.Pd', 'P', 'Padang', '1966-08-21', '19660821 199005 2001', 'KEPALA SEKOLAH', 'PEMBINA TK.I IV/B', '2016-04-01', '', 'KOMP.PERUM BSD 1 BLOK R PASIA NAN TIGO ', '-', 'S1 UNP-2003	', ''),
(2, 'Yunidar, S.Pd', 'P', 'Padang', '1967-06-25', '19630625 199303 2001', ' GURU KELAS	', 'PEMBINA IV/B', '2014-09-01', '2020', 'PERUM BARINGIN INDAH 1 6/7', '-', 'S1 UT-2004	', ''),
(5, 'Yulianti, S.Pd ,SD', 'P', 'Padang ', '1970-10-05', '19701005 199303 2001', 'GURU KELAS', 'PEMBINA IV/B', '2015-09-01', '', 'KOMP GRIYA BLOK C1/14', '00000999', 'S1 UT-2011	', ''),
(6, 'Linda, S.Pd', 'P', 'Padang', '1969-04-16', '19690416 200802 2003', 'GURU KELAS', 'PEMBINA III/A', '2016-04-01', '', 'KOMP JABAL RAHMAH ', '-', 'S1 UT-20013	', ''),
(7, 'Riska Prima Putri, S.Pd', 'P', 'Solok', '1984-11-12', '-', 'GURU KELAS', '-', '0001-01-01', '', 'JLN.AMPANG RT IV/07 19A', '-', 'S1 UBH-2011	', ''),
(8, 'Vivit Triani', 'P', 'Padang ', '1984-02-28', '-', 'OPERATOR', '', '0001-01-01', '', 'JLN.ANDALAS TIMUR II 133', '-', 'D1 DUTA KOM-2004	', ''),
(9, 'Fitra Suryani, S.Pd,I', 'P', 'Sungai Landin', '1988-10-10', '-', 'GURU KELAS', '-', '0001-01-01', '', 'JLN.BANDU PARAK GORONG', '-', 'S1 IAIN -2012	', ''),
(10, 'Melisa, S.Pd.I', 'P', 'Padang', '1991-05-06', '-', 'GURU PAI', '-', '0001-01-01', '', 'JLN.GAJAH MADA No 32', '-', 'S1 IAIN -2014	', ''),
(11, 'Erlina Marlini, S.E', 'P', 'Padang', '1987-03-09', '-', 'PUSTAKA', '-', '0001-01-01', '', 'JLN.BANUARAN', '-', 'S1 TAMSIS -2015	', ''),
(12, 'Yessi Permata Sari, S.Pd', 'P', 'Padang', '1993-12-31', '-', 'GURU KELAS', '-', '0001-01-01', '', 'PERUM PPI BLOK 5.2 PASIR KANDANG', '-', 'S1 UBH-2015	', '');

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
(2, '2A', '2'),
(3, '3A', '3'),
(4, '4A', '4'),
(5, '5A', '5'),
(6, '6A', '6');

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
(1, '1', '1', '1', '1', '2', '2', 'Lanjut', '', 'Lebih DiTingkatkan lagi Nilai di Kelas 2'),
(2, '2', '1', '1', '1', '', '', 'Lanjut', '', 'Lebih Giat Belajar nya'),
(3, '3', '2', '2', '1', '', '', 'Aktif', '', ''),
(4, '4', '2', '2', '1', '', '', 'Aktif', '', ''),
(5, '5', '3', '3', '1', '', '', 'Aktif', '', ''),
(6, '6', '3', '3', '1', '', '', 'Aktif', '', ''),
(7, '7', '4', '4', '1', '', '', 'Aktif', '', ''),
(8, '8', '4', '4', '1', '', '', 'Aktif', '', ''),
(9, '9', '5', '5', '1', '', '', 'Aktif', '', ''),
(10, '10', '5', '5', '1', '', '', 'Aktif', '', ''),
(11, '11', '6', '6', '1', '', '', 'Lulus', '', 'ppppoooo'),
(12, '12', '6', '6', '1', '', '', 'Aktif', '', ''),
(13, '1', '2', '2', '2', '', '', 'Aktif', '', '');

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
(1, '1', 'Agama', 50),
(2, '1', 'PPKN', 50),
(3, '1', 'Bahasa Indonesia', 50),
(4, '1', 'Matematika', 50),
(5, '1', 'Seni Budaya', 50),
(6, '1', 'Olahraga', 50),
(7, '1', 'BTA', 50),
(8, '2', 'Agama', 50),
(9, '2', 'PPKN', 50),
(10, '2', 'Bahasa Indonesia', 50),
(11, '2', 'Matematika', 50),
(12, '2', 'Seni Budaya', 50),
(13, '2', 'Olahraga', 50),
(14, '2', 'BTA', 50),
(15, '3', 'Agama', 50),
(16, '3', 'PPKN', 50),
(17, '3', 'Bahasa Indonesia', 50),
(18, '3', 'Matematika', 50),
(19, '3', 'Seni Budaya', 50),
(20, '3', 'Olahraga', 50),
(21, '3', 'BTA', 50),
(22, '4', 'Agama', 50),
(23, '4', 'Bahasa Indonesia', 50),
(24, '4', 'Matematika', 50),
(25, '4', 'Olahraga', 50),
(26, '5', 'Bahasa Indonesia', 50),
(27, '5', 'Agama', 50),
(28, '5', 'Matematika', 50),
(29, '5', 'Olahraga', 50),
(30, '6', 'Matematika', 50),
(31, '6', 'Bahasa Indonesia', 50),
(32, '6', 'Agama', 50),
(33, '6', 'Olahraga', 50);

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
(1, '1', '1', '1', '12', '1', '1', 81),
(2, '1', '1', '1', '12', '2', '1', 82),
(3, '1', '1', '1', '12', '3', '1', 76),
(4, '1', '1', '1', '12', '4', '1', 71),
(5, '1', '1', '1', '12', '5', '1', 73),
(6, '1', '1', '1', '12', '6', '1', 96),
(7, '1', '1', '1', '12', '7', '1', 93),
(8, '1', '1', '1', '12', '1', '2', 91),
(9, '1', '1', '1', '12', '2', '2', 95),
(10, '1', '1', '1', '12', '3', '2', 89),
(11, '1', '1', '1', '12', '4', '2', 79),
(12, '1', '1', '1', '12', '5', '2', 84),
(13, '1', '1', '1', '12', '6', '2', 83),
(14, '1', '1', '1', '12', '7', '2', 94),
(15, '2', '1', '1', '7', '8', '3', 83),
(16, '2', '1', '1', '7', '9', '3', 86),
(17, '2', '1', '1', '7', '10', '3', 81),
(18, '2', '1', '1', '7', '11', '3', 90),
(19, '2', '1', '1', '7', '12', '3', 92),
(20, '2', '1', '1', '7', '13', '3', 76),
(21, '2', '1', '1', '7', '14', '3', 79),
(22, '2', '1', '1', '7', '8', '4', 89),
(23, '2', '1', '1', '7', '9', '4', 90),
(24, '2', '1', '1', '7', '10', '4', 90),
(25, '2', '1', '1', '7', '11', '4', 87),
(26, '2', '1', '1', '7', '12', '4', 77),
(27, '2', '1', '1', '7', '13', '4', 79),
(28, '2', '1', '1', '7', '14', '4', 90),
(29, '3', '1', '1', '6', '15', '5', 89),
(30, '3', '1', '1', '6', '16', '5', 86),
(31, '3', '1', '1', '6', '17', '5', 83),
(32, '3', '1', '1', '6', '18', '5', 78),
(33, '3', '1', '1', '6', '19', '5', 79),
(34, '3', '1', '1', '6', '20', '5', 80),
(35, '3', '1', '1', '6', '21', '5', 90),
(36, '3', '1', '1', '6', '15', '6', 90),
(37, '3', '1', '1', '6', '16', '6', 80),
(38, '3', '1', '1', '6', '17', '6', 81),
(39, '3', '1', '1', '6', '18', '6', 85),
(40, '3', '1', '1', '6', '19', '6', 90),
(41, '3', '1', '1', '6', '20', '6', 94),
(42, '3', '1', '1', '6', '21', '6', 96),
(43, '4', '1', '1', '9', '22', '7', 90),
(44, '4', '1', '1', '9', '23', '7', 87),
(45, '4', '1', '1', '9', '24', '7', 92),
(46, '4', '1', '1', '9', '25', '7', 95),
(47, '4', '1', '1', '9', '22', '8', 80),
(48, '4', '1', '1', '9', '23', '8', 87),
(49, '4', '1', '1', '9', '24', '8', 82),
(50, '4', '1', '1', '9', '25', '8', 92),
(51, '5', '1', '1', '2', '26', '9', 92),
(52, '5', '1', '1', '2', '27', '9', 80),
(53, '5', '1', '1', '2', '28', '9', 76),
(54, '5', '1', '1', '2', '29', '9', 89),
(55, '5', '1', '1', '2', '26', '10', 80),
(56, '5', '1', '1', '2', '27', '10', 82),
(57, '5', '1', '1', '2', '28', '10', 84),
(58, '5', '1', '1', '2', '29', '10', 92),
(59, '6', '1', '1', '5', '30', '11', 80),
(60, '6', '1', '1', '5', '31', '11', 81),
(61, '6', '1', '1', '5', '32', '11', 85),
(62, '6', '1', '1', '5', '33', '11', 91),
(63, '6', '1', '1', '5', '30', '12', 92),
(64, '6', '1', '1', '5', '31', '12', 82),
(65, '6', '1', '1', '5', '32', '12', 87),
(66, '6', '1', '1', '5', '33', '12', 78),
(67, '1', '1', '2', '12', '1', '1', 98),
(68, '1', '1', '2', '12', '2', '1', 91),
(69, '1', '1', '2', '12', '3', '1', 79),
(70, '1', '1', '2', '12', '4', '1', 81),
(71, '1', '1', '2', '12', '5', '1', 86),
(72, '1', '1', '2', '12', '6', '1', 91),
(73, '1', '1', '2', '12', '7', '1', 95),
(74, '1', '1', '2', '12', '1', '2', 79),
(75, '1', '1', '2', '12', '2', '2', 75),
(76, '1', '1', '2', '12', '3', '2', 90),
(77, '1', '1', '2', '12', '4', '2', 76),
(78, '1', '1', '2', '12', '5', '2', 91),
(79, '1', '1', '2', '12', '6', '2', 80),
(80, '1', '1', '2', '12', '7', '2', 84),
(81, '6', '1', '2', '5', '30', '11', 60),
(82, '6', '1', '2', '5', '31', '11', 43),
(83, '6', '1', '2', '5', '32', '11', 34),
(84, '6', '1', '2', '5', '33', '11', 34);

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
(1, '2', '2021-09-06', 'DO', 45900);

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
(1, '2', 'Baju Olahraga 1 Stel', 150000, '2021-09-06'),
(2, '2', 'Dasi Merah', 70000, '2021-09-06'),
(3, '2', 'Baju Olahraga 1 Stel', 150000, '2021-09-06'),
(4, '2', 'Dasi Merah', 70000, '2021-09-06');

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
(7, 'Libur Idhul Adha', '<h2 style=\"font-style:italic\">Berhubungan&nbsp; hari esok adalah Tanggal merah maka besog sekolah akan di liburkan</h2>\r\n', '2021-08-16', '063306LIBUR IDUL ADHA.pdf'),
(8, 'Libur Kemerdekaan Indonesia', '<h2 style=\"font-style:italic;\">Berhubungan besog adalah tanggal 17 Agustus yang bertepatan dengan kemerdekaan Republik Indonesia , Maka Sekolah akan diliburkan selama 2 hari.</h2>\r\n', '2021-08-16', '011827Libur Hari Raya Kemerdekaan Indonesia.pdf');

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
(1, 'LKS Kelas 1', 'Buku LKS hanya untuk Kelas 1', 60000),
(2, 'Baju Olahraga 1 Stel', 'Baju Olahraga', 150000),
(3, 'Dasi Merah', 'Dasi Warna Merah', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(150) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `nisn` varchar(120) NOT NULL,
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
(1, 'AISYAH PUTRI ARYVA', '0673', '', 'Padang', '2013-11-23', 'P', 'Islam', 'TK', 'Komp. Cendana Tahap V Blok G/2		', '0', 'Ary Marta Putra', 'Nova Asrida', 'Karyawan Swasta', 'PNS', '123', '210905045532user.jpg', 'Aktif', 'Offline', '', '2'),
(2, 'ALWIZAN HADI PUTRA	', '0674', '', 'Padang', '2013-06-14', 'L', 'Islam', 'TK', 'Jl. Bandar Purus No. 58 D	', '0', 'Alfian	', 'Surti Sibarani', 'Karyawan Swasta', 'Mengurus Rumah Tangga', '123', '210905045637user.jpg', 'Aktif', 'Offline', '', '2'),
(3, 'ANNISA PRIMADONA MURSAL', '0665', '', 'Padang', '2012-11-23', 'P', 'Islam', 'TK', 'Jl.Ujung Gurun 10	', '0', 'Ade Hemawan	', 'Ayu Rina Winanti', 'Wiraswasta', 'Mengurus Rumah Tangga', '123', '210905045838user.jpg', 'Aktif', 'Offline', '', '2'),
(4, 'ARUMNI HAFIZARAHIM DASYA', '0671', '', 'Padang', '2012-07-11', 'P', 'Islam', 'TK', 'Jl. Bandar Purus No. 56		', '1', 'Eko Alviandi', 'Misna Mubarokah', 'Karyawan Swasta', 'Mengurus Rumah Tangga', '123', '210905045938user.jpg', 'Aktif', 'Offline', '', '2'),
(5, 'NATASYA WULANDARI', '0619', '', 'Padang', '2010-02-11', 'P', 'Islam', 'TK', 'Jl.Padang Pasir IX 6', '0', 'SUARDI EDISON', 'SURGAWATI', 'Wiraswasta', 'Mengurus Rumah Tangga', '123', '210905050154user.jpg', 'Aktif', 'Offline', '', '3'),
(6, 'BUNGA PAULA RAMADHAN', '0629', '', 'Padang', '2011-08-28', 'L', 'Islam', 'TK', 'Komp Vila Sentosa 11 B C 11		', '1', 'POLO RAMADHAN', 'AFRITA	', 'Buruh', 'Mengurus Rumah Tangga', '123', '210905050306user.jpg', 'Aktif', 'Offline', '', '3'),
(7, 'DAFI PRATAMA KURNIADI', '0617', '', 'Padang', '2010-08-25', 'L', 'Islam', 'TK', 'Jl.Bambu No 14		', '1', 'Hamdan', 'Fitri Komala Sari', 'Wiraswasta', 'Mengurus Rumah Tangga', '123', '210905050552user.jpg', 'Aktif', 'Offline', '', '4'),
(8, 'MEISYHA MULTI', '0614', '', 'Padang', '2010-02-13', 'P', 'Islam', 'TK', 'Jl.Karet No 43		', '1', 'Pepen Efendi', 'Irmayati', 'Pedagang', 'Mengurus Rumah Tangga', '123', '210905050716user.jpg', 'Aktif', 'Offline', '', '4'),
(9, ' DAVA NURFAHRIYANSYAH DEVA', '0572', '', 'Jakarta', '2008-12-23', 'L', 'Islam', 'TK', 'JL.PADANG PASIR IX 67	', '1', 'SYAFRUDIN', 'HARMAINI', 'Wiraswasta', 'Mengurus Rumah Tangga', '123', '210905050847user.jpg', 'Aktif', 'Offline', '', '5'),
(10, 'DINDA RAHMADINI PUTRI', '0573', '', 'Padang', '2009-06-19', 'P', 'Islam', 'TK', 'JL.PADANG PASIR IX 24B	', '1', 'YUSRIZAL', 'MARDIAH', 'Wiraswasta', 'Mengurus Rumah Tangga', '123', '210905050945user.jpg', 'Aktif', 'Offline', '', '5'),
(11, 'ALIFA FAHRUNISA', '0599', '', 'Padang', '2008-11-09', 'P', 'Islam', 'TK', '-', '0', '-', '-', '-', '-', '123', '210905051122user.jpg', 'Selesai', 'Offline', '', '6'),
(12, 'ASYFA RUBBIAN ANDHINI', '1616', '', 'Padang', '2009-05-11', 'P', 'Islam', 'TK', '-', '0', '-', '-', '-', '-', '123', '210905051202user.jpg', 'Aktif', 'Offline', '', '6');

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
(3, '2', '2020', 1, 'Aktif');

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
(1, '12', '1', '12', '123', '0'),
(2, '7', '2', '13', '123', '0'),
(3, '6', '3', '14', '123', '1'),
(4, '9', '4', '15', '123', '1'),
(5, '2', '5', '16', '123', '1'),
(6, '5', '6', '17', '123', '1'),
(9, '8', '1', '-', '123', '1'),
(10, '11', '2', '20', '123', '1');

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
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penunjang_belajar`
--
ALTER TABLE `penunjang_belajar`
  MODIFY `id_penunjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
