-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 02:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasiit`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tgl_dibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`, `tgl_dibuat`) VALUES
(10, 'PC', '2022-11-13 12:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategori1`
--

CREATE TABLE `kategori1` (
  `idkategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tgl_dibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori1`
--

INSERT INTO `kategori1` (`idkategori`, `nama_kategori`, `tgl_dibuat`) VALUES
(7, 'Toner', '2022-11-12 22:26:30'),
(8, 'Tinta', '2022-11-12 22:26:34'),
(9, 'Pita', '2022-11-12 22:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `idcart` int(11) NOT NULL,
  `no_nota` int(11) NOT NULL,
  `no_nota1` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang1`
--

CREATE TABLE `keranjang1` (
  `idcart` int(11) NOT NULL,
  `no_nota` int(11) NOT NULL,
  `no_nota1` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `idlaporan` int(11) NOT NULL,
  `no_nota` varchar(50) NOT NULL,
  `nama_kasir` varchar(20) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `id_printer` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `totalbeli` int(11) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl_sub` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`idlaporan`, `no_nota`, `nama_kasir`, `idpelanggan`, `id_printer`, `catatan`, `totalbeli`, `pembayaran`, `kembalian`, `tgl_sub`) VALUES
(31, '', 'admin', 0, '3', '', 27000, 27000, 0, '2022-11-13 05:03:43'),
(32, '', 'admin', 0, '4', '', 5000, 5000, 0, '2022-11-13 05:20:48'),
(33, '', 'admin', 0, '', '', 600000, 600000, 0, '2022-11-13 05:29:49'),
(34, '', 'admin', 0, '2', '', 600000, 600000, 0, '2022-11-13 05:30:33'),
(35, '', 'admin', 0, '2', '', 0, 0, 0, '2022-11-13 09:20:56'),
(36, '', 'admin', 0, '2', '', 600000, 600000, 0, '2022-11-13 09:21:04'),
(37, '', 'admin', 0, '4', '', 0, 0, 0, '2022-11-13 09:47:40'),
(38, '', 'admin', 0, '4', '', 600000, 600000, 0, '2022-11-13 09:47:48'),
(39, '', 'admin', 0, '3', '', 0, 0, 0, '2022-11-13 09:49:03'),
(40, '', 'admin', 0, '4', '', 600000, 600000, 0, '2022-11-13 12:23:16'),
(41, '', 'admin', 0, '3', '', 600000, 600000, 0, '2022-11-13 12:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `laporan1`
--

CREATE TABLE `laporan1` (
  `idlaporan` int(11) NOT NULL,
  `no_nota` varchar(50) NOT NULL,
  `no_nota1` varchar(100) CHARACTER SET armscii8 NOT NULL,
  `nama_kasir` varchar(20) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `id_printer` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `totalbeli` int(11) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl_sub` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan1`
--

INSERT INTO `laporan1` (`idlaporan`, `no_nota`, `no_nota1`, `nama_kasir`, `idpelanggan`, `id_printer`, `catatan`, `totalbeli`, `pembayaran`, `kembalian`, `tgl_sub`) VALUES
(31, '', 'AD1311221203001', 'admin', 0, '3', '', 27000, 27000, 0, '2022-11-13 05:03:43'),
(32, '', 'TNR1311221220204', 'admin', 0, '4', '', 5000, 5000, 0, '2022-11-13 05:20:48'),
(33, '', 'TNR1311221229123', 'admin', 0, '', '', 600000, 600000, 0, '2022-11-13 05:29:49'),
(34, '', 'TNR1311221230123', 'admin', 0, '2', '', 600000, 600000, 0, '2022-11-13 05:30:33'),
(35, '', 'TNR1311221620124', 'admin', 0, '2', '', 0, 0, 0, '2022-11-13 09:20:56'),
(36, '', 'TNR1311221621163', 'admin', 0, '2', '', 600000, 600000, 0, '2022-11-13 09:21:04'),
(37, '', 'TNR1311221647163', 'admin', 0, '4', '', 0, 0, 0, '2022-11-13 09:47:40'),
(38, '', 'TNR1311221647165', 'admin', 0, '4', '', 600000, 600000, 0, '2022-11-13 09:47:48'),
(39, '', 'TNR1311221648165', 'admin', 0, '3', '', 0, 0, 0, '2022-11-13 09:49:03'),
(40, '', 'TNR1311221935165', 'admin', 0, '1', '', 600000, 600000, 0, '2022-11-13 12:35:42'),
(41, '', 'TNR1311221937194', 'admin', 0, '5', '', 600000, 600000, 0, '2022-11-13 12:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_toko` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nama_toko`, `username`, `password`, `alamat`, `telepon`) VALUES
(1, 'IT Inventory', 'admin', '$2y$10$3BG4zxehcC7g0l7uC5Nl2.30LtflPcKCa2hwANN57gWpl7//7Loza', 'Jl. Lingkar Mega Kuningan Kav. E No. 1, The East Building Lt. 28, Kota Jakarta Selatan, DKI Jakarta ', '089635808393'),
(2, 'IT Inventory', 'Bobby', '$2y$10$3BG4zxehcC7g0l7uC5Nl2.30LtflPcKCa2hwANN57gWpl7//7Loza', 'Jl. Lingkar Mega Kuningan Kav. E No. 1, The East Building Lt. 28, Kota Jakarta Selatan, DKI Jakarta ', '089635808393'),
(3, 'IT Inventory', 'Riyan', '$2y$10$3BG4zxehcC7g0l7uC5Nl2.30LtflPcKCa2hwANN57gWpl7//7Loza', 'Jl. Lingkar Mega Kuningan Kav. E No. 1, The East Building Lt. 28, Kota Jakarta Selatan, DKI Jakarta ', '089635808393'),
(4, 'IT Inventory', 'Hendra', '$2y$10$3BG4zxehcC7g0l7uC5Nl2.30LtflPcKCa2hwANN57gWpl7//7Loza', 'Jl. Lingkar Mega Kuningan Kav. E No. 1, The East Building Lt. 28, Kota Jakarta Selatan, DKI Jakarta ', '089635808393'),
(5, 'IT Inventory', 'Dhanny', '$2y$10$3BG4zxehcC7g0l7uC5Nl2.30LtflPcKCa2hwANN57gWpl7//7Loza', 'Jl. Lingkar Mega Kuningan Kav. E No. 1, The East Building Lt. 28, Kota Jakarta Selatan, DKI Jakarta ', '089635808393'),
(7, 'IT Inventory', 'Rizal', '$2y$10$3BG4zxehcC7g0l7uC5Nl2.30LtflPcKCa2hwANN57gWpl7//7Loza', 'Jl. Lingkar Mega Kuningan Kav. E No. 1, The East Building Lt. 28, Kota Jakarta Selatan, DKI Jakarta ', '089635808393');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `telepon_pelanggan` varchar(15) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'Irma Febrina', '08568955444', '1912022794'),
(2, 'Deby Nurjihan', '081287572112', '2002202821'),
(3, 'Salsabila Takarina', '081312320487', '2010222870'),
(4, 'Josua Christofel Sianturi', '082249106326', '1307010870'),
(5, 'Adithia Andrian Nurkamiden', '0811877913', '1501011578'),
(6, 'Lastiantiza Rachmawati', '087885662925', '1811122715'),
(7, 'Dina Adilah', '081221672123', '1912032796'),
(8, 'adi mangun sucahyo', '081806882314', '1404141419'),
(9, 'agung wicaksono', '0818974488', '1210010045'),
(10, 'NIKULLA PUDJA DHEWANGGA', '0811205149', '1209030026'),
(11, 'Heru Zulhasri', '089664566000', '2207183092'),
(12, 'MOHAMAD FARID YASIN', '085747957071', '1811052710'),
(13, 'ALI YASIEN', '087775617132', '1502161815'),
(14, 'Rahmat Febrian', '087788038541', '1406021404'),
(15, 'Marcia Bernadeth', '085710252575', '1310210963'),
(16, 'Gita Tiara Febrian', '087797813719', '2203023032'),
(17, 'YOGI ARMANDA, ST', '082185906006', '1508032601'),
(18, 'Erik wahyudi', '088211109236', '1311011376'),
(19, 'Dedy Kurniawan', '083834509604', '1704252442'),
(20, 'Tasya Oki Setyowati', '089652201185', '2112012992'),
(21, 'MUHAMMAD DIKFA NURHADI', '08129294386', '1211210119'),
(22, 'SARI OCTAVIANI', '081519620909', '1307010871'),
(23, 'Febry Arifmawan', '081311611691', '1210310090'),
(24, 'M. Ramadhan Ikhsan Perdana', '08561366214', '1609052295'),
(25, 'WISHNU ESA PUTRA', '081319128868', '1210150078'),
(26, 'Rizki Triana Sari', '085781109791', '2107012931'),
(27, 'Dede Apriadi', '08558550333', '1210010048'),
(28, 'Aldo Harif Prasetiyo W', '08985182438', '1305200818'),
(29, 'Enny Susilowati', '08158331213', '1301020165'),
(30, 'HERI JOHARI', '08558550522', '1304010670'),
(31, 'Bambang Wicaksono DK', '085772072051', '1211190116'),
(32, 'Fikri Kusuma Wardhana', '082114067552', '1509211957'),
(33, 'Didan sudianto', '081311255972', '1303040623'),
(34, 'Suyut Wahyu Awaludin', '085210501340', '1508032701'),
(35, 'SANDY ADRIAN', '081224550017', '1303030444'),
(36, 'Diah Ayu Triasmadi', '08561462165', '2107262945'),
(37, 'I Ketut Gede Sudarma', '081337260777', '1405021431'),
(38, 'Ginanjar Arya Wibawa', '081280365719', '1412011562'),
(39, 'JUMHARI', '085797954198', '1305011345'),
(40, 'Deny Riyadi', '081329299596', '1303011328'),
(41, 'IVAN MULYANA', '08558550402', '1301020177'),
(42, 'Moory arumsari', '081286132644', '1210010054'),
(43, 'Hanifatir Raihani', '082177642513', '1912032795'),
(44, 'Riswan Ibrahim', '087845111899', '1511024103'),
(45, 'ANNISA YULIHARZA', '082171883300', '1912092797'),
(46, 'Agus mujoko', '087877658990', '1512140219'),
(47, 'Chatarina Ardita Kurnia Wijaya', '081315627047', '1501011625'),
(48, 'Desta Dauri Rasyid', '085883232292', '1704252446'),
(49, 'Rahmatullah Andy Prasetio', '081818131919', '1310231370'),
(50, 'Tulus Priyo Utomo', '081382175548', '1304240745'),
(51, 'FEBRIA RAKHMAWATI', '085921120658', '1511162027'),
(52, 'Ghazni Muslim', '08127272749', '1310160962'),
(53, 'Jepi Hermawan', '081808334282', '1304300754'),
(54, 'MUHAMMAD ILHAM', '085267841804', '1304050687'),
(55, 'Joyner Reinaldo Oroh', '082291131000', '1509142901'),
(56, 'Bismo Saladus', '087821149229', '1405121439'),
(57, 'Nedi Gunawan', '081276000938', '1509012404'),
(58, 'Irwan Prayudi', '081299333693', '1301020168'),
(59, 'Saifulloh', '081284943679', '1305011344'),
(60, 'VENTI MERARI', '082114284859', '1306030837'),
(61, 'Muhammad Farhan Andana', '08974858682', '2005262857'),
(62, 'Dedy Yuanda', '087786655554', '1310220969'),
(63, 'ANWAR', '085692265523', '1207271509'),
(64, 'Randi Andika', '085693038021', '1505041844'),
(65, 'Santri', '083896844774', '1212170150'),
(66, 'ROBIYANTO', '08558550485', '1301290200'),
(67, 'Solihat', '085212109083', '1210101337'),
(68, 'agung rais ananto', '087882969808', '1302010202'),
(69, 'Murizal Alhadi', '085277859252', '1506152102'),
(70, 'Nova Andriynasyah', '081389020607', '1303140641'),
(71, 'Ivan avilla', '081213390561', '2109222961'),
(72, 'Indra Aribuwono Karmadi', '0811928742', '1608182290'),
(73, 'Agus Santoso', '08558550316', '1304220735'),
(74, 'Chelsea Carolina', '08161374671', '2112133004'),
(75, 'Sugeng Priatno', '082213461339', '1401101264'),
(76, 'Raden andika permadi', '08179229091', '1210150075'),
(77, 'Rezqi Adhi Perdana', '089608810226', '1702062358'),
(78, 'FATIMAH', '085714881683', '1207271516'),
(79, 'Hafiz zikra', '081908199149', '1604052091'),
(80, 'Diryan Almas', '085821665955', '1607011606'),
(81, 'DANU DARMINTO', '081283071338', '1303170645'),
(82, 'zarkasih', '087823659109', '1511022013'),
(83, 'Sobroni', '08993828588', '1212170154'),
(84, 'Muhammad eko pangga', '085645500061', '1501011692'),
(85, 'bayu wibawa', '089608969797', '1305060777'),
(86, 'Yoga Pratama', '085330229547', '1407030804'),
(87, 'R. ADE P. TANDJUNG', '0811146137', '1211050097'),
(88, 'Mochamad taufan', '082237765559', '1604112186'),
(89, 'Makmun', '08567180001', '1301210195'),
(90, 'Taopik rahmat hidayat', '081280559848', '1902182764'),
(91, 'HERY WINARNO', '085646775593', '1303010403'),
(92, 'Mochammad fahrul ihza mahendra', '085736102255', '2111012979'),
(93, 'ENDRO PRAMONO', '08558550328', '1305060786'),
(94, 'Bayu Norsukma', '082285728213', '2003022827'),
(95, 'andista rahmatsyah', '0818701373', '1212030140'),
(96, 'Samsul Bahri', '085691251537', '1301281336'),
(97, 'Zerlianti Taroci M Laiskodat', '081281618154', '1303110631'),
(98, 'Pratiwi Sofia Corneli Moesamo', '085282999409', '1604112207'),
(99, 'Rendy anggoro prakoso rahardjo', '08998966720', '1303030524'),
(100, 'Muhammad Rifqi Arriza', '082330733739', '1210250802'),
(101, 'Hari rahbowo', '08562909795', '1303030525'),
(102, 'LAZUARDI FERARA', '085793017222', '1408041501'),
(103, 'dimas eko prasetyo', '082111832318', '1811122717'),
(104, 'Viora Tiffanisa Effendi', '082178278281', '1511022021'),
(105, 'Amanda Mega Putri', '08562312210', '1604112107'),
(106, 'Edi Setiawan', '083834355650', '1207270302'),
(107, 'Zainal', '082194021323', '1511024102'),
(108, 'Boby Kurniawan', '081361600699', '1508032501'),
(109, 'Dhatu Kretawiweka', '081932299349', '1304240743'),
(110, 'TUA EKO SAPUTRA SIHOMBING', '08566242967', '1310280982'),
(111, 'ari bijaksono', '08159346510', '1410011534'),
(112, 'Kusuma dewi', '089521168155', '1401271383'),
(113, 'Dika Pramana', '085647902009', '1311201240'),
(114, 'Indra Irmawan', '085781635455', '1311131382'),
(115, 'Jasmanto', '085283840995', '1403071390'),
(116, 'Rizky Intan Nuritasari', '087708950485', '2103102904'),
(117, 'Rachmat Ashadi', '081342483211', '1510053801'),
(118, 'SAID ALFAHMI', '082233418418', '1511024002'),
(119, 'SENO MANDRAGUNA SE', '081382000777', '1205010007'),
(120, 'Dedy siswanto', '08221356328', '1301011317'),
(121, 'Supriyadi', '082330068652', '1207270301'),
(122, 'Nantyoko Pranomo Wide', '08558550299', '1305010756'),
(123, 'Rahmad hidhayat', '087838559555', '1811012705'),
(124, 'Denald Citra Multi', '08811864235', '1501011629'),
(125, 'Dedy Susanto', '085367407567', '1404101418'),
(126, 'Dendipratama', '085692415205', '1303311329'),
(127, 'RAHMAD SYAPUTRA', '081934586473', '1310031002'),
(128, 'Hesty Aryani', '083897876261', '1301020164'),
(129, 'Fikri Yunizar', '081257000514', '1509013404'),
(130, 'Tasuah', '085959092577', '1207271511'),
(131, 'Alfiansyah', '081298552312', '1303030255'),
(132, 'IIS KARTIKA SARI', '082111741417', '1207271515'),
(133, 'Silivia Lawrence H', '085945558009', '2205303078'),
(134, 'VIKTORIANUS SANDI ARDIS', '081339458114', '1303030449'),
(135, 'RENDY ADITYA', '085691929668', '1211190117'),
(136, 'Deni perdana', '085794906936', '1311201071'),
(137, 'Robedra Mardinata Putra', '085931286396', '1507010215'),
(138, 'Muh. Salahuddin Tinni', '081227227492', '1501011707'),
(139, 'Trisna Suntara', '08558550520', '1305201349'),
(140, 'Tarmoko', '082242199170', '1510052804'),
(141, 'Ah hidayat', '085719084180', '1306171357'),
(142, 'Herry Purnomo', '08978316669', '1301140187'),
(143, 'Khairatunnisa', '089698059733', '1908192779'),
(144, 'Fadlul Rahman Usman, S.T.', '085242913300', '1812174104'),
(145, 'Ronal manalu', '08128570112', '1303030367'),
(146, 'Ika mei ratnasari', '082232266833', '1501011673'),
(147, 'BagusTiansyah', '085771108890', '1209031311'),
(148, 'ANDRI', '081291578465', '2112012991'),
(149, 'Muhammad ghozali', '085864053029', '1510051982'),
(150, 'Galant prabajati', '081240873123', '1809102689'),
(151, 'Ambrasius didik sapto nugroho', '082128620209', '1305010762'),
(152, 'Lina puspita', '085781870093', '1811012704'),
(153, 'Andria eko ramdatari', '082373264636', '1508012502'),
(154, 'Ordio Oppiesmal Putra Prayuda', '082232272923', '2111292989'),
(155, 'Aditya arifin', '082211515563', '1510051983'),
(156, 'Donny Arindria Arifin', '08558550308', '1303150643'),
(157, 'HARTOYO AGUS MURDIANTO, SE', '081282800969', '2011162873'),
(158, 'Arief rachman', '081319001223', '1304090704'),
(159, 'Ryantho B Sihombing', '08119541459', '1510051985'),
(160, 'Bagus dodi oktorio', '085645390539', '1406020404'),
(161, 'Arif ginanjar saputra', '08388610884', '1307010873'),
(162, 'Yan isdhiana pratama', '08123076543', '1303010243'),
(163, 'Muhammad Rizki Admaja', '085718577718', '1304250746'),
(164, 'Yudah', '085714305831', '1510151999'),
(165, 'Rivalinda Surya Pratama', '085772576007', '2002102817'),
(166, 'Mochamad Irfan', '081283100902', '1512142056'),
(167, 'Bino wicaksono', '087780747015', '1212030133'),
(168, 'Hari isna adi saputra', '085884337405', '1505041850'),
(169, 'DIAN KENCANA DEWI', '0811858560', '1301140185'),
(170, 'Lastyono Adi Putro', '081586395373', '2109152958'),
(171, 'Iman Sudjudi Nafianto', '081293730308', '1405021430'),
(172, 'Christian Nehemia Sitepu', '081271759414', '1304100709'),
(173, 'Bres Putirulan', '081332119080', '1504151306'),
(174, 'Ali Rahmad AR', '082230918254', '1303030548'),
(175, 'Catur Feriandi', '085726555558', '1510052703'),
(176, 'IGNATIUS LEO MAY', '085715866845', '1211270124'),
(177, 'Sendy Frandika', '085716277671', '1310290991'),
(178, 'Isnan Hidayat MS', '081361046844', '1704252497'),
(179, 'Devi Yan Permana', '089626055919', '1305240826'),
(180, 'Chyndhy Fernanda', '081807917250', '1409081524'),
(181, 'Khaerul Anwar Yudi Rachman, A.', '08988383088', '1508243401'),
(182, 'Agus Suryanto', '08986994595', '1603210521'),
(183, 'WAHYU LIL YUSRO', '082111111715', '2103012896'),
(184, 'NOVAN TRI PRASTYO UTOMO', '08563699931', '1304230739'),
(185, 'Bernardus Bagus Adiputro', '087782285057', '1303030272'),
(186, 'JEFRI GAN ROHENDY', '085882220204', '1207270768'),
(187, 'Cintya Iftinan', '085624112216', '1501011626'),
(188, 'Slamet Ariwitdyo', '082116252377', '1512281506'),
(189, 'Hery Nurwahyanto', '08558550307', '1212030141'),
(190, 'Akrimah Arsyi Nawangsasi', '08567194232', '1501011583'),
(191, 'Rangga renaldi muliawan', '081283212926', '1311201169'),
(192, 'Supriyono', '08558550321', '1303111334'),
(193, 'Fariyadin Ramlan A,Md', '081341986960', 'Fariyadin Ramlan'),
(194, 'Anggen Arismi A', '081210998012', '1501011602'),
(195, 'Rani Fatmawaty', '081294642589', '1303030363'),
(196, 'Syah Rafie Uddin Bima', '082144173662', '1304230740'),
(197, 'Brigitta Mega Nurinda', '081289991634', '2109272963'),
(198, 'rian danu pramukti', '08111018699', '1510262007'),
(199, 'Gilang m ramdan', '082114261605', '1311201103'),
(200, 'Tolop Sinaga, S.Kom', '081386397337', '1209100036'),
(201, 'TOHARI', '08558550539', '1405021426'),
(202, 'Yogi Julianto', '081806342410', '1506221911'),
(203, 'Ibnu Setiadi', '087875601784', '1512012044'),
(204, 'Mustofa kamala', '0O85811602058', '1402281385'),
(205, 'Randi saad', '0895410668673', '1507071916'),
(206, 'Dhimas Ardhiansyah Pratama', '081232926253', '1306260865'),
(207, 'Erwin PLM Samosir', '081316429759', '1402101288'),
(208, 'Moch.Boniex Nurwega', '082121156169', '1505181854'),
(209, 'Irfan Subekty', '087888693300', '1302180225'),
(210, 'ARSAN SYARIF ST', '081347969222', '1403031298'),
(211, 'REZA', '0811156668', '1307131359'),
(212, 'SAIFUL ANAM', '082136650895', '2003092829'),
(213, 'Jumrianto', '081345920696', '1504281902'),
(214, 'DANY ERVAWAN', '087838553407', '1508033206'),
(215, 'Anas Amrullah Hidayat', '081937985761', '1304230737'),
(216, 'Fransiska Jayanti Mandasari A.', '081319994898', '1301290201'),
(217, 'Rakhfadie', '081280577363', '2004012845'),
(218, 'Dicky Pratowo', '085838280040', '1510052604'),
(219, 'ZULKIFLIH, S.T', '06285216851515', '1510153804'),
(220, 'Sardjono', '08161127058', '2004012847'),
(221, 'TEUKU ADITYA OKTAFIANO', '08562237755', '1210010061'),
(222, 'Ahmad fauzi', '081219214474', '1310091363'),
(223, 'IIN NEVARDI', '085245345660', '1508243403'),
(224, 'Arfat Ardiansyah Yeslin', '085212339595', '2002172819'),
(225, 'David', '082113032455', '1310211365'),
(226, 'Putrinka Femmy', '087712061995', '1808062679'),
(227, 'Iswahyu', '082260004247', '1410151541'),
(228, 'Sri Hartanti', '081908781992', '1304120717'),
(229, 'KARTIKA FAUZIYAH WINARTO', '082295673577', '1804162655'),
(230, 'Nurul Fajriyah', '085720810092', '2207113091'),
(231, 'Mira Desliana', '06287829500898', '2112012996'),
(232, 'Syahrul Dani Prakoso', '085694585596', '2003192837'),
(233, 'Fatahillah', '081585940101', '1303011327'),
(234, 'Pradika Caesarizky Kurniahadi', '085222257218', '1508031919'),
(235, 'ZULFIKRI', '081278907838', '2106182927'),
(236, 'Wike Permata Putri', '0811871717', '1305200820'),
(237, 'MULIADI, ST', '085260707281', '1505152101'),
(238, 'La ode Bolo Rangka', '082233232144', '1307201362'),
(239, 'Yeremia verdika Permana', '085643594350', '1303030532'),
(240, 'Didy setiawan', '085810048320', '2001292814'),
(241, 'Adhitya Edhy Prabowo', '082110816861', '1306100849'),
(242, 'Andrei Prasetya', '081210241097', '1212030134'),
(243, 'Budi Hartono', '081373666345', '2107052932'),
(244, 'MUJIAMAN', '085754575245', '1409041603'),
(245, 'Bima Indra Sakti', '081286789500', '1208010011'),
(246, 'Ananda Kusumo Hartoyo', '08176062632', '1501011599'),
(247, 'Zulian halifatu rachman', '085726481373', '1303030495'),
(248, 'Widda Zara Sakina', '087881360017', '1311201219'),
(249, 'Azrial Azwar', '083891116968', '1403171406'),
(250, 'Dwi Bambang Puji Irawanto', '081218475800', '1304110715'),
(251, 'Zulfikar Hidayat Putra', '085215506996', '2005042850'),
(252, 'Arya Irfandi Mukti Utomo', '081282046104', '2005042851'),
(253, 'JERI GUMILAR', '085220289791', '1411170508'),
(254, 'ILHAM', '081385498029', '1303011325'),
(255, 'BINTORO IFANTRI ANUGROHO, ST', '081272097220', '1508012202'),
(256, 'Andi William', '082245178670', '1307240909'),
(257, 'Usep Tata', '083806352142', '1207270601'),
(258, 'Adam Lukman Syah', '085747251396', '2104262915'),
(259, 'Heri budi setiawan', '087885401520', '1303030316'),
(260, 'Achmat Iksan', '081317425664', '1305011338'),
(261, 'Turah, ST', '081806420284', '1503083221'),
(262, 'MUHAMAD NORFAHMI', '085751961041', '1402031278'),
(263, 'T. Murisal Asyadi', '082366440512', '1506152104'),
(264, 'Febri setia nugraha', '081289580901', '1303030563'),
(265, 'Wahyu dwi sadono', '08569891515', '1303011322'),
(266, 'Bambang Saputro Harsono', '082161200999', '1210150072'),
(267, 'Nasep wahyudi', '083805443030', '1303011330'),
(268, 'Rudyanto Butarbutar', '085261762789', '1304220728'),
(269, 'Endang Haryudianto', '081318299669', '1303011326'),
(270, 'DENDY FUADIN', '085775777193', '1704252443'),
(271, 'Tresno Budi Santoso', '085722810901', '1501011778'),
(272, 'Rudy Supriyadi', '08558550207', '1401021260'),
(273, 'Abd Latif', '085258705338', '1210250801'),
(274, 'Dedy Dwi Iskandar', '085640768288', '1303030499'),
(275, 'Gilang Kharisma Gemilang', '085720387450', '1604112156'),
(276, 'Handoko', '087877936692', '1303011324'),
(277, 'Ricky hidayat', '085810050657', '1304221341'),
(278, 'SUYATNO', '081210976460', '1403071389'),
(279, 'Abdul Rohman', '085774667174', '1304191340'),
(280, 'Muhammad sopiyan', '0881024738341', '1308010912'),
(281, 'Wawan kurniawan', '081312661959', '1302011352'),
(282, 'ANA JULIANA', '085782116819', '1311201233'),
(283, 'ACHMAD BASUNI', '089698919401', '1602182074'),
(284, 'Agung Viktory', '081804853232', '1509012702'),
(285, 'Randy Verlian Pays T', '085892277422', '1311141381'),
(286, 'Dhana Januasih M', '08118047889', '1302010204'),
(287, 'Lucki Widodo', '08558550420', '1209030025'),
(288, 'Evan Tri Carla Saputra', '081298432682', '1212030138'),
(289, 'MUHAMMAD SYAHROZZI,ST', '08111040489', '1311201137'),
(290, 'Vera Puji Lestarika', '081281774433', '1303040618'),
(291, 'Rulli hokiandry', '085890080887', '1311041377'),
(292, 'Rizky Assidiqi', '085959881968', '1501011753'),
(293, 'Robi Sugara', '081211522667', '1310241374'),
(294, 'Riska Aprina', '087780620554', '1412121569'),
(295, 'Abiyyu Jagad Ramadhan', '085697883023', '2204253056'),
(296, 'Meita Rahmawati', '08112219911', '1704252522'),
(297, 'Amelia Dewi Fatimah', '082135090038', '2205093063'),
(298, 'Marina Nurdiana', '0811979007', '1212030130'),
(299, 'Dimas mundam perdana', '087876325366', '1310280977'),
(300, 'Adrian Hanoto', '08567836403', '1212270158'),
(301, 'Rana Aqilah Mahedinar', '085710277240', '2205303079'),
(302, 'Migi Jalu Perdana', '087777567484', '2106182928'),
(303, 'Ajeng Prawitasari', '081294113147', '2201313026'),
(304, 'Bambang Arianto Nugroho', '08558550505', '1208010010'),
(305, 'YOGA ANDHESKA', '087821263981', '1604112244'),
(306, 'anissa kusuma dewi', '081310689437', '2010122866'),
(307, 'Rifky Henaldi', '081394313304', '2206273086'),
(308, 'Ridho Afriliano', '081299076282', '2107232939'),
(309, 'DEDI SETIADI', '08558550476', '1302190230'),
(310, 'Ari wahyu priatna', '081382207071', '1302011351'),
(311, 'ANINDITYA DIANTHI P', '087885358277', '1302040215'),
(312, 'marchel', '08118810681', '1304010679'),
(313, 'Rohman amdani', '0895327976791', '1403071387'),
(314, 'Yoelia Irene Igglasia', '089637710228', '2002172820'),
(315, 'DANTY DWI PUTRI', '085694448134', '1604112126'),
(316, 'Redi Murianda', '082278807003', '1510052603'),
(317, 'Andri Tri Sandhy', '08112005049', '1307010869'),
(318, 'Nanda Friatama', '085998003722', '1303030579'),
(319, 'Arif Budiman', '085649012052', '1303030552'),
(320, 'Indah Yuanita Amelia', '081295142428', '1501011675'),
(321, 'RANTI NURENI', '081399389352', '1212260155'),
(322, 'Muhamad Hamam Iqbal', '087895147634', '2201173019'),
(323, 'Akbarani fuadh', '085212217275', '1306240864'),
(324, 'Asriani Wirahmadhin', '087878984113', '1303250661'),
(325, 'Radika Kurniawan Subekti', '081310160514', '1412011559'),
(326, 'Muhammad Faiz Supriyanto', '085782177369', '2201193020'),
(327, 'PANCA DIRGANTARA WIJAYA', '0811909479', '1211260123'),
(328, 'Anan Suryana', '081318616264', '1511022019'),
(329, 'Melanie Yoana Sihombing', '081361631477', '1401271272'),
(330, 'Alfian Syafril', '08563720760', '1303030458'),
(331, 'M. Iqbal Tawakkal', '085725817905', '1603012079'),
(332, 'Rizky Bayu Aji Baskoro', '087888561233', '1601152063'),
(333, 'sulistyo rekso artanto', '085226303437', '1510052803'),
(334, 'Malikus salam', '085889453086', '1303011323'),
(335, 'Haris Noldy', '085882323555', '1311041006'),
(336, 'SEPTIAN MASYKURI LATIEF', '085885176080', '1502161810'),
(337, 'Anggraeni Intan Pinastika N', '081915502910', '1602152972'),
(338, 'Nofita Kurnia Dewi', '085729065565', '1704252546'),
(339, 'Irfan Widiyanto', '085693958410', '1509011939'),
(340, 'Sacha Hendra Laksana', '081908170284', '1305060789'),
(341, 'Muhammad Sadri Sugra', '085310248221', '1501011711'),
(342, 'MARGARETA MARUTI ANUGRAHANTI', '081237024084', '2203213039'),
(343, 'Inova Anugrahwati', '08986943559', '1303030502'),
(344, 'Purwono', '081381656116', '1604182252'),
(345, 'Andri setiawan', '087882787351', '1404071417'),
(346, 'Rosyid rochman nur hakim', '085729325266', '1311201186'),
(347, 'Yosua Manasye', '08127001090', '1307170894'),
(348, 'TARSIDIK', '081382394742', '2205183073'),
(349, 'Galih Maharstya W', '082297186526', '1604112154'),
(350, 'Devina Fabiola', '08558557248', '1311291248'),
(351, 'DYAH ANINDITA NOER TJAHJO', '081219579686', '1505181856'),
(352, 'SYARAH YULITA', '08111621907', '1704252590'),
(353, 'NOVITA HOTNIDA RUGUN PASARIBU', '085647877762', '1604112199'),
(354, 'Yuzwardhi Annas Yudhi', '08567744220', '1303030397'),
(355, 'Anri Ashari', '085723455519', '1412151573'),
(356, 'Dimas edo sadewo', '088801343758', '1405141440'),
(357, 'CAHDIANA', '08558550519', '1210150074'),
(358, 'Citra Nila Sari', '085221325881', '1303030276'),
(359, 'Ricci Putantra ADREA', '081210308831', '1304010671'),
(360, 'Oriana Swanty Azzahra', '08989811920', '2106142925'),
(361, 'Anggi Anandatiya', '0811917656', '1210150071'),
(362, 'IMAN RACHMAN', '08121475916', '1305020774'),
(363, 'Oetari Anggraini', '08558553601', '1711012634'),
(364, 'DARMAWAN SUSANTO', '085284148163', '1401161268'),
(365, 'Rizky Maulana Muhammad', '081586245293', '1302110219'),
(366, 'Aria Darmawan Amir', '08161363131', '1304260750'),
(367, 'BADRU JAMAN', '082122735351', '1403141402'),
(368, 'Nine Virgiyani', '08569955499', '1812032743'),
(369, 'Adhi Komara', '085624907454', '1302010207'),
(370, 'Yana Maulana', '087878232270', '1609052292'),
(371, 'Rizki Wahyudi', '08251834678', '1302110218'),
(372, 'Muhammad Zainuddin Fanani', '085655386742', '1310110959'),
(373, 'Lagiyo', '081384152747', '1302081319'),
(374, 'Himawan Primaditya', '085755555942', '1303030457'),
(375, 'ANTONIUS NOVRED TUMBUR SIREGAR', '085729314527', '1303030265'),
(376, 'Fevo Taufan Putra', '087882822199', '2101252886'),
(377, 'Fauzi', '081283142302', '1210010049'),
(378, 'Fitriyadi', '087814300090', '1402031277'),
(379, 'Rajani', '081993462359', '1401161267'),
(380, 'Dwi Darmiyanto', '085244569434', '1408041405'),
(381, 'Achmad Bayu Firdaus', '081382001279', '1510051971'),
(382, 'Diki Saputra', '089686645997', '1305130798'),
(383, 'Lydia Ester', '087823760802', '2203143034'),
(384, 'Sofia Octora', '08995499836', '1501011770'),
(385, 'Chelsea Maulia Siahaan', '08111922818', '2205093068'),
(386, 'M Prasetyo Ariadi', '089519979059', '1303030448'),
(387, 'BENNY SAPUTRA PAKPAHAN', '081311248539', '1307030877'),
(388, 'KAUTSAR RAMADHAN DJAPRI ANUR', '081905140820', '2101042882'),
(389, 'Andi Setiawan', '085642758081', '1303030514'),
(390, 'Andri prasetyono', '085883235024', '1403101394'),
(391, 'Rachmat Dwi Mulyanto', '085695678146', '1704252559'),
(392, 'Wayah Bangun Utama, S.S', '082211333201', '1311201218'),
(393, 'Rizky Ade Putra', '081219485994', '1304080689'),
(394, 'Andhika Rayendra K., S.PD', '081297968648', '1307010874'),
(395, 'Tofan', '082193123306', '1511164205'),
(396, 'Yohanes Hasudungan Panjaitan', '081263910137', '1304100707'),
(397, 'Aji Prayogo', '0881025730551', '2204133052'),
(398, 'Nidya Priscilla', '081617470558', '1604112196'),
(399, 'Janesa Angelina Darmawan', '085156450597', '2204133051'),
(400, 'Giuliana Puti Sesarani', '081214703179', '1311201104'),
(401, 'Aulia Puteri Nurani', '081210698854', '2005262858'),
(402, 'Aditya Pawestri', '085731315601', '1911052787'),
(403, 'Fifi Rosaria Nasution', '081804998157', '1501011657'),
(404, 'Kemal Muhammad', '085274721025', '2107212937'),
(405, 'Prabu jaya tirtanto', '085691736585', '1310211368'),
(406, 'Denny Adrian, SS.', '081703206688', '1312311259'),
(407, 'Kokoh Santiko S Kom', '081229428484', '1210010053'),
(408, 'Asril Anhari', '0895635689601', '2001272812'),
(409, 'Vio Holifah Salsabila', '083890623808', '2110212973'),
(410, 'YULI NURDIYANTO', '085867168018', '1303030523'),
(411, 'Muhibuddin', '081380051216', '1402031275'),
(412, 'Hanesa Anggi Praja', '081281682741', '1504011837'),
(413, 'Reyhanz Zaheedean Zaini', '08119406610', '2201313024'),
(414, 'arief fianggadha', '081218883434', '1303110632'),
(415, 'Yohanes Kurniawan Setyadi', '089660673565', '1303180652'),
(416, 'Denis Salim Elandis', '085814696769', '1304150721'),
(417, 'Erwin Derson', '081317460514', '1304010675'),
(418, 'Muhammad indra purwanto', '085643763552', '1303030513'),
(419, 'Gustian', '085381729778', '1507272401'),
(420, 'Angga Nugaraha', '081366169286', '1508012403'),
(421, 'Rio Pradytia', '081296548538', '1311201184'),
(422, 'Niken Nareswari', '081285843886', '1311201149'),
(423, 'Irvan Safei', '081286292358', '1306120853'),
(424, 'Vibrianto', '08558550701', '1308130921'),
(425, 'Hary wahyudi', '081585357571', '1510152000'),
(426, 'Latifah Diah Puspa Sari', '08118783213', '1604112176'),
(427, 'LISA OKTIVIANI TANAGA', '085851249635', '2203023031'),
(428, 'Istiqomah C. Sulistya Adi', '085921116662', '1307080885'),
(429, 'Jihan Nabila Putri', '087884464708', '1811122716'),
(430, 'Pradikto Triwardhana', '085659255230', '1409221529'),
(431, 'Yonas fabian wedasmara', '085158851947', '2103292909'),
(432, 'Ricko Rinaldi', '081932105886', '1211190115'),
(433, 'Andilalan', '081283181879', '1402031276'),
(434, 'Fajar ibrahim', '087788555286', '1211120104'),
(435, 'DIDIK BANGUN SANTOSO', '08561294971', '1301020167'),
(436, 'Intan Widyasari', '081282062725', '2107212936'),
(437, 'Muhammad Yasin', '081213171891', '130318647'),
(438, 'Ryanno Jordan Marie', '081807356695', '1911262792'),
(439, 'Insani Istiqomah', '081808103636', '1911182788'),
(440, 'SHIFA CHOIRUDIN', '081283664560', '2009072862'),
(441, 'Natasha Aulia Giwangkara', '085720619062', '2111082981'),
(442, 'Jessica Kristiani', '08170002916', '2111012976'),
(443, 'Arifin Alimuddin', '083890893767', '1303030266'),
(444, 'Elisabeth Veralyn Poetry Andra', '085694270779', '1704252461'),
(445, 'Ahmad Hendrawan', '083829178256', '2012072879'),
(446, 'Tirpan Juandi', '081281711611', '1303030426'),
(447, 'Dwi Nuryadi', '082135220995', '2108092951'),
(448, 'Adrianus Andhi Adityo', '081808967189', '2111012978'),
(449, 'Rossi', '081317469695', '2004012848'),
(450, 'Muhammad Rizki', '081292638423', '2103012895'),
(451, 'Muhammad Abdul Chaironi', '085640990239', '1303030319'),
(452, 'Rosalinda Yulfitri Butarbutar', '085222337342', '2103222906'),
(453, 'Rizky Pravitasari', '081283083709', '1303030366'),
(454, 'Gouw Sui Cen', '085694989347', '1305010769'),
(455, 'M Faridz Shobari', '089652699525', '2109222960'),
(456, 'Dimas Abimanyu', '00857-7255-4829', '2206273089'),
(457, 'Budi Tri Santoso', '085740730021', '1311201058'),
(458, 'Budi Santoso', '085695251547', '2005042855'),
(459, 'Soffal Yahsya', '085155034747', '2102032889'),
(460, 'Hamzah Syahid Ramadhan', '081332698475', '2103222905'),
(461, 'Anggy Restia Nurindrawan', '087859633485', '1705292617'),
(462, 'Nur Asfin Mardini', '08176688233', '1210010055'),
(463, 'Erista Maharani Nurhidayah', '081392200599', '1303030297'),
(464, 'DHIYA RIFQI RAHMAN', '085642550035', '1303030489'),
(465, 'Dwi anggoro', '085774459997', '1501011642'),
(466, 'Aldho Helsaputra', '082119074469', '2201103017'),
(467, 'Rahma Hayuningdyah', '08156060847', '1212170148'),
(468, 'Mohammad pratyahara bayu k', '081211553633', '1512012046'),
(469, 'Yoga Niki Purnomo', '085881416968', '1403101393'),
(470, 'Rizki Mutiara Devi', '081390729291', '1704172385'),
(471, 'Yenny apriliani', '081280060625', '1303010240'),
(472, 'Agatha Tyrza Indrasmoro', '087835009990', '2204253059'),
(473, 'P I Gaby Agda', '082219024372', '1310290989'),
(474, 'PURHANANTYO ARIBOWO', '081932027000', '1302040210'),
(475, 'Martinus Andi Damayanto', '08558550513', '1210300089'),
(476, 'Cyinthia', '089531633325', '2111102982'),
(477, 'Bobby Dian Rachman', '087770894062', '1303030505'),
(478, 'Riyan Nur Rizky', '081617670916', '2108092949'),
(479, 'Erwin Fauzi', '08990738308', '1401061261'),
(480, 'Dhanny Pramata Dwirestunu', '08121997125', '2202213030'),
(481, 'Ilyas ilham', '085871808885', '2103292910'),
(482, 'NOUVAL AKBAR', '08995034889', '1303030533'),
(483, 'Natasya Fauzia', '085974120559', '1311201148'),
(484, 'Jessica Julianti', '082299655081', '2108092950'),
(485, 'TIMOTY FERDINAND NGEFAK', '081319762909', '1303030382'),
(486, 'HERU RIFKY FAUZI', '087830177522', '1607182272'),
(487, 'Olwin Pangaribuan', '08129595940', '1206150009'),
(488, 'Arlan aziz', '085714171658', '1501011616'),
(489, 'Dwi Arif Asmin ramadani', '085731687484', '1807022674'),
(490, 'Yossi Margareth Saragih', '081919197474', '2002032815'),
(491, 'Karen Unity', '081290538343', '1704252506'),
(492, 'NuruL Septiani', '0817140986', '1303130635'),
(493, 'ANGGITYA DWI LESTARI', '089677742004', '2107232940'),
(494, 'AHMAD AMIN ARIFIN', '085795843971', '1303030253'),
(495, 'Sakim', '081310577886', '1209031314'),
(496, 'Wiyanda Hutagalung', '081905958200', '1307100887'),
(497, 'SAMUEL SIMORANGKIR', '085716852268', '1303030371'),
(498, 'An Nisaa Deli', '081293912232', '1811012706'),
(499, 'Andi Zulkarnain', '087854105197', '1306030843'),
(500, 'Rachmadi makmur', '08119890189', '1208010013'),
(501, 'MOH ANDHIKA AWANG PRATAMA NAVE', '085643158911', '1303030520'),
(502, 'chandra firdaus darojat', '085717433942', '3276062504940000'),
(503, 'Fuad Hasyim', '081310005097', '1209170039'),
(504, 'Miranda Rizka Zulkarnaen', '0895328256737', '1604112185'),
(505, 'AJAN RAMDANI', '083899946559', '1402280504'),
(506, 'Indira Yasmin Amarti', '085819587048', '2103082902'),
(507, 'ILYANA', '087888707213', '1304150722'),
(508, 'Nadia Yuniska', '08170112758', '1301210194'),
(509, 'BELLA KANIGARA MAULANA', '085750200024', '1303030271'),
(510, 'Agus Ulil Abror', '081905311380', '1209100031'),
(511, 'LIANA SUKMANIMAS', '081297946949', '2106142926'),
(512, 'Purwita Sefriani', '08159641056', '1302040208'),
(513, 'Ahmad syukur', '085715603965', '1305010767'),
(514, 'Merio Tri Wijaya', '08558550508', '1208010012'),
(515, 'Chrysta Claudy', '087889602671', '1908052778'),
(516, 'Akwilagus Abednego', '08558550562', '1303180651'),
(517, 'Restu nur cahyo', '085888253334', '1505041845'),
(518, 'Revi Aulia Yudhistira', '087888405682', '1501011744'),
(519, 'RAHMA KUSUMANING TYAS', '082110916561', '1912092798'),
(520, 'BOBBY ARISTA ELVAN KOTO WAROKK', '081292183539', '1303030274'),
(521, 'Citra Meilinda Refianty Puteri', '08118386867', '2207043090'),
(522, 'Anggoro wibowo', '087775177758', '2202213029'),
(523, 'ANDI CHRISMAHADI HUTOMO', '08121903434', '1212030139'),
(524, 'RIFTA MAYANGSARI MASITHAH', '085691177351', '1303030598'),
(525, 'Syarifah Nur Alyah', '08129769937', '2205093060'),
(526, 'mohamad rizal pramudiyono', '085694061146', '1212100143'),
(527, 'Muhammad Hilmi Faridh', '087719194103', '2205233076'),
(528, 'DONI FABRIANUS', '081314167952', '1212270157'),
(529, 'Tiara Faradina Aziza', '081212884580', '1808062681'),
(530, 'Achmad Suwardi', '081319222217', '1402101287'),
(531, 'REZA DWI PRAYOGA', '089636418929', '1501011745'),
(532, 'Mediansah dany saputro', '087888110118', '1303030527'),
(533, 'HENRY GANESHA AZIS', '081333111512', '1604112163'),
(534, 'Steffy Lauren', '081281797171', '1305010761'),
(535, 'Firmansyah', '08567619172', '1303030562'),
(536, 'Sabila Widiyanti', '081387870445', '2103222907'),
(537, 'jujun kurniawan', '085157214552', '2109272965'),
(538, 'ANDRIANTO', '0817742105', '2103312911'),
(539, 'Tri Bagus Laksono', '087738392684', '1305140804'),
(540, 'Ditia Fitrianti', '089527829573', '2010262872'),
(541, 'Riyan Fahmi', '081380988820', '1809032686'),
(542, 'Muktiaji Kumala Dewa', '087776493330', '1304080699'),
(543, 'Asrina Tiurma Nababan', '082220397321', '2106182929'),
(544, 'CHERRY PUTRI AUTAMA', '082284567907', '2103042899'),
(545, 'Muhamad Hilmawan', '088809031858', '1912232804'),
(546, 'Adelya Erliani', '081320305117', '1709182629'),
(547, 'Anggita Amindya Rarasari', '085729009869', '1303030506'),
(548, 'SINGGIH ARI PRASETYO', '081290560453', '1304080700'),
(549, 'Restu Mardika', '085155154793', '1704252567'),
(550, 'Sabitha', '081310696609', '1304010668'),
(551, 'Audry Salsabila Iskandar', '081296901241', '2103082903'),
(552, 'Rossy Angelina Patricia R', '085692376483', '2111152983'),
(553, 'Habsi Gufira pradana', '08558550439', '1307150892'),
(554, 'MUHAMAD HANAFI', '081277717610', '2112012993'),
(555, 'Rifki Afiff', '085642800080', '1604112217'),
(556, 'Serin Lionita Safira', '08980093208', '2206093084'),
(557, 'Devi Rosantika', '081228105710', '2204253058'),
(558, 'Prayuda Trimardian Setiady', '08567635686', '1303140642'),
(559, 'Vahria Azhari Zeta', '082298049625', '1505181859'),
(560, 'Nisrina Qurrotu Ain', '08562860479', '1704252544'),
(561, 'Fina Rizky Amelia', '081285859315', '1207271510'),
(562, 'Bisma aditia puja', '081223231212', '2205183072'),
(563, 'Reviera Natassya', '081586665546', '1702062353'),
(564, 'Geraldo Leon Ericko', '089652000211', '2003192838'),
(565, 'ardyan syaifin pratama', '081234877007', '1704252417'),
(566, 'Sunny Silviana', '081290839064', '1812032744'),
(567, 'I G. A. Ayu Dian Anggraini', '081999903111', '1303040621'),
(568, 'Ruth Erita Nababan', '08176320581', '1303180654'),
(569, 'Amallia Ridhatillah', '081320045272', '1704252405'),
(570, 'Tasya Bakhti Anondha', '081322216218', '2204253057'),
(571, 'Irwan Kurniawan', '081311047595', '1405021424'),
(572, 'Rian Putri Sirait', '087732782800', '1704252572'),
(573, 'Novia Anggraeny Setiawaty', '081314823460', '1604112197'),
(574, 'Ponijan', '082112638696', '1209031312'),
(575, 'Tumpal Marjuki', '081288029631', '2106142924'),
(576, 'Risma Nindia', '0818861620', '1302040209'),
(577, 'herni purnamasari', '08551261005', '1812032737'),
(578, 'Nunung Kusuma Wardani', '081225884753', '1303030465'),
(579, 'Christia Kumala Sari', '08115449049', '1501011584'),
(580, 'Wiwin Anggarini', '08568296677', '1303040624'),
(581, 'Erwin Alfah', '081390602510', '1304080694'),
(582, 'Putro Anggoro', '085692484325', '2102032890'),
(583, 'U kusnadi', '081564641987', '1304110711'),
(584, 'Sucipto.s.kom', '081806442930', '1409081520'),
(585, 'MOH. ABDU FALAH', '085740622214', '2011172874'),
(586, 'Eko Yuwono', '08179969056', '2004012841'),
(587, 'sandi rifmawan', '087727562984', '2201173028'),
(588, 'Ryan Ardyanto Agus Pratama', '085257023274', '1604112223'),
(589, 'Rohmad isnanto', '08562907221', '1302010206'),
(590, 'Chandra Kartikasari', '081218278833', '1303030479'),
(591, 'Danang', '085951556260', '2205183075'),
(592, 'Velisia Serenada', '081317794936', '2110082971'),
(593, 'Indah Yuni Nugraheni', '081316882856', '1209010017'),
(594, 'REZA HARDIANSYAH', '081289891630', '1303200660'),
(595, 'ASRI SAPTI NAWANGSARI', '081298036261', '1303030603'),
(596, 'Ayu Rahma Haninda', '085648003900', '1211050094'),
(597, 'Josep Giovanni M.', '08567669662', '1303030331'),
(598, 'Andhika Noor Prabowo', '081284960472', '1302260234'),
(599, 'RIZKI FADIL RAMADHAN', '082126944360', '2003192839'),
(600, 'Angger Warsito', '081808137676', '1303030262'),
(601, 'Warjadi', '083874741992', '1811012747'),
(602, 'Imam Athar Nugroho', '087785674987', '1303030280'),
(603, 'Priharsono', '085643303582', '1305200821'),
(604, 'Akhmad Adya Permana', '0817588353', '1301150189'),
(605, 'Denny Darmawan', '08111177771', '2201243022'),
(606, 'AFIFAH HASANAH CHANYEN', '085263586573', '2203283046'),
(607, 'Putri ayu ramadhani', '085694769901', '1805142667'),
(608, 'Cicilia Josefine', '087789165332', '1505181884'),
(609, 'Ita hernita', '081288284383', '1304080688'),
(610, 'Octorine Ula Belladiena', '081322451452', '1802262641'),
(611, 'Dinda kanti astu', '0818225404', '2204113049'),
(612, 'Lia Ernawati S Galuh', '085795738781', '1207271513'),
(613, 'Ganang Ery Putranto', '081291236004', '1710092630'),
(614, 'nur annisa', '081314377313', '2201243021'),
(615, 'Mohammad Yoga Pangestu', '085155223062', '2108162954'),
(616, 'Randy akbar', '089601368281', '1303030362'),
(617, 'RYAN ARIF PERMADI', '081315256002', '1912092799'),
(618, 'Fahmi sabar', '087722171645', '20005042852'),
(619, 'R.A. Ayu Mustika Kusuma Putri', '081213467675', '2111082980'),
(620, 'LALU MATHLAUL ANWAR', '0817366201', '1509143101'),
(621, 'Fitria Seftiany', '08159089999', '1301020162'),
(622, 'R Iman Ibrahim', '0811940543', '1302040214'),
(623, 'priscilla ferianti lukita', '087884949593', '2111012977'),
(624, 'Laurencia Hasiani EP', '085714600227', '1303030332'),
(625, 'Muhamad Yustiana Sandy', '081908199477', '1602102070'),
(626, 'I MADE JAYA WINTARA', '085158331029', '1501011695'),
(627, 'Athaya Arya Belvandra', '085715470002', '2112133001'),
(628, 'Sherina Azzahra', '081210222415', '2112273009'),
(629, 'jessica herlanda', '081288260022', '2206093082'),
(630, 'M. Sholeh', '08979265144', '1505181893'),
(631, 'Fajar Herlambang', '081311330750', '1303180653'),
(632, 'GERRY M. N. HUTAPEA', '081511834383', '1509011942'),
(633, 'Yuliawan maula nugraha', '081911304190', '1303030564'),
(634, 'Syarla Yokhebed', '08787824444', '2206093083'),
(635, 'Ami Maulana Ramadhiansyah', '087888984251', '2201103014'),
(636, 'Rifqi Arsalan', '081411011877', '1210010058'),
(637, 'Oktania Purnamasari', '081310476885', '2203243042'),
(638, 'Jody Muhammad Padmakusuma', '081282054853', '1907222776'),
(639, 'Riris boutilda', '082114128434', '1604112219'),
(640, 'Muhammad Rizky Aditya Albugis', '085158195885', '2204183054'),
(641, 'DONNY HERDIAWAN OETOMO', '087855410880', '1501011640'),
(642, 'SYUKRI GATOT BUDIARTO', '0895330091984', '1610032309'),
(643, 'Bagus pratama', '085691196904', '1303010241'),
(644, 'DARMAWAN KASIM', '0811435235', '1511024101'),
(645, 'MIFTAKHUL ANWAR', '087784465339', '2206203085'),
(646, 'Yongly A. Tuwaidan', '089655891721', '1509142904'),
(647, 'fikram tuharea', '081247400557', '2010022864'),
(648, 'RUDY WIDIATMOKO', '081314644455', '1305240828'),
(649, 'Septian Indra Pamungkas', '081289198705', '1303030553'),
(650, 'Yusron Alex Wijaya', '08563238953', '1304230741'),
(651, 'Bagus Rizky Andika Putra', '085244330757', '2003092831'),
(652, 'JOSUA GERAID SUMOLANG', '081281482238', '2112133003'),
(653, 'Ambyasmara', '081279835909', '1511024003'),
(654, 'FIKA SALSABILLA', '081284286867', '2011252875'),
(655, 'Haris Fadillah', '082251811781', '1409041502'),
(656, 'Adam suryanagara', '085697755447', '2201053013'),
(657, 'IWAN EFENDI', '082291249469', '1511023304'),
(658, 'Achmad Julianto Azis', '085881654887', '1310210966'),
(659, 'Nova Yulhendri', '081293668446', '1305130801'),
(660, 'Jajang Noerjaman', '083805254414', '2107232944'),
(661, 'Muhammad roeliano akbar', '081299230243', '2107232942'),
(662, 'Bimo Laksono Pribadi', '08111335051', '2112213006'),
(663, 'Michael AP Ginting', '082364255549', '1304100708'),
(664, 'Adi irawan', '085252271213', '1403031299'),
(665, 'Nindy dewinta', '089653038008', '1704252543'),
(666, 'Eka Arthur Yaam', '082397751370', '1808274406'),
(667, 'Teo hernar fandy', '082123269257', '1311041007'),
(668, 'RANDI VIKI PALIT', '087846386708', '1703012909'),
(669, 'Yery Wahyudi', '081929563906', '1303030389'),
(670, 'Imam suryatman', '081286873591', '2207253093'),
(671, 'abdul rifai hairuddin', '081340317494', '1511164203'),
(672, 'Novita Sari', '085540632932', '2003162834'),
(673, 'Sarah Rahmalia Rahayu', '089656401825', '1704252585'),
(674, 'Achiria Wannahari Nasution', '081294671774', '1305230825'),
(675, 'adi warsito', '085693426651', '1303030248'),
(676, 'Cornelius Indra Cahya', '087822032325', '2205103070'),
(677, 'Martinus bayu', '082213972422', '1303030573'),
(678, 'Muhammad Zaki', '085156769424', '2105062918'),
(679, 'EVA NUR FITRIANA', '082322949800', '1501011651'),
(680, 'Giri suryotono pamungkas', '089668196593', '2206273087'),
(681, 'Janelti charli', '0+62 812 185904', '1303030482'),
(682, 'Damar Pramudityo Soesilo', '081280988040', '1303030277'),
(683, 'Miranthy Agnes M', '087789176415', '1410151542'),
(684, 'Agung mustopa', '089523680273', '1506011505'),
(685, 'ANASTASIA LARASATI PUTRI', '0819888358', '2201103015'),
(686, 'Desi Muliawati Putri', '085921617809', '2101252885'),
(687, 'Nugroho Dwi Laksono', '081904324587', '2112133002'),
(688, 'husnul khotimah', '081617638783', '2109222962'),
(689, 'Muhamad Taufik Nurwansyah', '082121764176', '1901222761'),
(690, 'RESTU ADI PRASETYO', '085346306055', '1512143702'),
(691, 'Dhiyaul Falah', '083808100151', '1305020771'),
(692, 'Rr Ratih Dewanti', '08558550359', '1212170151'),
(693, 'Pinasthika Dipta Hapsari', '081310093266', '1311201161'),
(694, 'Diah Rahmahyanti', '08111009895', '1305010764'),
(695, 'zulkarnain', '082184777626', '1704252608'),
(696, 'Muhammad Zaedi', '085714791791', '2205103069'),
(697, 'Roland Edwin Faah', '085339023197', '1508033001'),
(698, 'syofian rachmat', '0818627264', '1210010060'),
(699, 'DEDE SAPUTRA', '081211895091', '201012'),
(700, 'domico raja agami kasius', '085770368407', '1304040686'),
(701, 'Dafih Kurniawan', '085697013755', '1306071350'),
(702, 'Rheza mohammad emiruzzaman', '081222710029', '2103082901'),
(703, 'Junaedi Isyam', '082210129697', '1307041358'),
(704, 'Natasya Alpha Desna Petrus', '085716065398', '2111222985'),
(705, 'ZAINAL SARIF. ST', '085756492228', '1304220733'),
(706, 'Januar Indra Yudhatama', '085648046146', '1303030329'),
(707, 'AFIF ARFENDA', '085775266300', '2002042816'),
(708, 'Octa Barry', '081211545443', '1305270834'),
(709, 'Tiara Nur Utami', '08111334496', '1601182065'),
(710, 'Afra Naudzul Inayah', '08117611498', '2110082970'),
(711, 'Aprili Mono', '081559746597', '1305150811'),
(712, 'Maulissa Octari', '08567129998', '1303030343'),
(713, 'Handika winarto', '082144433340', '1303030311'),
(714, 'Shelly yunita', '081908260077', '1209030029'),
(715, 'Rosa Serena Hutauruk', '081991187622', '1304240744'),
(716, 'Noviyanti pertiwi', '082310097800', '1311201156'),
(717, 'Bambang Kriswanto', '082324089445', '2002242824'),
(718, 'Frits Sakweray', '085244388307', '1601184301'),
(719, 'Finan Rinaldi', '081216194644', '1704252472'),
(720, 'Dimas Rizky Bhaskoro', '0‪+62 851‑5744‑', '2203213037'),
(721, 'Nanda Syahbani', '087874898603', '2205093064'),
(722, 'Hadi Darmawan', '08567162745', '1604112157'),
(723, 'Janelti Charli', '085693729092', '1303030482'),
(724, 'YENNI PUJIASTUTI, S.Sos', '081291393921', '1301020176'),
(725, 'Brigitha Echlesia Ketty Pangem', '087883057006', '1704252436'),
(726, 'Ricky Tri Hartanto', '087780339556', '2109272964'),
(727, 'IDA BAGUS GEDE KUSUMA B', '081380684657', '1305130799'),
(728, 'arthur arianto', '081285969380', '1406171478'),
(729, 'Azwar Angga Maulana', '089525525055', '2203243041'),
(730, 'Ricky Febrian S', '081286254437', '2204113050'),
(731, 'Arya Wicaksana', '081318645949', '2107212938'),
(732, 'Ghea Prima Utami', '087822008333', '1303030432'),
(733, 'Handy Akbar', '081249547947', '2205093066'),
(734, 'Rio Chandra', '08998378885', '1510151995'),
(735, 'Saivudin Juhri', '081246425966', '1211010905'),
(736, 'ADE BARLIAN TANDIONO', '087858448033', '1704252390'),
(737, 'Shelfi Anggraini', '082124612763', '2112132997'),
(738, 'Widharini Friestyani', '085921419180', '1603012075'),
(739, 'Ayu Lestari Sihole', '081295083585', '2205303080'),
(740, 'Ridha Achmad Maulud', '081809767940', '2203283044'),
(741, 'Sony Saeful', '082115573248', '1303030425'),
(742, 'Muhamad Eddy Prasetyo', '085729912531', '1305160812'),
(743, 'Rizka Kinanti', '087781735125', '1411031547'),
(744, 'Dara Ayu Krisnaningrum', '081282547343', '1812032731'),
(745, 'Aji Setiadi', '081298722220', '1407011486'),
(746, 'Wahyudin. Nuch', '081335443711', '1301100183'),
(747, 'ANGGA PRADANA SAPUTRA', '085740830603', '1704252411'),
(748, 'Yesse Frederik stepanus Ub', '08111501805', '1308210927'),
(749, 'Risha Amalia Wibowo', '081584550976', '1704252574'),
(750, 'Annastasya Narpadayinta', '081318717888', '2205093065'),
(751, 'Novita Sari', '082111195652', '1604112200'),
(752, 'Amalia Nurrin', '081532856550', '2205183074'),
(753, 'Marshella Melaputra', '081314151303', '1311201130'),
(754, 'Stevanny', '081911031101', '1303030378'),
(755, 'Stephani tri putri', '081298629422', '1805142670'),
(756, 'Mila Susilo Wati', '085925385206', '2203243043'),
(757, 'Raisha Aliya Rizaldi', '085717357892', '2112132999'),
(758, 'Candra Kusumajati', '087884538778', '1303030470'),
(759, 'Clarissa Syahla', '087885041115', '2012032877'),
(760, 'Dinisa Laila Fitriani', '082137592029', '2204183053'),
(761, 'Fatsy Loviensky', '081383345183', '1704252387'),
(762, 'Raden Nur Fitriani Ulfah', '087777085710', '2205233077'),
(763, 'Ramandika Puji Prakoso', '087884033605', '2112132998'),
(764, 'Andi Ginanjar', '087821111317', '2104292916'),
(765, 'Yoni Sauhandoko', '087880717240', '2112012995'),
(766, 'Vidella Puji Kusuma', '0Vidella Puji K', '2203283045'),
(767, 'Isman Santoso', '089617368386', '1311201115'),
(768, 'Selvia Anggraini', '085157146001', '2112133000'),
(769, 'Vellya Shafira', '081275500070', '2203213040'),
(770, 'HIJRAH YUDHA PRAYOGO', '087873286958', '2202213027'),
(771, 'Yohanes Andika Ruswan Putranto', '081808631748', '1303030391'),
(772, 'Mourissa Celestin Belinda', '087889991715', '2112213007'),
(773, 'Amie Ristianti', '081294744006', '202242822'),
(774, 'Siti Afifah Zahra nasution', '081294646267', '1409011518'),
(775, 'AGUNG MAULANA FADILLAH', '0089622971123 /', '2110272975'),
(776, 'Alfian okta sumanto', '081212278368', '2205093062'),
(777, 'suhadi', '081264575115', '2007102861'),
(778, 'IMAM HARMAIN', '085711537535', '1505181875'),
(779, 'prabhara harinara', '082298935311', '1808202684'),
(780, 'Nursyamsi', '082114353051', '2110212974'),
(781, 'Deni iskandar', '087784614902', '1911042786'),
(782, 'Dhiya Ulhaq Marsadi', '089674488378', '2111222986'),
(783, 'Dodi haryanto', '085724642778', '1510051988'),
(784, 'SASTRA WIJAYA', '081584456578', '1307030878'),
(785, 'F D Ayu Herlina Ningtyas', '081295100958', '1603212082'),
(786, 'ARIF RAHMAN GUMILAR', '087772408428', '1410061536'),
(787, 'Ali Ridho Nugroho', '08383783614', '1311201024'),
(788, 'Dwi Putri Rizkinanda Pramono', '081214150098', '1510051980'),
(789, 'Thalita Azzura R. Permana', '08158149176', '2206273088'),
(790, 'Lukman nurhakim', '08562081430', '1607182271'),
(791, 'digo ikhsan yusyahara', '081253901955', '2205093061'),
(792, 'antonius padua pradhana p y', '081934643277', '3578211806970000'),
(793, 'Sidqi Kirana Ryanthi', '081271901937', '1704252586'),
(794, 'Caroline Fransisca Pudisantoso', '083822426518', '220535081'),
(795, 'Niken Inggita Warapsari', '085161714297', '1704252542'),
(796, 'DIMAS FERDIANDHIKA', '081221648884', '2109202959'),
(797, 'Frida Nur Sulistyawan', '08996648830', '2203213038');

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `id_printer` int(11) NOT NULL,
  `tipe_printer` varchar(50) NOT NULL,
  `properti_printer` varchar(20) NOT NULL,
  `serial_printer` varchar(20) NOT NULL,
  `lokasi_printer` varchar(20) NOT NULL,
  `lantai_printer` varchar(15) NOT NULL,
  `link_printer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`id_printer`, `tipe_printer`, `properti_printer`, `serial_printer`, `lokasi_printer`, `lantai_printer`, `link_printer`) VALUES
(1, 'HP Color LaserJet Pro M177fw', 'Detoda', 'CNG6J20B4D', 'Legal', 'Lt27', 'http://172.16.27.3'),
(2, 'Scanner', 'NET', '-', 'Traffic Scanner', 'Lt27', 'http://172.16.52.111'),
(3, 'HP LaserJet P3015', 'Detoda', 'VNC3500136', 'Secretary Schedule', 'Lt27', 'http://172.16.52.107'),
(4, 'HP LaserJet P3015', '', 'VNF3F12527', 'Warnet', 'Lt27', 'http://172.16.27.247'),
(5, 'HP LaserJet 200 color M251n', 'Detoda', 'CNCFT00939', 'Talent', 'Lt27', 'http://172.16.90.251'),
(6, 'HP LaserJet P3015', '', 'VNF3F12534', 'UPM', 'Lt27', 'http://172.16.27.12'),
(7, 'HP LaserJet CM1415fnw', '', 'CNH8CBRQD5', 'Sales Warna', 'Lt27', 'http://172.16.52.43'),
(8, 'L5290 Series', 'Detoda', 'X8H4019358', 'Sekre Sales', 'Lt27', 'http://172.16.52.121'),
(9, 'HP LaserJet P3015', 'Detoda', 'VNC3505479', 'Marketing', 'Lt27', 'http://172.16.27.253'),
(10, 'HP LaserJet P3015', 'Detoda', 'VNC3513580', 'Traffic', 'Lt27', 'https://172.16.27.199'),
(11, 'FOTOCOPY', '', '', 'PANTRY ', 'Lt27', 'http://172.16.27.102'),
(12, 'Epson L565', 'NMT', 'VJMY021211', 'Transmisi Warna', 'Lt27', 'http://172.16.27.206'),
(13, 'HP LaserJet P3015', '', 'VNH4G04388', 'Transmisi', 'Lt27', 'http://172.16.52.200'),
(14, 'Epson L565', '', '', 'Grafis', 'Lt27', 'http://172.16.27.54'),
(15, 'HP LaserJet M400', '', 'PHCNC09594', 'News', 'Lt28', 'http://172.16.28.202'),
(16, 'HP LaserJet P3015', 'Detoda', 'VNF3F00972', 'Sales 28', 'Lt28', 'http://172.16.29.215'),
(17, 'HP LaserJet 200 color M251n', 'Detoda', 'CNF1V02873', 'Sales 28 Warna', 'Lt28', 'http://172.16.29.63'),
(18, 'HP LaserJet P3015', 'Detoda', 'VNH4G05019', 'Programming', 'Lt29', 'http://172.16.29.70'),
(19, 'ApeosPort C3070', '', '', 'Mba Wike', 'Lt29', 'http://172.16.29.220'),
(20, 'Epson L565', '', '', 'MCR', 'Lt29', 'http://172.16.29.178'),
(21, 'HP LaserJet CM1415fnw', '', '', 'Mas Agus Lasmono', 'Lt29', 'http://172.16.99.24'),
(22, 'HP LaserJet CM1415fnw', '', '', 'Ko Hadi Direktur', 'Lt29', 'http://172.16.99.109'),
(23, 'HP LaserJet CM1415fnw', '', '', 'Pak Dedi CEO', 'Lt29', 'http://172.16.99.25'),
(24, 'HP LaserJet 400 colorMFP M475dn', 'NMI', 'VNH4G04384', 'GS Warna', 'Lt30', 'http://172.16.30.100'),
(25, 'Hp Officejet Pro 8600', '', '', 'Pak Heri', 'Lt30', 'http://172.16.4.40'),
(26, 'HP LaserJet P3015', '', '', 'GS', 'Lt30', 'http://172.16.30.222'),
(27, 'HP LaserJet 200 color M251n', '', '', 'Pak Yani', 'Lt30', 'http://172.16.30.240'),
(28, 'HP LaserJet M400', 'Detoda', 'VNH3P05022', 'Kasir', 'Lt30', 'http://172.16.30.101'),
(29, 'HP Laserjet 500 color mfp m575', 'Detoda', '', 'Finance Warna', 'Lt30', 'http://172.16.30.250'),
(30, 'HP LaserJet P3015', 'Detoda', 'VNF3F16791', 'Finance', 'Lt30', 'http://172.16.30.111'),
(31, 'HP LaserJet 200 color M251n', 'Detoda', 'CNCFT01900', 'Procurement', 'Lt30', 'http://172.16.30.224'),
(32, 'Hp Officejet Pro 8600', '', '', 'Pak Ferry', 'Lt30', 'http://172.16.71.134'),
(33, 'Hp Officejet Pro 8600', '', '', 'Pak Leo', 'Lt30', 'http://172.16.99.110'),
(34, 'HP LaserJet P3015', '', '', 'Pak Indra Audit', 'Lt30', ''),
(35, 'iR3235', 'Vendor GS', 'DFW06685', 'FOTOCOPY HRD', 'Lt30', 'http://172.16.30.10'),
(36, 'HP LaserJet P3015', 'NMT', 'VNF3R14513', 'Logistik', 'Mitra', 'http://172.16.3.222'),
(37, 'HP LaserJet P3015', '', '', 'Sekre Mitra', 'Mitra', ''),
(38, 'HP Color LaserJet Pro MFP M177fw', 'Detoda', 'CNG6K2J721', 'Legal Luar Internal', 'Lt30', 'http://172.16.30.180'),
(39, 'HP LaserJet 400 colorMFP M475dn', 'Detoda', 'CND8G3MH7N', 'Legal Dalam Internal', 'Lt30', 'http://172.16.30.200'),
(40, 'Epson L1800', 'NMT', 'VBNY037448', 'Mitra Gudang Propert', 'Mitra', ''),
(41, 'FX-890A', '', 'PVCY002210', '', '', ''),
(42, 'FX-890A', '', 'PVCY001276', '', '', ''),
(43, 'FX-890A', '', 'PVCY002208', '', '', ''),
(44, 'FX-890A', '', 'PVCY002221', 'Library', 'Lt29', ''),
(45, 'FX-890A', '', 'PVCY004163', '', '', ''),
(46, 'HP LaserJet P3015', '', 'VNH3P10672', 'Payroll', 'Lt30', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `kode_produk`, `nama_produk`, `harga_modal`, `harga_jual`, `stock`, `tgl_input`) VALUES
(7, 3, 'BRG005', 'qw', 10000, 10000, 50, '2022-11-13 11:23:53'),
(8, 5, 'BRG006', 'lux', 12, 12, 40, '2022-11-13 13:50:53'),
(9, 6, 'BRG007', 'aa', 10000, 10000, 7, '2022-11-12 13:34:52'),
(10, 7, '320x', 'Hitam', 600000, 600000, 100, '2022-11-13 11:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `produk1`
--

CREATE TABLE `produk1` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk1`
--

INSERT INTO `produk1` (`idproduk`, `idkategori`, `kode_produk`, `nama_produk`, `harga_modal`, `harga_jual`, `stock`, `tgl_input`) VALUES
(10, 7, '320x', 'Hitam', 600000, 600000, 84, '2022-11-13 12:51:30'),
(11, 7, '321x', 'Cyan', 650000, 650000, 89, '2022-11-13 12:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nota`
--

CREATE TABLE `tb_nota` (
  `idnota` int(11) NOT NULL,
  `no_nota` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_nota`
--

INSERT INTO `tb_nota` (`idnota`, `no_nota`, `idproduk`, `quantity`) VALUES
(43, 'AD1311221119001', 5, 1),
(44, 'AD1311221119120', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nota1`
--

CREATE TABLE `tb_nota1` (
  `idnota1` int(11) NOT NULL,
  `no_nota1` varchar(100) CHARACTER SET armscii8 NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_nota1`
--

INSERT INTO `tb_nota1` (`idnota1`, `no_nota1`, `idproduk`, `quantity`) VALUES
(1, '0', 5, 1),
(2, '0', 6, 1),
(3, '0', 10, 1),
(4, '0', 10, 1),
(5, '0', 10, 1),
(6, '0', 10, 1),
(7, '0', 10, 1),
(8, '0', 11, 1),
(9, '0', 10, 1),
(11, '0', 10, 1),
(12, '0', 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `kategori1`
--
ALTER TABLE `kategori1`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idcart`);

--
-- Indexes for table `keranjang1`
--
ALTER TABLE `keranjang1`
  ADD PRIMARY KEY (`idcart`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`idlaporan`);

--
-- Indexes for table `laporan1`
--
ALTER TABLE `laporan1`
  ADD PRIMARY KEY (`idlaporan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`id_printer`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `produk1`
--
ALTER TABLE `produk1`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`idnota`);

--
-- Indexes for table `tb_nota1`
--
ALTER TABLE `tb_nota1`
  ADD PRIMARY KEY (`idnota1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori1`
--
ALTER TABLE `kategori1`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `keranjang1`
--
ALTER TABLE `keranjang1`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `laporan1`
--
ALTER TABLE `laporan1`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT for table `printer`
--
ALTER TABLE `printer`
  MODIFY `id_printer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk1`
--
ALTER TABLE `produk1`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_nota`
--
ALTER TABLE `tb_nota`
  MODIFY `idnota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_nota1`
--
ALTER TABLE `tb_nota1`
  MODIFY `idnota1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
