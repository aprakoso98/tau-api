-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 10:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `isForBanner` int(11) NOT NULL DEFAULT 0,
  `mobile` int(11) DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `visible` int(11) NOT NULL DEFAULT 1,
  `image` varchar(50) DEFAULT NULL,
  `link` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `isForBanner`, `mobile`, `position`, `visible`, `image`, `link`) VALUES
(19, 0, 0, 1, 1, 'banner/47565ee0-7057-4f65-9aec-4dcd0e41ac87.png', 'tentang/misi'),
(22, 0, 0, 2, 1, 'banner/87612688-1059-4167-9387-145ba8c658ec.png', 'https://google.com'),
(23, 0, 0, 0, 1, 'banner/47565ee0-7057-4f65-9aec-4dcd0e41ac87.png', '/tentang/visi');

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
  `deskripsi` varchar(500) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`id`, `nama`, `foto`, `deskripsi`, `position`) VALUES
(12, 'sdfsdf', '70a7eecf-c859-4f2a-bc53-d3365ccbc304.png', NULL, 2),
(13, 'asdasd', 'd6ad68cf-55a4-4a76-a6c5-c42d7522d9a1.png', NULL, 0),
(14, 'asdsad', '76b6edc7-cd7d-4f7b-8b15-809e649cd443.png', NULL, 1),
(16, 'ddas', '87612688-1059-4167-9387-145ba8c658ec.png', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_files`
--

CREATE TABLE `tb_files` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `format` varchar(50) DEFAULT NULL,
  `folder` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_files`
--

INSERT INTO `tb_files` (`id`, `name`, `file`, `format`, `folder`) VALUES
(17, 'msedge_HyaBmLxzHn', '1948819e-9e9d-4aa2-9b50-864df67997c8.png', 'png', ''),
(18, 'sfd', 'bd301e57-0328-43bb-bb6f-ae6565424547.png', 'png', 'article'),
(19, 'fffgdg', '1948819e-9e9d-4aa2-9b50-864df67997c8.png', 'png', 'article'),
(21, 'chrome_znyi5Ol9n7', 'bd301e57-0328-43bb-bb6f-ae6565424547.png', 'png', 'article'),
(30, 'Widy', '178e8d7b-b80d-46f7-a4ea-20b634cebce1.png', 'png', ''),
(31, 'Photo (blue)', '50c06925-1c7f-4310-b5e9-ca9a633e6905.png', 'png', ''),
(32, 'Photo (blue)', '4ad549b9-72df-432a-bf70-612b3a38c83a.png', 'png', ''),
(33, 'chrome_rq1iJK65f6', '891c8fa5-008b-4328-b2f1-38301d5f0bcb.png', 'png', ''),
(34, 'chrome_rq1iJK65f6', '64b64179-a6d1-4518-99d1-8916633cc81a.png', 'png', ''),
(35, 'chrome_rq1iJK65f6', 'e88ad412-39f6-49de-b9e7-f16cf64598a8.png', 'png', ''),
(36, 'chrome_rq1iJK65f6', '9ebbdb2a-0a81-48b0-a27b-2053bdae2cd3.png', 'png', ''),
(37, 'chrome_rq1iJK65f6', '356c661a-6ea1-4b4f-9af5-a6dc9a6776b9.png', 'png', ''),
(38, 'chrome_rq1iJK65f6', '0ef54654-f46d-4df9-8fde-1334cf9deb58.png', 'png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  `is_video` tinyint(1) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `fromFile` int(11) NOT NULL DEFAULT 0,
  `is_embed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id`, `nama`, `deskripsi`, `media`, `is_video`, `position`, `fromFile`, `is_embed`) VALUES
(16, 'gadkh', 'kshf', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 0, 0, 0, NULL),
(19, '', '', '17', 0, 0, 1, 0);

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
(10, 'international', 'Deskripsi international', NULL),
(11, 'kontakFacebook', 'https://fb.com/aprakoso98', NULL),
(12, 'kontakWhatsapp', 'https://wa.me/6256567878', NULL),
(13, 'urlRegistrasi', '/daftar-online', NULL);

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
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `hideTanggal` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`id`, `judul`, `deskripsi`, `artikel`, `foto`, `url`, `pembuat`, `tgl`, `hideTanggal`) VALUES
(1, 'TAU Training Center', 'sdfhsdjkfl', 'jksdfjsdf', '1a90ac92-052c-414a-9afa-ddb7c187ae2e.jpg', 'training-center', 'kjfs', '2020-08-10 02:09:19', 0),
(2, 'Fast Track To Australian University', 'sdfhsdjkfl', 'jksdfjsdf', '77f20cb7-23ee-4584-a04f-5b976616be9a.png', 'international-australian', 'kjfs', '2020-08-10 02:11:21', 0),
(3, 'International Bussiness Program', 'sdfhsdjkfl', 'jksdfjsdf', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 'international-business', 'kjfs', '2020-08-10 02:12:29', 0),
(4, 'Kemahasiswaan', 'kjhshdj', 'fsddsfsf', '669f1fb0-0d25-4025-9aba-bef5b741dfc2.png', 'kemahasiswaan', 'kjdasdf', '2020-08-10 19:40:23', 0),
(43, 'Tracer Studi', 'ddfsxc', '<p>artikel ini adalah bla</p><p>bla</p><p>bla</p>', '52d7a479-1c10-49da-bd15-54634af17404.png', 'tracer-studi', 'ffds', '2020-08-16 15:34:28', 0),
(44, 'Career', 'fdcxcv', '<p>Adipisici<em>ng non Lorem ut id pariatur nostrud reprehenderit in consequat. Nisi proident cupidatat amet dolor eu eu sit ea quis amet cupidatat mollit velit id. Sunt veniam deserunt et Lorem ullamco. Labore aliquip ullamco id dolore consectetur nulla quis id anim. Eiusmod irure aliquip adipisicing qui anim. Commodo qui ad occaecat irure laborum et. Id ea nostrud amet laboris deserunt dolor commodo Lorem.\n\nQuis velit ex reprehenderit adipisicing eu commodo excepteur do duis est aute pariatur. Minim culpa sit cupidatat in reprehenderit exercitation sit proident excepteur ex dolore irure exercitation. Pariatur anim qui dolore pariatur. Consequat anim adipisicing ad excepteur sunt. Aute laborum pariatur et dolore eu ipsum deserunt adipisicing sunt enim ex amet tempor. Esse proident quis reprehenderit reprehenderit adipisicing aute sint id nulla lab</em>orum. Deserunt enim in consequat enim excepteur qui.\n\nCommodo ex cupidatat laboris ullamco mollit. Labore Lorem esse ea officia duis ad id pariatur laborum. Amet excepteur amet reprehenderit officia sit enim veniam Lorem qui. Occaecat culpa ipsum consectetur mollit cupidatat ad cupidatat adipisicing officia aliqua excepteur duis dolore. Consectetur quis sunt amet ad velit laboris cupidatat incididunt exercitation. Excepteur deserunt sint anim culpa nostrud minim pariatur laborum id aute exercitation nostrud. Ut mollit commodo laboris sunt dolore adipisicing.\n\nIncididunt Lorem est nisi quis. Ut velit commodo culpa cupidatat ea in sunt. Consectetur nisi aliqua excepteur minim voluptate ut voluptate anim voluptate esse enim exercitation sit in.\n\nEt eiusmod enim excepteur nostrud velit cillum excepteur aliquip reprehenderit nostrud. Lorem officia eu commodo laborum. Veniam minim velit excepteur aliqua. Aute nisi do ullamco duis consectetur sit proident quis laborum ad. Ea eiusmod qui excepteur irure quis culpa minim. Duis consectetur officia reprehenderit pariatur in. Qui officia aute quis incididunt esse deserunt qui.</p>', '669f1fb0-0d25-4025-9aba-bef5b741dfc2.png', 'career', 'wewewe', '2020-08-16 15:49:30', 0),
(45, 'Beasiswa', 'fdcxcv', '<p>Adipisici<em>ng non Lorem ut id pariatur nostrud reprehenderit in consequat. Nisi proident cupidatat amet dolor eu eu sit ea quis amet cupidatat mollit velit id. Sunt veniam deserunt et Lorem ullamco. Labore aliquip ullamco id dolore consectetur nulla quis id anim. Eiusmod irure aliquip adipisicing qui anim. Commodo qui ad occaecat irure laborum et. Id ea nostrud amet laboris deserunt dolor commodo Lorem.\n\nQuis velit ex reprehenderit adipisicing eu commodo excepteur do duis est aute pariatur. Minim culpa sit cupidatat in reprehenderit exercitation sit proident excepteur ex dolore irure exercitation. Pariatur anim qui dolore pariatur. Consequat anim adipisicing ad excepteur sunt. Aute laborum pariatur et dolore eu ipsum deserunt adipisicing sunt enim ex amet tempor. Esse proident quis reprehenderit reprehenderit adipisicing aute sint id nulla lab</em>orum. Deserunt enim in consequat enim excepteur qui.\n\nCommodo ex cupidatat laboris ullamco mollit. Labore Lorem esse ea officia duis ad id pariatur laborum. Amet excepteur amet reprehenderit officia sit enim veniam Lorem qui. Occaecat culpa ipsum consectetur mollit cupidatat ad cupidatat adipisicing officia aliqua excepteur duis dolore. Consectetur quis sunt amet ad velit laboris cupidatat incididunt exercitation. Excepteur deserunt sint anim culpa nostrud minim pariatur laborum id aute exercitation nostrud. Ut mollit commodo laboris sunt dolore adipisicing.\n\nIncididunt Lorem est nisi quis. Ut velit commodo culpa cupidatat ea in sunt. Consectetur nisi aliqua excepteur minim voluptate ut voluptate anim voluptate esse enim exercitation sit in.\n\nEt eiusmod enim excepteur nostrud velit cillum excepteur aliquip reprehenderit nostrud. Lorem officia eu commodo laborum. Veniam minim velit excepteur aliqua. Aute nisi do ullamco duis consectetur sit proident quis laborum ad. Ea eiusmod qui excepteur irure quis culpa minim. Duis consectetur officia reprehenderit pariatur in. Qui officia aute quis incididunt esse deserunt qui.</p>', '94a660c9-e3ca-473f-8ae4-ef9fb26e8cae.png', 'beasiswa', 'wewewe', '2020-10-31 15:49:43', 0),
(76, 'dsdsf', 'ddsadasd', '<p>ddsadasd</p>', 'article-thumb/57693f55-0284-4fdd-80ae-a709d44aeb8b.png', '33daa95c-39c8-4311-1296-103b8cf66791', 'asdasd', '2020-10-15 20:03:00', 0),
(77, 'nama judul', 'asdddssad', '<h1>Itaque nostrum <img style=\"float: right; margin: 10px; width: 214px; height: 164px;\" src=\"https://xdsoft.net/jodit/files/download.jpg\" alt=\"Itaque nostrum est-quod nostrum dico, artis est-ad ea principia, quae accepimus.\">est-quod nostrum dico, artis est-ad ea principia, quae accepimus.</h1>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <i>Quonam, inquit, modo?</i> <mark>Illum mallem levares, quo optimum atque humanissimum virum, Cn.</mark> Quae quidem vel cum periculo est quaerenda vobis; Amicitiam autem adhibendam esse censent,\n    quia sit ex eo genere, quae prosunt. <a href=\"http://loripsum.net/\" target=\"_blank\">Duo Reges: constructio interrete.</a> Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. At vero illa, quae Peripatetici, quae Stoici\n    dicunt, semper tibi in ore sunt in iudiciis, in senatu. Dic in quovis conventu te omnia facere, ne doleas. Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. Isto modo ne improbos quidem, si essent boni viri. Luxuriam non reprehendit,\n    modo sit vacua infinita cupiditate et timore. Sit ista in Graecorum levitate perversitas, qui maledictis insectantur eos, a quibus de veritate dissentiunt. </p>\n\n<blockquote cite=\"http://loripsum.net\">\n    Nec enim absolvi beata vita sapientis neque ad exitum perduci poterit, si prima quaeque bene ab eo consulta atque facta ipsius oblivione obruentur.\n</blockquote>\n\n\n<pre>Tum ille: Tu autem cum ipse tantum librorum habeas, quos hic\ntandem requiris?\n\nPossumusne ergo in vita summum bonum dicere, cum id ne in\ncena quidem posse videamur?\n</pre>\n\n\n<ul>\n    <li>Possumusne ergo in vita summum bonum dicere, cum id ne in cena quidem posse videamur?</li>\n    <li>Quodsi vultum tibi, si incessum fingeres, quo gravior viderere, non esses tui similis;</li>\n</ul>\n\n\n<ol>\n    <li>Qui autem diffidet perpetuitati bonorum suorum, timeat necesse est, ne aliquando amissis illis sit miser.</li>\n    <li>Nulla profecto est, quin suam vim retineat a primo ad extremum.</li>\n</ol>\n\n\n<dl>\n    <dt><dfn>Falli igitur possumus.</dfn></dt>\n    <dd>Quid enim ab antiquis ex eo genere, quod ad disserendum valet, praetermissum est?</dd>\n    <dt><dfn>Scrupulum, inquam, abeunti;</dfn></dt>\n    <dd>Scio enim esse quosdam, qui quavis lingua philosophari possint;</dd>\n    <dt><dfn>Poterat autem inpune;</dfn></dt>\n    <dd>Tum ille: Tu autem cum ipse tantum librorum habeas, quos hic tandem requiris?</dd>\n    <dt><dfn>Beatum, inquit.</dfn></dt>\n    <dd>Respondeat totidem verbis.</dd></dl>﻿', 'article-thumb/767ae296-8e1c-495e-ac91-6428f738563d.png', 'judul-nama-nya', 'sad', '2020-10-27 11:39:00', 0),
(78, 'test lagi', 'asd', '<p>Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum&nbsp; proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lor<img src=\"$FILE_PATHarticle//4ad549b9-72df-432a-bf70-612b3a38c83a.png\" style=\"width: 70px; height: 98px; float: right;\">em ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.Voluptate in pariatur nisi veniam. Et esse sint amet Lorem aliquip incididunt Lorem ut laboris. Enim velit reprehenderit eiusmod cillum proident. Velit culpa minim sit dolore laboris ipsum.&nbsp;</p><p><br></p>', 'article-thumb/c2bb8235-a83e-41f7-a55f-2885c40ef2a3.png', '84ca5d7f-da2d-48e9-2520-a0b068d41cb5', 'asd', '2020-10-08 11:05:00', 0),
(79, 'test image sejajar', 'dsad', '<span id=\"jodit-selection_marker_1603774935332_47318066298175987\" data-jodit-selection_marker=\"start\" style=\"line-height: 0; display: none;\">﻿</span><ol><li><img src=\"$FILE_PATHarticle//9ebbdb2a-0a81-48b0-a27b-2053bdae2cd3.png\" style=\"width: 109px; height: 151px; float: left;\">dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;dhgdsgfsdfffffffffffffffffffffffffffffff fdshhj&nbsp;</li><li>sfsdfsdf</li></ol><ul><li>asdsad</li><li>sad</li><li>asd</li><li>asd</li><li>asd</li><li>sadjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh&nbsp;</li></ul><span id=\"jodit-selection_marker_1603774953888_5099561135934998\" data-jodit-selection_marker=\"start\" style=\"line-height: 0; display: none;\">﻿</span><p><img src=\"$FILE_PATHarticle//356c661a-6ea1-4b4f-9af5-a6dc9a6776b9.png\" style=\"width: 107px; height: 146px; float: left;\">dsahdhsahdgashgdasd<span id=\"jodit-selection_marker_1603774994500_9047972450835509\" data-jodit-selection_marker=\"start\" style=\"line-height: 0; display: none;\">﻿</span><img src=\"$FILE_PATHarticle//0ef54654-f46d-4df9-8fde-1334cf9deb58.png\" style=\"float: right; width: 93px; height: 129px;\">﻿</p><p>sadjasgdjhasd</p><p>asdjgsadjghasda</p><p>sdashdghadasd</p><p>asdhgasjdgasd</p><p>asdhhsaghdghjadgasd</p><p>asdhgjhdghasd</p><p>sadkashdasd</p><p>sakdhkasd</p><p>asdjhhsadhkasjhdjsahdjsad</p>', 'article-thumb/9aa78d6e-65cf-4d0b-834f-0ff8c3ea356e.png', '2a6ccea5-90dc-4d41-1362-b361909e9045', 'dd', '2020-10-10 12:03:00', 0),
(80, 'ad', 'dasd', '<p>dsad</p>', 'article-thumb/3e715df5-cf7d-4ae6-8703-58d6e36037b2.png', 'ef5a8017-3857-4c72-283e-0299abe2287b', 'dasd', '2020-10-09 16:53:00', 1),
(81, 'add', 'dasd', '<p>dsad</p>', 'article-thumb/2855b00b-0dca-45bc-9329-830f2a268c88.png', 'ef5a8017-3857-4c72-283e-02d99abe2287b', 'dasd', '2020-10-09 16:53:00', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_files`
--
ALTER TABLE `tb_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
