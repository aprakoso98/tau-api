-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2020 at 05:31 PM
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
(10, 'atau dah ini apa', '52d7a479-1c10-49da-bd15-54634af17404.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  `is_video` int(11) DEFAULT 0
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
(16, 'gadkh', 'kshf', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gambar`
--

CREATE TABLE `tb_gambar` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_gambar`
--

INSERT INTO `tb_gambar` (`id`, `name`, `image`) VALUES
(1, 'add', '0e0fd253-e314-4455-a268-0818078fc8b1.png');

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
(3, 'fasilitas', 'fasilias nya jelas banyak', NULL),
(4, 'galeri', 'Deskripsi galeri ', NULL),
(5, 'sejarah', 'Deskripsi sejarah', NULL),
(6, 'visi', 'Deskripsi visi', NULL),
(7, 'struktur', 'Deskripsi struktur', NULL),
(8, 'sertifikasi', 'sertifikasi adalah lorem ipsum', NULL),
(9, 's1', 'Deskripsi s1', NULL),
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
(1, 'Judul', 'sdfhsdjkfl', 'jksdfjsdf', '1a90ac92-052c-414a-9afa-ddb7c187ae2e.jpg', 'wiwi', 'kjfs', '2020-08-10 02:09:19'),
(2, 'Judul', 'sdfhsdjkfl', 'jksdfjsdf', '77f20cb7-23ee-4584-a04f-5b976616be9a.png', 'wiwi', 'kjfs', '2020-08-10 02:11:21'),
(3, 'Judul', 'sdfhsdjkfl', 'jksdfjsdf', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 'wiwi', 'kjfs', '2020-08-10 02:12:29'),
(4, 'dslsdf', 'kjhshdj', 'fsddsfsf', '669f1fb0-0d25-4025-9aba-bef5b741dfc2.png', 'kjdsf', 'kjdasdf', '2020-08-10 19:40:23'),
(5, 'dslsdf', 'kjhshdj', 'fsddsfsf', 'b3acbe46-dccd-412f-b1ec-7ae4bb213ac9.jpg', 'kjdsf', 'kjdasdf', '2020-08-10 19:40:27'),
(6, 'add', 'kjhshdj', 'fsddsfsf', 'd29a878a-51e2-45f8-8066-d9beb0eeccb8.png', 'kjdsf-ds-sd', 'kjdasdf', '2020-08-10 19:40:27'),
(7, 'dslsdf', 'kjhshdj', 'fsddsfsf', 'bf0b4d34-15aa-47ce-8122-58e331fe093e.jpg', 'kjdsf', 'kjdasdf', '2020-08-10 19:40:27'),
(8, 'dslsdf', 'kjhshdj', 'fsddsfsf', 'bf0b4d34-15aa-47ce-8122-58e331fe093e.jpg', 'kjdsf', 'kjdasdf', '2020-08-10 19:40:27'),
(9, 'dslsdf', 'kjhshdj', 'fsddsfsf', '3247c993-f6be-4d53-8239-38bd63a28298.jpg', 'kjdsf', 'kjdasdf', '2020-08-10 19:40:27'),
(43, 'aksdhjashddsdsddsdfsxc', 'ddfsxc', '<p>artikel ini adalah bla</p><p>bla</p><p>bla</p>', '52d7a479-1c10-49da-bd15-54634af17404.png', 'ddsd', 'ffds', '2020-08-16 15:34:28'),
(44, 'ddsfdssdccvxcvf', 'fdcxcv', '<p>Adipisici<em>ng non Lorem ut id pariatur nostrud reprehenderit in consequat. Nisi proident cupidatat amet dolor eu eu sit ea quis amet cupidatat mollit velit id. Sunt veniam deserunt et Lorem ullamco. Labore aliquip ullamco id dolore consectetur nulla quis id anim. Eiusmod irure aliquip adipisicing qui anim. Commodo qui ad occaecat irure laborum et. Id ea nostrud amet laboris deserunt dolor commodo Lorem.\n\nQuis velit ex reprehenderit adipisicing eu commodo excepteur do duis est aute pariatur. Minim culpa sit cupidatat in reprehenderit exercitation sit proident excepteur ex dolore irure exercitation. Pariatur anim qui dolore pariatur. Consequat anim adipisicing ad excepteur sunt. Aute laborum pariatur et dolore eu ipsum deserunt adipisicing sunt enim ex amet tempor. Esse proident quis reprehenderit reprehenderit adipisicing aute sint id nulla lab</em>orum. Deserunt enim in consequat enim excepteur qui.\n\nCommodo ex cupidatat laboris ullamco mollit. Labore Lorem esse ea officia duis ad id pariatur laborum. Amet excepteur amet reprehenderit officia sit enim veniam Lorem qui. Occaecat culpa ipsum consectetur mollit cupidatat ad cupidatat adipisicing officia aliqua excepteur duis dolore. Consectetur quis sunt amet ad velit laboris cupidatat incididunt exercitation. Excepteur deserunt sint anim culpa nostrud minim pariatur laborum id aute exercitation nostrud. Ut mollit commodo laboris sunt dolore adipisicing.\n\nIncididunt Lorem est nisi quis. Ut velit commodo culpa cupidatat ea in sunt. Consectetur nisi aliqua excepteur minim voluptate ut voluptate anim voluptate esse enim exercitation sit in.\n\nEt eiusmod enim excepteur nostrud velit cillum excepteur aliquip reprehenderit nostrud. Lorem officia eu commodo laborum. Veniam minim velit excepteur aliqua. Aute nisi do ullamco duis consectetur sit proident quis laborum ad. Ea eiusmod qui excepteur irure quis culpa minim. Duis consectetur officia reprehenderit pariatur in. Qui officia aute quis incididunt esse deserunt qui.</p>', '669f1fb0-0d25-4025-9aba-bef5b741dfc2.png', 'dadsdassfsdf', 'wewewe', '2020-08-16 15:49:30'),
(45, 'ddsfdssdccvxcvf', 'fdcxcv', '<p>Adipisici<em>ng non Lorem ut id pariatur nostrud reprehenderit in consequat. Nisi proident cupidatat amet dolor eu eu sit ea quis amet cupidatat mollit velit id. Sunt veniam deserunt et Lorem ullamco. Labore aliquip ullamco id dolore consectetur nulla quis id anim. Eiusmod irure aliquip adipisicing qui anim. Commodo qui ad occaecat irure laborum et. Id ea nostrud amet laboris deserunt dolor commodo Lorem.\n\nQuis velit ex reprehenderit adipisicing eu commodo excepteur do duis est aute pariatur. Minim culpa sit cupidatat in reprehenderit exercitation sit proident excepteur ex dolore irure exercitation. Pariatur anim qui dolore pariatur. Consequat anim adipisicing ad excepteur sunt. Aute laborum pariatur et dolore eu ipsum deserunt adipisicing sunt enim ex amet tempor. Esse proident quis reprehenderit reprehenderit adipisicing aute sint id nulla lab</em>orum. Deserunt enim in consequat enim excepteur qui.\n\nCommodo ex cupidatat laboris ullamco mollit. Labore Lorem esse ea officia duis ad id pariatur laborum. Amet excepteur amet reprehenderit officia sit enim veniam Lorem qui. Occaecat culpa ipsum consectetur mollit cupidatat ad cupidatat adipisicing officia aliqua excepteur duis dolore. Consectetur quis sunt amet ad velit laboris cupidatat incididunt exercitation. Excepteur deserunt sint anim culpa nostrud minim pariatur laborum id aute exercitation nostrud. Ut mollit commodo laboris sunt dolore adipisicing.\n\nIncididunt Lorem est nisi quis. Ut velit commodo culpa cupidatat ea in sunt. Consectetur nisi aliqua excepteur minim voluptate ut voluptate anim voluptate esse enim exercitation sit in.\n\nEt eiusmod enim excepteur nostrud velit cillum excepteur aliquip reprehenderit nostrud. Lorem officia eu commodo laborum. Veniam minim velit excepteur aliqua. Aute nisi do ullamco duis consectetur sit proident quis laborum ad. Ea eiusmod qui excepteur irure quis culpa minim. Duis consectetur officia reprehenderit pariatur in. Qui officia aute quis incididunt esse deserunt qui.</p>', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 'dadsdassfsdf', 'wewewe', '2020-08-16 15:49:43'),
(46, 'dsdsd', 'ddwds', '<p>hjshjdsd</p><p>sds</p><p>ds</p><p>ds</p><p>ds</p><p>d</p><p>sd</p><p>s</p><p>ds</p><p>d</p><p>sd</p><p>s</p><p>d</p><p>sd</p><p>s</p><p>dskdjsd</p><p>sds</p><p>d</p><p>sd</p><p>s</p><p>d</p><p>sd</p><p>sf</p><p>gfs</p><p>sdd</p><p>asf</p><p>sdf</p><p>gs</p><p>asd</p><p>d</p><p>s</p><p>gfs</p><p>fas</p><p>d</p><p>as</p><p>asd</p><p>as</p><p>d</p><p>asd</p><p>as</p><p>d</p><p>asdsad</p>', '0aeb65dc-cfc2-46c6-a5ad-595fc86eea6a.png', 'ddsd', 'fffgsdf', '2020-08-16 15:50:16'),
(47, 'dsds', 'wow', '<p>sdjhds</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p><br></p>', '3a738921-d5ec-4a8a-a371-7e99280464ea.jpg', 'ddsf', 'dsdsd', '2020-08-16 15:51:49'),
(48, 'dsad', 'dfsd', '<p>kj</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p><br></p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p>d</p><p><br></p><p>d</p>', 'c04b321f-0ce4-4210-8cf1-84fc245c2b0f.jpg', 'dsd', 'dsd', '2020-08-16 15:52:38');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_program_inter`
--

CREATE TABLE `tb_program_inter` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_program_s1`
--

CREATE TABLE `tb_program_s1` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bagian` varchar(50) NOT NULL DEFAULT '',
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_program_s1`
--

INSERT INTO `tb_program_s1` (`id`, `nama`, `bagian`, `deskripsi`) VALUES
(1, 'Administrasi Bisnis', 'School Of Management & Leadership', 'Lorem ipsum bisnis'),
(2, 'Akuntansi', 'School Of Management & Leadership', 'Lorem ipsum akuntansi'),
(3, 'Manajemen', 'School Of Management & Leadership', 'Lorem ipsum akuntansi Manajemen'),
(4, 'Teknik Informatika', 'School Of Engineering & Technology', 'Lorem ipsum akuntansi Teknik Informatika'),
(5, 'dds', 'School Of Engineering & Technology', 'jhjh'),
(6, 'jhjhjhhjhh', 'khkjh', 'jhhh'),
(7, 'hhh', 'School Of Management & Leadership', 'hhh'),
(8, 'Program aneh', 'khkjh', 'baru'),
(9, 'ilmu jurig', 'School Of Engineering & Technology', 'wow'),
(10, 'jgjghg', 'iyiuyuyiuyiuy', 'kjhjhjkh');

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
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_program_inter`
--
ALTER TABLE `tb_program_inter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_program_s1`
--
ALTER TABLE `tb_program_s1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
