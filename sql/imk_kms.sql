-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2015 at 11:34 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imk_kms`
--

-- --------------------------------------------------------

--
-- Table structure for table `balita`
--

CREATE TABLE IF NOT EXISTS `balita` (
  `ID_balita` varchar(10) NOT NULL,
  `ID_petugas` varchar(3) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `Tanggal_lahir` date NOT NULL,
  `Jenis_kelamin` varchar(100) NOT NULL,
  `Urutan_anak` int(11) NOT NULL,
  `Nama_ayah` varchar(30) NOT NULL,
  `Pekerjaan_ayah` varchar(30) NOT NULL,
  `Nama_ibu` varchar(30) NOT NULL,
  `Pekerjaan_ibu` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balita`
--

INSERT INTO `balita` (`ID_balita`, `ID_petugas`, `Nama`, `Tanggal_lahir`, `Jenis_kelamin`, `Urutan_anak`, `Nama_ayah`, `Pekerjaan_ayah`, `Nama_ibu`, `Pekerjaan_ibu`, `Alamat`, `No_hp`) VALUES
('B01', 'P01', 'Mardiana Sekarsari', '2015-04-01', 'Perempuan', 0, '', '0', '', '', '', 0),
('B02', 'P02', 'Adian Latifa', '2014-06-02', 'Laki-laki', 0, '', '0', '', '', '', 0),
('B03', 'P03', 'Yuna Sugianela', '2014-11-02', 'Perempuan', 0, '', '0', '', '', '', 0),
('P04', 'P02', 'Rayn', '2015-05-02', 'on', 1, 'DJ Uned', 'Mahasiswa', 'Ryana', 'Ibu Rumah Tangga', 'Keputih 3A no. 45, Surabaya', 2147483647),
('P05', 'P02', 'Abinaya Alexi', '2014-01-31', 'on', 2, 'Achilles', 'Dosen', 'Aryani', 'Mahasiswa', 'Keputih 3C, Surabaya', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_swedish_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1c29c40424e86aba20898135b2c2249994d5a735', '::1', 1432544704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433323534343639353b6c6f676765645f696e7c623a313b757365726d61696c7c733a31373a2274657374696e674067616d696c2e636f6d223b),
('f20b8f796beaf5d1f1241ef644222dfa8c44d4d0', '::1', 1432536473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433323533363437333b),
('fdba117983ae658f10feb3c8c4e7d9559d845a78', '::1', 1432545798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433323534353534353b6c6f676765645f696e7c623a313b757365726d61696c7c733a31353a2266616e647940676d61696c2e636f6d223b);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `ID FAQ` varchar(3) NOT NULL,
  `ID Petugas` varchar(3) DEFAULT NULL,
  `Pertanyaan` varchar(1024) NOT NULL,
  `Jawaban` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`ID FAQ`, `ID Petugas`, `Pertanyaan`, `Jawaban`) VALUES
