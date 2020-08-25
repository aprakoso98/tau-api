-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 09:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tau_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_advisors`
--

CREATE TABLE `tb_advisors` (
  `id` bigint(20) NOT NULL,
  `nama_advisors` varchar(100) NOT NULL,
  `foto_advisors` varchar(100) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_article_set`
--

CREATE TABLE `tb_article_set` (
  `id` int(11) NOT NULL,
  `part` char(50) DEFAULT NULL,
  `url` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_article_set`
--

INSERT INTO `tb_article_set` (`id`, `part`, `url`) VALUES
(1, 'career', 'career'),
(2, 'tracer', 'tracer-studi'),
(3, 'beasiswa', 'beasiswa'),
(4, 'training', 'training-center'),
(5, 'inter-australian', 'international-australian'),
(6, 'inter-business', 'international-business'),
(7, 'kemahasiswaan', 'kemahasiswaan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `isForBanner` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `image`, `isForBanner`) VALUES
(1, '288e11ea-601b-41fd-a86d-b5147ef78fd9.png', 1),
(3, 'b868fe2b-bf17-45cb-9f9a-926413466eef.png', 0),
(4, '54425067-8c00-471b-bca0-92b9077b18e6.png', 0),
(5, 'f4dfd227-a818-48fa-9940-581d4e48b66e.png', 0),
(6, 'd6957036-c1d8-4601-b469-7c6fd080b3cf.png', 0),
(7, 'a90fed45-28a4-4d75-8c36-eb6e8c619e87.png', 0),
(8, '4b2dd43c-8946-4fb7-9858-a92992507078.png', 0),
(9, '8ac98655-1288-451e-95f9-09b7eb05a443.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` bigint(20) NOT NULL,
  `nama_contact` varchar(100) NOT NULL,
  `email_contact` varchar(100) NOT NULL,
  `pesan_contact` text NOT NULL,
  `tgl_contact` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`id`, `nama`, `foto`, `deskripsi`) VALUES