('F01', 'P02', 'Bayi saya sudah 2 hari ini tidak mau minum susu, dia berumur 6 bulan, saya hanya memberinya air putih, saya khawatir, apa yang terjadi dengan bayi saya?', 'Ada beberapa kemungkinan: kurang sehat, kesakitan, tersumbat hidungnya, sariawan, sedang tumbuh gigi, mengantuk, bingung puting, tidak mampu mengambil cukup ASI untuk memenuhi kebutuhannya, posisinya tidak menyenangkan bagi si bayi, terganggu isapanya, dibatasi jawdal isapannya, terganggu semburan ASI, merasa terganggu oleh perubahan. Cobalah dicek alasan alasan tersebut, mana yang paling sesuai dengan kondisi ibu dan anaknya. Tetapi yang jelas, teruslah berusaha, dan berikan ketenangan pada ibunya, karena ibu yang gelisah juga akan mempengaruhi bayinya, mungkin baik juga mengajaknya si anak bermain-main dulu.\r\n'),
('F02', 'P01', 'Kenapa Bayi saya sering menangis dan tak kunjung berhenti?', 'Bayi Anda sering menangis? Mungkin ia mengalami fase baby milestones. Saat fase ini bayi akan memiliki kemampuan berkomunikasi, berbahasa, sosial, dan memiliki kemampuan motorik. Namun sayangnya, banyak bayi yang ketika mengalami fase ini menangis tanpa henti. Penelitian dari Kanada menunjukkan bahwa pada lima bulan pertama, bayi baru lahir akan mengalami periode di mana bayi akan terus menangis selama dua jam. Dalam sehari, bayi akan menangis sebanyak lima jam. Hal ini tidak tentu, karena beberapa bayi mungkin tipe yang diam, beberapa lagi diantaranya, dan beberapa sering menangis berjam-jam, ujar Ronald Barr, M.D., professor dari University of British Columbia di Vancouver (bayi dalam periode ini akan memiliki kolik). Fase di mana bayi mengalami hal itu dinamakan "the period of PURPLE crying” oleh Dr. Barr. Dengan memberikannya nama “PURPLE”, Dr. Barr berharap orangtua akan memahami bahwa tangisan bayi yang terus-menerus bukan kesalahan Anda semata-mata. Bicaralah dengan dokter untuk mengurangi penyebab med'),
('F03', 'P03', 'Saya ibu muda, saya ingin tahu jenis-jenis penyakit kulit pada bayi serta penanganannya harus bagaimana? Terima Kasih', 'Jenis penyakit kulit dan pengobatannya untuk bayi juga berbeda beda tergantung apa jenis penyakit kulit yang menyerang bayi. Jika terkena biang keringat sebaiknya bayi diberi pakaian yang longgar sehingga ruam pada bayi akan berangsur-angsur kurang. Penyebab biang keringat adalah udara yang terlalu panas ataupun lembab. Berbeda lagi jika bayi anda terkena intertigo. Cara mengobati intertigo pada bayi dengan menggunakan krim penghalang zinc oxide atau petroluemm jelly pada bayi. Caranya dengan membasuh lipatan kulit bayi dan memberinya krim tersebut. Sedang kan untuk eksim dan demartitis sebaiknya berkonsultasi pada dokter. Pasalnya bayi membutuhkan antibiotik untuk mengobati penyakit kulitnya. Untuk seborrhea anda bisa menggunakan baby oil untuk dioleskan pada bagian yang terkena. Penyakit kulit tak hanya menyerang orang dewasa. Bayi malah sangat rentan terkena penyakit kulit pasalnya struktur sel masih lemah dan ikatan sel yang belum solid. Sehingga jika terlihat gejala gejala kulit kemerahan dan menimbulkan');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_imunisasi`
--

CREATE TABLE IF NOT EXISTS `jadwal_imunisasi` (
  `ID_Jadwal` varchar(3) NOT NULL,
  `ID_Petugas` varchar(3) NOT NULL,
  `Tanggal` date NOT NULL,
  `Memo` varchar(1024) NOT NULL,
  `Tipe` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_imunisasi`
--

INSERT INTO `jadwal_imunisasi` (`ID_Jadwal`, `ID_Petugas`, `Tanggal`, `Memo`, `Tipe`) VALUES
('J01', 'P01', '2015-06-16', 'Imunisasi Campak I', 'Wajib'),
('J02', 'P02', '2015-07-31', 'Imunisasi Campak II', 'Wajib (Bagi yang belum imunisasi campak I)'),
('J03', 'P03', '2015-05-30', 'Imunisasi Polio', 'Wajib'),
('J04', 'P01', '2015-05-31', 'Imunisasi Polio', 'Wajib');

-- --------------------------------------------------------

--
-- Table structure for table `perkembangan_balita`
--