(4, 'udin', 'af119aa8-1795-44cd-a55d-62e9902c28a2.jpg', NULL),
(5, 'gedung', '1a90ac92-052c-414a-9afa-ddb7c187ae2e.jpg', NULL),
(6, 'kolam', 'c04b321f-0ce4-4210-8cf1-84fc245c2b0f.jpg', NULL),
(7, 'gym', '1b54c80f-65f4-4f8f-9140-5fd5a60c8957.jpg', NULL),
(8, 'tempat xxx', '3247c993-f6be-4d53-8239-38bd63a28298.jpg', NULL),
(9, 'party night', 'b3acbe46-dccd-412f-b1ec-7ae4bb213ac9.jpg', NULL),
(10, 'atau dah ini apa', '52d7a479-1c10-49da-bd15-54634af17404.png', NULL),
(11, 'contoh', '2bc0cf66-5ad0-4131-acff-9c2a3f394935.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_files`
--

CREATE TABLE `tb_files` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `format` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_files`
--

INSERT INTO `tb_files` (`id`, `name`, `file`, `format`) VALUES
(1, 'add', '0e0fd253-e314-4455-a268-0818078fc8b1.png', 'png'),
(3, 'dssd', 'fa075c33-129f-4f6e-b7bc-ffbd4ef6e33e.txt', 'txt'),
(4, 'aa', 'c04b321f-0ce4-4210-8cf1-84fc245c2b0f.jpg', 'jpg'),
(5, 'dssddsds', 'd5dc66fd-3a29-49fc-848a-05453d1143df.mp4', 'mp4'),
(7, 'cc', '6ec3f677-d9ad-4edd-9116-d42b388b2aeb.jpeg', 'jpg'),
(8, 'Screenshot (1)', '2f15835e-07b2-4a56-b810-6fb67a14ae26.png', 'png'),
(9, 'StarUML_HBZwNafuYd', 'b868fe2b-bf17-45cb-9f9a-926413466eef.png', 'png'),
(10, 'StarUML_Cw1SbwVvG7', '474b0495-8396-4594-b98b-7238e28fc042.png', 'png'),
(11, 'chrome_XULPoP7KXp', '54425067-8c00-471b-bca0-92b9077b18e6.png', 'png'),
(12, 'aDZQElZ54I', 'e3e67f50-b30f-4cbf-b261-0a1423fb641f.mp4', 'mp4'),
(13, 'player_783EAJHR90', 'a936a4a6-f7da-4cbb-a4ad-063f1ebe91ab.png', 'png'),
(14, '41xMgVgt5p', '3bc39035-78b2-44fc-baaf-0c7eb60d8bde.mp4', 'mp4'),
(15, 'chrome_H1wX4yhj8T', '288e11ea-601b-41fd-a86d-b5147ef78fd9.png', 'png'),
(16, 'StarUML_XQZFgFHnIg', 'e5e1ffd2-f012-4dcf-95ec-4dece624b022.png', 'png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  `is_video` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id`, `nama`, `deskripsi`, `media`, `is_video`) VALUES
(11, 'add', 'ddfd', '6ee0bf5c-b8fa-41ca-a3cc-3fad9e7dfb76.mp4', 1),
(12, 'dadsd', 'fssf', '77f20cb7-23ee-4584-a04f-5b976616be9a.png', 0),
(13, 'video', 'hfjsfhskjgfjfk', '26cd4e98-05f3-40b0-8f70-e09daef66403.mp4', 1),
(14, 'image', 'jf;jdfksfsfhfsmsf', 'bc757473-2b10-435e-8a0f-10956499620e.png', 0),
(15, 'kamping', 'di mana gitu', 'b64f55aa-897c-473c-aafa-ba2726d92231.mp4', 1),
(16, 'gadkh', 'kshf', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 0),
(17, 'ssd', 'ddd', 'c4f329cf-259f-4145-b8a1-d10ded4438aa.png', 0),
(18, 'ddsd', 'ddsd', '81f8a0b8-f078-4f99-b163-ae175aca4d52.mp4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_karir`
--

CREATE TABLE `tb_karir` (
  `id` bigint(20) NOT NULL,
  `nama_karir` varchar(100) NOT NULL,
  `deskripsi_karir` text NOT NULL,
  `foto_karir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kemahasiswaan`
--

CREATE TABLE `tb_kemahasiswaan` (
  `id` bigint(20) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_manage`
--

CREATE TABLE `tb_manage` (
  `id` int(11) NOT NULL,
  `part` char(20) NOT NULL,
  `content` text NOT NULL DEFAULT '',
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_manage`
--

INSERT INTO `tb_manage` (`id`, `part`, `content`, `image`) VALUES
(1, 'sambutan', '<p>Commodo aliqua sunt id est id ex duis id eiusmod minim magna et adipisicing voluptate. Fugiat quis duis quis mollit non cupidatat in aute reprehenderit. Magna laboris anim nisi dolor aliqua. Magna proident tempor do et adipisicing culpa Lorem sunt sint fugiat Lorem.Tempor Lorem cillum excepteur ipsum. Amet amet aute proident culpa sunt consequat elit ipsum sunt quis exercitation Lorem nisi ad. Eu pariatur labore ea dolor nisi sit qui eiusmod consectetur esse cillum commodo sunt. Elit non elit ut minim do non in in esse adipisicing laborum deserunt anim esse. Sit duis ex excepteur quis. Labore pariatur consequat incididunt anim tempor culpa. Ex consectetur est eiusmod ad fugiat labore magna occaecat et aliqua.Veniam proident Lorem laborum ipsum qui elit elit velit. Aliquip magna nostrud reprehenderit consequat qui Lorem culpa do exercitation magna enim laborum qui ad. Mollit incididunt elit officia elit nostrud esse et. Nulla laboris mollit adipisicing pariatur ullamco excepteur occaecat cupidatat proident labore.Qui esse elit dolor nisi esse Lorem tempor quis consequat aliqua cupidatat sit mollit. Incididunt et laboris dolore sint. Sunt non commodo esse labore eu minim commodo. Magna exercitation minim dolore qui dolore ad enim qui dolor deserunt non culpa. Eu veniam mollit minim amet consectetur consectetur proident tempor pariatur esse mollit deserunt. Commodo nisi dolore aute nostrud sunt est mollit ipsum eiusmod eu.</p><p style=\"color:blue;\">hjdsdf</p>', '0aeb65dc-cfc2-46c6-a5ad-595fc86eea6a.png'),
(2, 'staff', 'Staff pengajar TAU', NULL),
(3, 'fasilitas', 'Deskripsi fasilitas ternyata bla bla bla bla', NULL),
(4, 'galeri', 'Deskripsi galeri ', NULL),
(5, 'sejarah', 'Deskripsi sejarah', NULL),
(6, 'visi', 'Deskripsi visi', NULL),
(7, 'struktur', 'Deskripsi struktur', NULL),
(8, 'sertifikasi', 'sertifikasi adalah lorem ipsum', NULL),
(9, 's1', 'Deskripsi s1dddsdsd', NULL),
(10, 'international', 'Deskripsi international', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `id` bigint(20) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `artikel` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `pembuat` varchar(100) NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`id`, `judul`, `deskripsi`, `artikel`, `foto`, `url`, `pembuat`, `tgl`) VALUES
(1, 'TAU Training Center', 'sdfhsdjkfl', 'jksdfjsdf', '1a90ac92-052c-414a-9afa-ddb7c187ae2e.jpg', 'training-center', 'kjfs', '2020-08-10 02:09:19'),
(2, 'Fast Track To Australian University', 'sdfhsdjkfl', 'jksdfjsdf', '77f20cb7-23ee-4584-a04f-5b976616be9a.png', 'international-australian', 'kjfs', '2020-08-10 02:11:21'),
(3, 'International Bussiness Program', 'sdfhsdjkfl', 'jksdfjsdf', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 'international-business', 'kjfs', '2020-08-10 02:12:29'),
(4, 'Kemahasiswaan', 'kjhshdj', 'fsddsfsf', '669f1fb0-0d25-4025-9aba-bef5b741dfc2.png', 'kemahasiswaan', 'kjdasdf', '2020-08-10 19:40:23'),
(43, 'Tracer Studi', 'ddfsxc', '<p>artikel ini adalah bla</p><p>bla</p><p>bla</p>', '52d7a479-1c10-49da-bd15-54634af17404.png', 'tracer-studi', 'ffds', '2020-08-16 15:34:28'),
(44, 'Career', 'fdcxcv', '<p>Adipisici<em>ng non Lorem ut id pariatur nostrud reprehenderit in consequat. Nisi proident cupidatat amet dolor eu eu sit ea quis amet cupidatat mollit velit id. Sunt veniam deserunt et Lorem ullamco. Labore aliquip ullamco id dolore consectetur nulla quis id anim. Eiusmod irure aliquip adipisicing qui anim. Commodo qui ad occaecat irure laborum et. Id ea nostrud amet laboris deserunt dolor commodo Lorem.\n\nQuis velit ex reprehenderit adipisicing eu commodo excepteur do duis est aute pariatur. Minim culpa sit cupidatat in reprehenderit exercitation sit proident excepteur ex dolore irure exercitation. Pariatur anim qui dolore pariatur. Consequat anim adipisicing ad excepteur sunt. Aute laborum pariatur et dolore eu ipsum deserunt adipisicing sunt enim ex amet tempor. Esse proident quis reprehenderit reprehenderit adipisicing aute sint id nulla lab</em>orum. Deserunt enim in consequat enim excepteur qui.\n\nCommodo ex cupidatat laboris ullamco mollit. Labore Lorem esse ea officia duis ad id pariatur laborum. Amet excepteur amet reprehenderit officia sit enim veniam Lorem qui. Occaecat culpa ipsum consectetur mollit cupidatat ad cupidatat adipisicing officia aliqua excepteur duis dolore. Consectetur quis sunt amet ad velit laboris cupidatat incididunt exercitation. Excepteur deserunt sint anim culpa nostrud minim pariatur laborum id aute exercitation nostrud. Ut mollit commodo laboris sunt dolore adipisicing.\n\nIncididunt Lorem est nisi quis. Ut velit commodo culpa cupidatat ea in sunt. Consectetur nisi aliqua excepteur minim voluptate ut voluptate anim voluptate esse enim exercitation sit in.\n\nEt eiusmod enim excepteur nostrud velit cillum excepteur aliquip reprehenderit nostrud. Lorem officia eu commodo laborum. Veniam minim velit excepteur aliqua. Aute nisi do ullamco duis consectetur sit proident quis laborum ad. Ea eiusmod qui excepteur irure quis culpa minim. Duis consectetur officia reprehenderit pariatur in. Qui officia aute quis incididunt esse deserunt qui.</p>', '669f1fb0-0d25-4025-9aba-bef5b741dfc2.png', 'career', 'wewewe', '2020-08-16 15:49:30'),
(45, 'Beasiswa', 'fdcxcv', '<p>Adipisici<em>ng non Lorem ut id pariatur nostrud reprehenderit in consequat. Nisi proident cupidatat amet dolor eu eu sit ea quis amet cupidatat mollit velit id. Sunt veniam deserunt et Lorem ullamco. Labore aliquip ullamco id dolore consectetur nulla quis id anim. Eiusmod irure aliquip adipisicing qui anim. Commodo qui ad occaecat irure laborum et. Id ea nostrud amet laboris deserunt dolor commodo Lorem.\n\nQuis velit ex reprehenderit adipisicing eu commodo excepteur do duis est aute pariatur. Minim culpa sit cupidatat in reprehenderit exercitation sit proident excepteur ex dolore irure exercitation. Pariatur anim qui dolore pariatur. Consequat anim adipisicing ad excepteur sunt. Aute laborum pariatur et dolore eu ipsum deserunt adipisicing sunt enim ex amet tempor. Esse proident quis reprehenderit reprehenderit adipisicing aute sint id nulla lab</em>orum. Deserunt enim in consequat enim excepteur qui.\n\nCommodo ex cupidatat laboris ullamco mollit. Labore Lorem esse ea officia duis ad id pariatur laborum. Amet excepteur amet reprehenderit officia sit enim veniam Lorem qui. Occaecat culpa ipsum consectetur mollit cupidatat ad cupidatat adipisicing officia aliqua excepteur duis dolore. Consectetur quis sunt amet ad velit laboris cupidatat incididunt exercitation. Excepteur deserunt sint anim culpa nostrud minim pariatur laborum id aute exercitation nostrud. Ut mollit commodo laboris sunt dolore adipisicing.\n\nIncididunt Lorem est nisi quis. Ut velit commodo culpa cupidatat ea in sunt. Consectetur nisi aliqua excepteur minim voluptate ut voluptate anim voluptate esse enim exercitation sit in.\n\nEt eiusmod enim excepteur nostrud velit cillum excepteur aliquip reprehenderit nostrud. Lorem officia eu commodo laborum. Veniam minim velit excepteur aliqua. Aute nisi do ullamco duis consectetur sit proident quis laborum ad. Ea eiusmod qui excepteur irure quis culpa minim. Duis consectetur officia reprehenderit pariatur in. Qui officia aute quis incididunt esse deserunt qui.</p>', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 'beasiswa', 'wewewe', '2020-08-16 15:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id` bigint(20) NOT NULL,
  `id_program` bigint(20) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL,
  `deskripsi_prodi` text NOT NULL,
  `foto_prodi` varchar(100) NOT NULL,
  `visi_prodi` text NOT NULL,
  `misi_prodi` text NOT NULL,
  `kurikulum_prodi` text NOT NULL,
  `kompetensi_prodi` text NOT NULL,
  `dosen_prodi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id`, `id_program`, `nama_prodi`, `deskripsi_prodi`, `foto_prodi`, `visi_prodi`, `misi_prodi`, `kurikulum_prodi`, `kompetensi_prodi`, `dosen_prodi`) VALUES
(2, 1, 'managemen bisnis', 'lorem ipsum dolor sit amet', '0aeb65dc-cfc2-46c6-a5ad-595fc86eea6a.png', '<p><img src=\"$IMG_PATHarticle/0e0fd253-e314-4455-a268-0818078fc8b1.png\" alt=\"\" style=\"width: 300px;\">﻿5<span id=\"jodit-selection_marker_1597927996931_2695078150874246\" data-jodit-selection_marker=\"start\" style=\"line-height: 0; display: none;\">﻿</span></p>', '6', 'dsfytuyisjkdnmbvhfsytdyuisjkbdnvhcfysdtuij', '8', 'dsfytuyishkdjghsftudyishdvghfsdytuy'),
(4, 1, 'bisnis', 'iewurujhdkdsf', '0aeb65dc-cfc2-46c6-a5ad-595fc86eea6a.png', '5', 'dscguusiiiodjklnsbvgdhuysidokl', '7', 'dsfyrtysiuhdkbvghsfydt6ysiuhdjghsfydtuyshd', '9'),
(5, 2, 'sistem informasi', '33', '0aeb65dc-cfc2-46c6-a5ad-595fc86eea6a.png', 'dsghsjdksjdgsd', '66', 'cfgystyduihksjvghdfuysidhbsvdghutydhd', '88', '99'),
(11, 1, 'ssas', 'ssasas', '8fff96a1-bb25-49c1-9f43-0d1504418531.png', 'dagjhklsdhgasds', '<p>ssasdsvgygjvdjsufgajeybdgshuabhsvghgfjdbsf/p>', 'dfdafsgiudshbdhyuahjbnsad', 'bdvgysxhjjfadksfsrueigdffjksdf', 'ssas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_program_inter`
--

CREATE TABLE `tb_program_inter` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `url` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_program_s1`
--

CREATE TABLE `tb_program_s1` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_program_s1`
--

INSERT INTO `tb_program_s1` (`id`, `nama`) VALUES
(1, 'School Of Management & Leadership'),
(2, 'School Of Engineering & Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rektor`
--

CREATE TABLE `tb_rektor` (
  `id` bigint(20) NOT NULL,
  `foto_rektor` varchar(100) NOT NULL,
  `sambutan_rektor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sertifikat`
--

CREATE TABLE `tb_sertifikat` (
  `id` bigint(20) NOT NULL,
  `nama_sertifikat` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id`, `nama`, `jabatan`, `foto`) VALUES
(1, 'udin', 'pengajar', 'cdb4de21-bf01-4eb7-a875-1ed070c539ad.jpg'),
(2, 'dad', 'ddsff', 'bf0b4d34-15aa-47ce-8122-58e331fe093e.jpg'),
(3, 'ffs', 'ddws', '4267e4df-d582-486b-82e9-a8ebf4a801b0.jpg'),
(4, 'udin', 'pemulung', 'f59705c7-2b71-4e96-8e5c-12d8f032a7e5.png'),
(5, 'hh', 'kj', '900ebe84-f677-4a1b-985b-1e1a966f9a66.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_training`
--

CREATE TABLE `tb_training` (
  `id` bigint(20) NOT NULL,
  `nama_training` varchar(100) NOT NULL,
  `des_training` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_advisors`
--
ALTER TABLE `tb_advisors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_article_set`
--
ALTER TABLE `tb_article_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_files`
--
ALTER TABLE `tb_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karir`
--
ALTER TABLE `tb_karir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kemahasiswaan`
--
ALTER TABLE `tb_kemahasiswaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_manage`
--
ALTER TABLE `tb_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_prodi_tb_program_s1` (`id_program`);

--
-- Indexes for table `tb_program_inter`
--
ALTER TABLE `tb_program_inter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_program_s1`
--
ALTER TABLE `tb_program_s1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rektor`
--
ALTER TABLE `tb_rektor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_training`
--
ALTER TABLE `tb_training`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_advisors`
--
ALTER TABLE `tb_advisors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_article_set`
--
ALTER TABLE `tb_article_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_files`
--
ALTER TABLE `tb_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_karir`
--
ALTER TABLE `tb_karir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kemahasiswaan`
--
ALTER TABLE `tb_kemahasiswaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_manage`
--
ALTER TABLE `tb_manage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_program_inter`
--
ALTER TABLE `tb_program_inter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_program_s1`
--
ALTER TABLE `tb_program_s1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_rektor`
--
ALTER TABLE `tb_rektor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_training`
--
ALTER TABLE `tb_training`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD CONSTRAINT `FK_tb_prodi_tb_program_s1` FOREIGN KEY (`id_program`) REFERENCES `tb_program_s1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