CREATE TABLE IF NOT EXISTS `perkembangan_balita` (
  `ID_Balita` varchar(10) NOT NULL,
  `Berat_Badan` int(11) NOT NULL,
  `Tinggi/Panjang` int(11) NOT NULL,
  `Catatan` varchar(1024) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkembangan_balita`
--

INSERT INTO `perkembangan_balita` (`ID_Balita`, `Berat_Badan`, `Tinggi/Panjang`, `Catatan`, `Timestamp`) VALUES
('B01', 3, 70, 'Naik 0.5 Kg dari bulan lalu', '2015-05-24 06:06:46'),
('B02', 6, 50, 'Berat badan ideal', '2015-05-24 06:08:05'),
('B03', 11, 100, 'Cukup Kurus', '2015-05-24 06:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `ID_Petugas` varchar(3) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `No_telp` varchar(20) DEFAULT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`ID_Petugas`, `Nama`, `No_telp`, `Email`, `Password`) VALUES
('P01', 'Kharisma Nur Annisa', '0821219293', 'kharisma@gmail.com', '5113100026'),
('P02', 'Fandy Ahmad', '08219887212', 'fandy@gmail.com', '5112100047'),
('P03', 'Djuned Fernando Djusdek', '08291721921', 'djuned@gmail.com', '5112100071'),
('P04', 'Testing', '08080808', 'testing@gamil.com', '123'),
('P05', 'Adry Gracio', '080989999', 'tes@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE IF NOT EXISTS `saran` (
  `ID_Saran` varchar(3) NOT NULL,
  `ID_Petugas` varchar(3) NOT NULL,
  `Saran` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`ID_Saran`, `ID_Petugas`, `Saran`) VALUES
('S01', 'P01', 'Pastikan bayi Anda telah mendapatkan Imunisasi Wajib'),
('S02', 'P02', 'Saat imunisasi pastikan kondisi bayi Anda dalam keadaan sehat'),
('S03', 'P03', 'Beri makanan yang biasa dimakan oleh keluarga 3 kali sehari yang terdiri dari nasi, lauk pauk, sayur dan buah. Beri makanan selingan 2 kali sehari diantara waktu makan seperti bubur kacang hijau, biskuit, nagasari. Jangan berikan makanan yang manis dan lengket diantara waktu makan'),
('S04', 'P01', 'Beri Asi setiap kali bayi menginginkan. Tambahkan telur/ayam/ikan/tempe/tahu/daging sapi/wortel/bayam/kacang hijau/santan/minyak pada bubur nasi. Beri bubur nasi 3 kali sehari. Setiap kali makan diberikan sesuai umur: 6 bulan : 6 sendok makan, 7 bulan : 7 sendok makan, 8 bulan : 8 sendok makan, 9 bulan : 9 sendok makan, 10 bulan : 10 sendok makan, 11 bulan : 11 sendok makan. Beri makanan selingan 2 kali sehari diantaranya waktu makan seperti bubur kacang hijau, pisang, biskuit, nagasari dan sebagainya.Beri buah-buahan atau sari buah'),
('S05', 'P02', 'Beri Asi setiap kali bayi menginginkan sedikitnya 8 kali sehari, pagi, maupun malam Jangan berikan makanan atau minuman lain selain ASI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balita`
--
ALTER TABLE `balita`
 ADD PRIMARY KEY (`ID_balita`), ADD KEY `ID Petugas` (`ID_petugas`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD PRIMARY KEY (`ID FAQ`), ADD KEY `ID Petugas` (`ID Petugas`);

--
-- Indexes for table `jadwal_imunisasi`
--
ALTER TABLE `jadwal_imunisasi`
 ADD PRIMARY KEY (`ID_Jadwal`), ADD KEY `ID petugas` (`ID_Petugas`);

--
-- Indexes for table `perkembangan_balita`
--
ALTER TABLE `perkembangan_balita`
 ADD KEY `ID Balita` (`ID_Balita`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
 ADD PRIMARY KEY (`ID_Petugas`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
 ADD PRIMARY KEY (`ID_Saran`), ADD KEY `ID Petugas` (`ID_Petugas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
