-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 02:02 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Reporter');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 9),
(2, 1, 10),
(3, 1, 11),
(4, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add kategori utama', 1, 'add_kategoriutama'),
(2, 'Can change kategori utama', 1, 'change_kategoriutama'),
(3, 'Can delete kategori utama', 1, 'delete_kategoriutama'),
(4, 'Can view kategori utama', 1, 'view_kategoriutama'),
(5, 'Can add kategori tambahan', 2, 'add_kategoritambahan'),
(6, 'Can change kategori tambahan', 2, 'change_kategoritambahan'),
(7, 'Can delete kategori tambahan', 2, 'delete_kategoritambahan'),
(8, 'Can view kategori tambahan', 2, 'view_kategoritambahan'),
(9, 'Can add berita', 3, 'add_berita'),
(10, 'Can change berita', 3, 'change_berita'),
(11, 'Can delete berita', 3, 'delete_berita'),
(12, 'Can view berita', 3, 'view_berita'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session'),
(37, 'Can add komentar', 10, 'add_komentar'),
(38, 'Can change komentar', 10, 'change_komentar'),
(39, 'Can delete komentar', 10, 'delete_komentar'),
(40, 'Can view komentar', 10, 'view_komentar');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$s8gY1RycSJo9$XmLImBpZsy6PF9xm52WPy9AQqn8T/du6OptkL3PSZCw=', '2020-06-30 10:22:32.540432', 1, 'admin', 'Randi', 'Oktaria', 'admin@mail.com', 1, 1, '2020-06-20 02:26:26.000000'),
(2, 'pbkdf2_sha256$180000$lat0CLTx3Xmb$NDFSclNAV5ouP0+JUp2j1WqRKf+zBBXvh1KAhU6i4zM=', '2020-06-28 08:18:01.727965', 0, 'reporter', 'Reporter', 'Reporter', 'reporter1@gmail.com', 1, 1, '2020-06-28 02:24:06.000000'),
(3, 'pbkdf2_sha256$180000$1lC4RbP6w8tw$2gjHgCHOJC4Gr7fDlMcRZ2/vfT40/zq8lYGGTReW0gs=', '2020-06-28 02:42:49.565510', 0, 'reporter2', 'Reporter 2', 'Reporter 2', 'reporter2@gmail.com', 1, 1, '2020-06-28 02:25:48.000000'),
(4, 'pbkdf2_sha256$180000$stXcZIK9iE1C$kE5wIpZnQFPKeaSRtW4lfV8+M4Zb2SPoyzRYCXdj0Ls=', '2020-06-28 07:54:06.845572', 0, 'cristiano', 'Cristiano', 'Ronaldo', 'cristiano@gmail.com', 0, 1, '2020-06-28 07:54:06.229496'),
(5, 'pbkdf2_sha256$180000$RPYwnPeBHHo7$cgKqiE2L6lR6JdLL+Vzi9tmsFomgXqqFF6PAVTOhLKw=', '2020-06-28 07:55:48.252615', 0, 'lionel_messi', 'Lionel', 'Messi', 'lionelmessi@gmail.com', 0, 1, '2020-06-28 07:55:47.740526'),
(6, 'pbkdf2_sha256$180000$ixdlQiTBU6yi$SKPl2S5w7gOdsnLuCDIVM4UAS1jMZutWuKqiFi/agw0=', '2020-06-28 08:01:31.877365', 0, 'gelvin', 'Gelvin', 'Aliensky', 'gelvin@yahoo.co.id', 0, 1, '2020-06-28 08:01:31.357259'),
(8, 'pbkdf2_sha256$180000$6bOxkwM0L5b9$cPyj2nIKQi/GUIPa1vkcdb7twqic1TYryinfSbad0QA=', '2020-06-28 08:10:01.755054', 0, 'mesutozil', 'Mesut', 'Ozil', 'ozil@yahoo.co.id', 0, 1, '2020-06-28 08:10:01.139012');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-20 02:35:36.025978', '2', 'Olahraga', 1, '[{\"added\": {}}]', 1, 1),
(2, '2020-06-20 02:36:02.063704', '3', 'Politik', 1, '[{\"added\": {}}]', 1, 1),
(3, '2020-06-20 02:36:34.528786', '4', 'Keuangan', 1, '[{\"added\": {}}]', 1, 1),
(4, '2020-06-20 02:44:49.443929', '1', 'Sepakbola', 1, '[{\"added\": {}}]', 2, 1),
(5, '2020-06-20 02:46:01.606127', '2', 'MotoGP', 1, '[{\"added\": {}}]', 2, 1),
(6, '2020-06-20 04:41:46.748417', '1', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 1, '[{\"added\": {}}]', 3, 1),
(7, '2020-06-20 04:50:02.689769', '2', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 1, '[{\"added\": {}}]', 3, 1),
(8, '2020-06-21 01:09:52.258478', '2', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 3, '', 3, 1),
(9, '2020-06-21 01:09:52.531248', '1', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 3, '', 3, 1),
(10, '2020-06-21 01:13:53.823216', '3', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 1, '[{\"added\": {}}]', 3, 1),
(11, '2020-06-21 01:29:42.486768', '3', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 3, '', 3, 1),
(12, '2020-06-21 01:30:11.701352', '4', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 1, '[{\"added\": {}}]', 3, 1),
(13, '2020-06-21 01:35:16.078965', '4', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 3, '', 3, 1),
(14, '2020-06-21 01:35:46.619704', '5', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 1, '[{\"added\": {}}]', 3, 1),
(15, '2020-06-22 03:19:53.138897', '5', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 3, '', 3, 1),
(16, '2020-06-22 03:22:10.217089', '6', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 1, '[{\"added\": {}}]', 3, 1),
(17, '2020-06-22 04:57:29.575304', '5', 'Teknologi', 1, '[{\"added\": {}}]', 1, 1),
(18, '2020-06-22 04:57:54.506666', '6', 'Gaya Hidup', 1, '[{\"added\": {}}]', 1, 1),
(19, '2020-06-22 04:58:17.964477', '7', 'Otomotif', 1, '[{\"added\": {}}]', 1, 1),
(20, '2020-06-22 04:59:47.713146', '3', 'Pemilu', 1, '[{\"added\": {}}]', 2, 1),
(21, '2020-06-22 05:00:12.841217', '4', 'F1', 1, '[{\"added\": {}}]', 2, 1),
(22, '2020-06-22 05:04:29.535296', '5', 'Kesehatan', 1, '[{\"added\": {}}]', 2, 1),
(23, '2020-06-22 05:04:56.185166', '6', 'Fashion', 1, '[{\"added\": {}}]', 2, 1),
(24, '2020-06-22 05:05:39.301803', '7', 'Makanan', 1, '[{\"added\": {}}]', 2, 1),
(25, '2020-06-22 05:06:10.411721', '8', 'Saham dan Valas', 1, '[{\"added\": {}}]', 2, 1),
(26, '2020-06-22 05:06:55.497705', '9', 'Fiskal dan Moneter', 1, '[{\"added\": {}}]', 2, 1),
(27, '2020-06-22 05:07:29.417266', '10', 'Properti', 1, '[{\"added\": {}}]', 2, 1),
(28, '2020-06-22 05:08:04.804051', '11', 'Olahraga Lain', 1, '[{\"added\": {}}]', 2, 1),
(29, '2020-06-22 05:08:25.771729', '12', 'Mobil', 1, '[{\"added\": {}}]', 2, 1),
(30, '2020-06-22 05:08:44.649166', '13', 'Motor', 1, '[{\"added\": {}}]', 2, 1),
(31, '2020-06-22 05:09:10.628983', '14', 'Pilkada 2018', 1, '[{\"added\": {}}]', 2, 1),
(32, '2020-06-22 05:09:31.306515', '15', 'Gadget', 1, '[{\"added\": {}}]', 2, 1),
(33, '2020-06-22 05:10:01.473397', '16', 'Game', 1, '[{\"added\": {}}]', 2, 1),
(34, '2020-06-22 05:42:00.637416', '7', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 1, '[{\"added\": {}}]', 3, 1),
(35, '2020-06-22 05:44:16.221911', '6', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 3, 1),
(36, '2020-06-22 05:46:38.065506', '8', 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 1, '[{\"added\": {}}]', 3, 1),
(37, '2020-06-22 05:50:06.277640', '9', 'Waspada! Merokok Sesaat Setelah Berbuka Puasa Sebabkan Bahaya Ini', 1, '[{\"added\": {}}]', 3, 1),
(38, '2020-06-22 05:51:59.464772', '7', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 3, 1),
(39, '2020-06-22 05:59:20.616528', '7', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 3, 1),
(40, '2020-06-22 06:03:45.815051', '6', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 3, 1),
(41, '2020-06-22 06:05:32.271493', '6', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 3, 1),
(42, '2020-06-22 06:05:57.949714', '7', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 3, 1),
(43, '2020-06-23 06:35:34.961226', '2', 'randi', 1, '[{\"added\": {}}]', 7, 1),
(44, '2020-06-23 09:23:46.505043', '4', 'gelvin', 3, '', 7, 1),
(45, '2020-06-23 09:23:46.561118', '3', 'john', 3, '', 7, 1),
(46, '2020-06-23 09:23:46.601061', '2', 'randi', 3, '', 7, 1),
(47, '2020-06-23 10:07:49.389256', '6', 'ddddddddddddd', 3, '', 7, 1),
(48, '2020-06-23 10:07:49.565337', '10', 'ffffffffffff', 3, '', 7, 1),
(49, '2020-06-23 10:07:49.613268', '11', 'gggggggggg', 3, '', 7, 1),
(50, '2020-06-23 10:07:49.741348', '13', 'hhh', 3, '', 7, 1),
(51, '2020-06-23 10:07:49.773349', '7', 'nnnnnnnnnn', 3, '', 7, 1),
(52, '2020-06-23 10:07:49.885358', '5', 'ssssss', 3, '', 7, 1),
(53, '2020-06-23 10:07:49.917360', '12', 'tttttttttt', 3, '', 7, 1),
(54, '2020-06-23 10:07:49.965363', '8', 'wwwwwwww', 3, '', 7, 1),
(55, '2020-06-23 10:07:49.997294', '9', 'yyyyyyyyyyyy', 3, '', 7, 1),
(56, '2020-06-23 10:49:58.811207', '14', 'randi', 3, '', 7, 1),
(57, '2020-06-23 11:09:46.144318', '16', 'gelvin', 3, '', 7, 1),
(58, '2020-06-23 11:09:46.232420', '15', 'randi', 3, '', 7, 1),
(59, '2020-06-24 00:30:38.280917', '2', 'eeeee', 3, '', 7, 1),
(60, '2020-06-24 03:21:15.067824', '4', 'eeeee', 3, '', 7, 1),
(61, '2020-06-24 15:59:58.032574', '9', 'dddddqk', 3, '', 7, 1),
(62, '2020-06-25 04:05:45.344242', '10', 'nnn', 1, '[{\"added\": {}}]', 3, 1),
(63, '2020-06-25 04:09:41.311485', '10', 'nnn', 3, '', 3, 1),
(64, '2020-06-25 04:12:29.061242', '11', 'nnnnnn', 1, '[{\"added\": {}}]', 3, 1),
(65, '2020-06-25 04:14:52.041652', '1', 'Reporter', 1, '[{\"added\": {}}]', 6, 1),
(66, '2020-06-25 04:15:58.480038', '8', 'Rinanda', 1, '[{\"added\": {}}]', 7, 1),
(67, '2020-06-25 04:16:32.183685', '8', 'Rinanda', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\"]}}]', 7, 1),
(69, '2020-06-27 01:15:15.643394', '12', 'mantap mantap', 3, '', 3, 1),
(70, '2020-06-27 01:15:15.739401', '11', 'nnnnnn', 3, '', 3, 1),
(71, '2020-06-27 01:34:10.917486', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 7, 1),
(72, '2020-06-27 01:34:46.220413', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 7, 1),
(74, '2020-06-27 03:50:27.897315', '13', 'hhhhhhhh', 3, '', 3, 1),
(75, '2020-06-27 04:48:14.751475', '9', 'Waspada! Merokok Sesaat Setelah Berbuka Puasa Sebabkan Bahaya Ini', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(76, '2020-06-27 05:06:40.438864', '8', 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(77, '2020-06-27 05:07:18.858167', '8', 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(78, '2020-06-27 05:08:16.710258', '7', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(80, '2020-06-27 05:40:03.785820', '14', 'bbbbbbbb', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(81, '2020-06-27 05:41:05.547993', '6', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(89, '2020-06-27 06:04:24.966285', '16', 'ggg', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(90, '2020-06-27 06:05:10.500140', '16', 'ggg', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(91, '2020-06-27 06:06:04.724203', '16', 'ggg', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(92, '2020-06-27 06:07:59.136427', '17', 'fgkjdkkl', 1, '[{\"added\": {}}]', 3, 1),
(94, '2020-06-27 06:12:26.415147', '18', 'kfdknfkdnk', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(95, '2020-06-27 06:16:07.696154', '18', 'kfdknfkdnk', 3, '', 3, 1),
(96, '2020-06-27 06:16:07.843180', '17', 'fgkjdkkl', 3, '', 3, 1),
(97, '2020-06-27 06:16:07.876680', '16', 'ggg', 3, '', 3, 1),
(98, '2020-06-27 06:16:07.909771', '15', 'jjjj', 3, '', 3, 1),
(99, '2020-06-27 06:16:08.009338', '14', 'bbbbbbbb', 3, '', 3, 1),
(100, '2020-06-27 06:16:08.042994', '9', 'Waspada! Merokok Sesaat Setelah Berbuka Puasa Sebabkan Bahaya Ini', 3, '', 3, 1),
(101, '2020-06-27 06:16:08.076247', '8', 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 3, '', 3, 1),
(102, '2020-06-27 06:16:08.109496', '7', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 3, '', 3, 1),
(103, '2020-06-27 06:16:08.142825', '6', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 3, '', 3, 1),
(104, '2020-06-27 10:02:50.213850', '5', 'gelvin', 3, '', 7, 1),
(105, '2020-06-27 10:02:50.349889', '3', 'randi', 3, '', 7, 1),
(106, '2020-06-27 10:02:50.381893', '8', 'Rinanda', 3, '', 7, 1),
(107, '2020-06-27 10:02:50.413862', '7', 'rino', 3, '', 7, 1),
(108, '2020-06-27 10:03:09.154417', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(109, '2020-06-27 10:08:13.997965', '1', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 1, '[{\"added\": {}}]', 3, 1),
(110, '2020-06-27 10:08:33.928065', '1', 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(111, '2020-06-28 02:24:06.602604', '2', 'reporter', 1, '[{\"added\": {}}]', 7, 1),
(112, '2020-06-28 02:25:03.161859', '2', 'reporter', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Email address\", \"Groups\"]}}]', 7, 1),
(113, '2020-06-28 02:25:16.815733', '2', 'reporter', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 7, 1),
(114, '2020-06-28 02:25:48.655702', '3', 'reporter2', 1, '[{\"added\": {}}]', 7, 1),
(115, '2020-06-28 02:26:03.237670', '3', 'reporter2', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Groups\"]}}]', 7, 1),
(116, '2020-06-28 02:26:33.821856', '3', 'reporter2', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 7, 1),
(117, '2020-06-28 02:26:57.963283', '2', 'reporter', 2, '[{\"changed\": {\"fields\": [\"Last name\"]}}]', 7, 1),
(118, '2020-06-28 02:27:17.770436', '3', 'reporter2', 2, '[{\"changed\": {\"fields\": [\"Last name\", \"Email address\"]}}]', 7, 1),
(119, '2020-06-28 02:30:29.962186', '2', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 1, '[{\"added\": {}}]', 3, 2),
(120, '2020-06-28 02:32:16.552729', '3', 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 1, '[{\"added\": {}}]', 3, 2),
(121, '2020-06-28 02:36:58.738777', '4', 'Waspada! Merokok Sesaat Setelah Berbuka Puasa Sebabkan Bahaya Ini', 1, '[{\"added\": {}}]', 3, 2),
(122, '2020-06-28 02:38:49.580335', '5', 'IHSG Naik ke 6.031, Ditopang Penguatan 9 Sektor', 1, '[{\"added\": {}}]', 3, 2),
(123, '2020-06-28 02:44:53.263478', '6', 'Man City Enggan Menyerah Kejar Jorginho', 1, '[{\"added\": {}}]', 3, 3),
(124, '2020-06-28 02:46:01.156055', '7', '5 Mobil Terlaris Jelang Lebaran, Mitsubishi Xpander Nomor 1', 1, '[{\"added\": {}}]', 3, 3),
(125, '2020-06-28 02:47:10.746935', '8', 'Pilgub Jabar, Pemilih Diminta Cermat Amati Track Record Paslon', 1, '[{\"added\": {}}]', 3, 3),
(126, '2020-06-28 02:48:44.776620', '9', 'Xiaomi Mi A2 Lite Kantongi Sertifikasi, Ini Spesifikasinya', 1, '[{\"added\": {}}]', 3, 3),
(127, '2020-06-28 02:50:11.594490', '2', 'Hamilton: Saya Belum Pantas Juarai F1 2018', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(128, '2020-06-28 02:51:16.704515', '3', 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(129, '2020-06-28 07:22:13.158169', '4', 'Waspada! Merokok Sesaat Setelah Berbuka Puasa Sebabkan Bahaya Ini', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(130, '2020-06-28 07:22:31.924654', '5', 'IHSG Naik ke 6.031, Ditopang Penguatan 9 Sektor', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(131, '2020-06-28 07:22:40.588724', '6', 'Man City Enggan Menyerah Kejar Jorginho', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(132, '2020-06-28 07:22:50.019176', '7', '5 Mobil Terlaris Jelang Lebaran, Mitsubishi Xpander Nomor 1', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(133, '2020-06-28 07:22:56.549898', '8', 'Pilgub Jabar, Pemilih Diminta Cermat Amati Track Record Paslon', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(134, '2020-06-28 07:23:03.852664', '9', 'Xiaomi Mi A2 Lite Kantongi Sertifikasi, Ini Spesifikasinya', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(135, '2020-06-28 07:30:35.130308', '10', 'judul judul', 1, '[{\"added\": {}}]', 3, 2),
(136, '2020-06-28 07:32:46.584072', '10', 'judul judul', 2, '[]', 3, 2),
(137, '2020-06-28 07:37:38.474629', '11', 'sssssssss', 1, '[{\"added\": {}}]', 3, 2),
(138, '2020-06-28 07:40:50.552456', '10', 'judul judul', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(139, '2020-06-28 07:40:56.115098', '11', 'sssssssss', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 3, 1),
(140, '2020-06-28 07:42:34.104675', '10', 'judul judul', 2, '[]', 3, 1),
(141, '2020-06-28 07:43:16.475208', '11', 'sssssssss', 3, '', 3, 1),
(142, '2020-06-28 07:43:16.647086', '10', 'judul judul', 3, '', 3, 1),
(143, '2020-06-28 08:18:44.897758', '9', 'rionriance', 3, '', 7, 1),
(144, '2020-06-28 08:18:44.953762', '10', 'sergioramos', 3, '', 7, 1),
(145, '2020-06-28 08:18:44.985763', '7', 'sergio_ramos', 3, '', 7, 1),
(146, '2020-06-28 08:18:45.049782', '12', 'silvi', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(8, 'contenttypes', 'contenttype'),
(3, 'news', 'berita'),
(2, 'news', 'kategoritambahan'),
(1, 'news', 'kategoriutama'),
(10, 'news', 'komentar'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-20 02:24:35.666637'),
(2, 'auth', '0001_initial', '2020-06-20 02:24:37.144720'),
(3, 'admin', '0001_initial', '2020-06-20 02:24:43.487703'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-20 02:24:44.819185'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-20 02:24:44.922839'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-20 02:24:45.912466'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-20 02:24:46.639359'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-20 02:24:47.637795'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-20 02:24:47.685684'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-20 02:24:48.149974'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-20 02:24:48.187258'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-20 02:24:48.236099'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-20 02:24:48.881208'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-20 02:24:49.640180'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-20 02:24:51.083347'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-20 02:24:51.189421'),
(17, 'news', '0001_initial', '2020-06-20 02:24:52.122948'),
(18, 'sessions', '0001_initial', '2020-06-20 02:24:55.737018'),
(19, 'news', '0002_auto_20200624_1043', '2020-06-24 03:43:24.923015'),
(20, 'news', '0003_auto_20200627_1141', '2020-06-27 04:41:41.008923');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('24k8jla539p2lychiry87jyfsmfqf8y8', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-09 03:53:38.834669'),
('4cixihgpdifpwyfye3hlrphv1qduky3u', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-08 00:30:17.681166'),
('6hr82xjvock6a2znhbirhx4k3ggy5s0a', 'M2U0N2NhYjhjNWM2NGQ4ZDBiY2JiMmE1M2QzZDlkMDgzNzliZjliNDp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZmEzMjBmOWNhNmY1MzlkMDk4MDdmMjhkM2Y3OTNkZGQ4ZjA0MTE4In0=', '2020-07-08 06:16:10.504575'),
('9nyjq9fwrjynivupiip68eu5j7x2p2wl', 'MWQ0YzllZGVmMDY4ZDNjMmNhMjY0YTNhY2Y0NTc4NjUyMDJjMDFkZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NmM4YWM4NTc1NjQzNjhkNGJhOTNlZWEyNGViZjYyMGRiOWY0YzNlIn0=', '2020-07-08 05:54:44.249386'),
('b7qy9rkmekopbmsvevrb6yf39t3w5eub', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-07 09:22:56.058112'),
('fhji62fv38l5j9rbksq7khc1p9ip6grj', 'MWQ0YzllZGVmMDY4ZDNjMmNhMjY0YTNhY2Y0NTc4NjUyMDJjMDFkZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NmM4YWM4NTc1NjQzNjhkNGJhOTNlZWEyNGViZjYyMGRiOWY0YzNlIn0=', '2020-07-08 01:36:25.218957'),
('kkzwnta6d0u6clh0tsssal2igls1xvfp', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-11 06:04:01.253376'),
('lz158l080ld3zu6qm83tisfcald41lxi', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-11 10:02:26.623655'),
('nqk2rai11f0zm3018gdo5otehvvi3csj', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-08 00:48:43.407676'),
('ocpuijsaynfahndoa4b6scrw5ibxabyv', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-06 04:56:54.858320'),
('qol6ovukuqj22ruxc4zoig0w43qwpcxv', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-09 05:19:59.007585'),
('ujjgqpsei3b9jo1kb7wnhr33z0vx7iip', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-11 01:25:33.936834'),
('zl8bj2ykt722h1a2cas6k2wiusm7u9ro', 'ZTYzZDUyZGJiYTJmYzE5NGUxZmZiZDIwY2YzOTYxZDhiMzI5MjA1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTNiMTVlZWE0MzJjZWExMDlmYjI1MmVkNzljYTQ0OGRjNGE0NzVmIn0=', '2020-07-04 04:39:45.374215');

-- --------------------------------------------------------

--
-- Table structure for table `news_berita`
--

CREATE TABLE `news_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_post` datetime(6) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `kategori_tambahan_id` int(11) NOT NULL,
  `kategori_utama_id` int(11) NOT NULL,
  `penulis_id` int(11) NOT NULL,
  `publish` tinyint(1)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_berita`
--

INSERT INTO `news_berita` (`id`, `judul`, `header`, `isi`, `foto`, `tgl_post`, `slug`, `kategori_tambahan_id`, `kategori_utama_id`, `penulis_id`, `publish`) VALUES
(1, 'Marquez Bersyukur Dovizioso Gagal Finis di MotoGP', 'LE MANS – Hasil menjanjikan mampu didapat oleh pembalap Tim Repsol Honda, Marc Marquez, ketika tampil dalam lanjutan kejuaraan dunia MotoGP musim 2018 seri Prancis. Ya, Marquez berhasil memastikan kemenangan dalam balapan tersebut.', 'Pada balapan yang digelar di Sirkuit Le Mans pada akhir pekan kemarin, Marquez sendiri memang sempat kesulitan untuk bisa memimpin race. Baru pada lap kesembilan Marquez benar-benar melakukannya.<br />\\r\\n<br />\\r\\nHal tersebut terjadi setelah Marquez mampu memenangkan duel dengan pembalap Tim Ducati Corse, Jorge Lorenzo. Marquez pun mampu menjaga posisinya sebagai pemimpin balapan hingga race di lintasan dengan panjang 4,2 km tersebut berakhir.', 'news/screenshot.1465.jpg', '2020-06-27 10:08:33.872063', 'marquez-bersyukur-dovizioso-gagal-finis-di-motogp', 2, 2, 1, 1),
(2, 'Hamilton: Saya Belum Pantas Juarai F1 2018', 'BRAKLEY – Pembalap Tim Mercedes AMG Petronas, Lewis Hamilton, mengaku mengawali gelaran Formula One (F1) 2018 dengan sangat buruk. Bahkan, Hamilton mengatakan dirinya belum cukup baik untuk memenangkan gelar juara dunia F1 musim ini.', 'Gelaran F1 2018 memang baru empat seri balapan yang sudah dilaksanakan. Dari keempat seri tersebut, sebenarnya Hamilton tampil cukup gemilang. Bagaimana tidak, dari empat seri itu, pembalap berpaspor Inggris itu sudah tiga kali naik podium.<br />\\r\\n<br />\\r\\nBahkan, saat seri keempat F1 2018 yang dilangsungkan di Baku Street Circuit pada Minggu 29 April 2018 malam WIB tersebut, Hamilton mampu meraih hasil maksimal dengan memenangkan grand prix (GP) Azerbaijan itu. Alhasil, kini ia pun dapat berada di puncak klasemen sementara pembalap F1 2018.<br />\\r\\n<br />\\r\\nAkan tetapi, meski berada di posisi teratas klasemen sementara pembalap F1 lantas tak membuat Hamilton merasa tenang. Ia mengaku masih sangat khawatir dengan posisinya yang masih berpeluang untuk direbut oleh pembalap lain.', 'news/screenshot.1466.jpg', '2020-06-28 02:50:11.531919', 'hamilton-saya-belum-pantas-juarai-f1-2018', 4, 2, 2, 1),
(3, 'Suzuki Akan Lepas Iannone Akhir Musim Ini?', 'Hamamatsu – Pembalap Tim Suzuki Ecstar, Andrea Iannone, tampil cukup baik pada awal MotoGP 2018. Pembalap berkebangsaan Italia itu meraih dua podium berturut-turut saat melakoni balapan di Circuit of the Americas (COTA), Amerika Serikat dan Sirkuit Jerez,', 'Meski demikian, raihan positifnya pada dua seri pembuka MotoGP 2018 tersebut tidak sejalan dengan nasib kontraknya bersama Suzuki Ecstar. Tim pabrikan asal Jepang itu dikabarkan akan melepas Iannone pada akhir musim ini. <br />\\r\\n<br />\\r\\nKami memiliki kecepatan yang baik, kami cukup dekat dengan pembalap di urutan pertama, tetapi kami kehilangan semuanya setelah terlalu cepat memasuki tikungan. Usaha melewati pembalap lain pada trek lurus sebelumnya menjadi sesuatu yang sia-sia,” ujar Iannone seperti dilansir dari Tuttomotoriweb, Kamis (24/5/2018).<br />\\r\\n<br />\\r\\n“Kami memang cukup baik pada dua balapan sebelumnya, tapi masa depan akan membutuhkan situasi lain,” tambah Iannone <br />\\r\\n<br />\\r\\nKeputusan mengenai masa depan Iannone tersebut beredar setelah kunjungan CEO Suzuki, Toshihiro Suzuki untuk menyaksikan langsung balapan di Le Mans. Ia datang untuk memberikan dukungan langsung kepada para pembalap Suzuki. Akan tetapi, kunjungan bos Suzuki tersebut justru diwarnai dengan jatuhnya Iannone pada lap pertama.', 'news/screenshot.1467.jpg', '2020-06-28 02:51:16.642029', 'suzuki-akan-lepas-iannone-akhir-musim-ini', 2, 2, 2, 1),
(4, 'Waspada! Merokok Sesaat Setelah Berbuka Puasa Sebabkan Bahaya Ini', 'RAMADAN membuat hampir semua kebiasaan berubah dalam sekejap, termasuk merokok. Kebiasaan buruk ini mau tidak mau berhenti setidaknya 12 jam karena puasa Ramadan yang wajib dilaksanakan umat Muslim.', 'Para perokok yang semula enggan berhenti merokok dan mengaku sulit untuk tidak merokok, pada saat puasa mereka bisa menahannya, demi taat pada Allah. Namun, sesaat setelah berpuasa, para perokok ini kembali mengisap rokoknya, padahal bahaya merokok setelah berbuka puasa mengintai mereka.<br />\\r\\n<br />\\r\\n\"Gini kalau kita puasa lambung berarti kosong, saat berbuka puasa baiknya dimulai dengan makanan yang baik, biasanya makanan yang manis dulu, perlahan baru makanan besar. Perokok itu dia efek adiktifnya tinggi, nikotinnya, karbonmonoksidanya, kita berpuasa selama 12 jam, capek lelah, otomatis beban jantung meningkat, tidak makan, dan tidak minum, lalu dibebani dengan rokok jelas bahaya,\" jelas dr. Ade Meidian Ambari, SpJP FIHA, dalam acara Konferensi Pers Peringatan Hari Tanpa Tembakau Sedunia 2018, di Heart House, Jakarta, Selasa (5/6/2018).<br />\\r\\n<br />\\r\\nAde menjelaskan, kandungan zat adiktif pada rokok bisa membuat seseorang candu hingga tanpa sadar merusak tubuhnya sendiri. Meskipun sulit untuk menjauh dan mengenyahkan kebiasaan merokok, namun Ade menyarankan, momen Ramadan sebaiknya digunakan dengan sebaik mungkin untuk menghentikan kebiasaan merokok. <br />\\r\\n<br />\\r\\n\"Nikotin, karbonmonokdsida, dan partikel lainnya, yang merusak otomatis membuat perokok lebih rentan untuk terkena penyakit. Padahal, dengan puasa dia bisa berhenti merokok, bisa menahan diri untuk tidak merokok, dan memang tergantung niat, sebenarnya kalau memang mau pasti bisa menghentikan kebiasaan merokok,\" ujarnya.<br />\\r\\n<br />\\r\\nBagi orang yang tetap nekat merokok saat berbuka puasa, berbagai macam efeknya bisa didapatkan. Dua di antaranya infeksi paru-paru dan sesak napas, juga asam lambung meninggi karena kondisi tubuh yang belum pulih dari berpuasa seharian harus terpapar asap rokok.<br />\\r\\n<br />\\r\\n\"Macam-macam efeknya, tiap orang berbeda. Kalau dia merokok tentu paru-parunya tidak sehat karena asap rokok, otomatis lebih rentan infeksi paru-paru atau sesak napas, dan lambungnya juga mungkin bisa lebih asam karena merokok setelah berbuka puasa,\" tutupnya.', 'news/screenshot.1478.jpg', '2020-06-28 07:22:13.094154', 'waspada-merokok-sesaat-setelah-berbuka-puasa-sebabkan-bahaya-ini', 5, 6, 2, 1),
(5, 'IHSG Naik ke 6.031, Ditopang Penguatan 9 Sektor', 'JAKARTA – Indeks Harga Saham Gabungan (IHSG) dibuka menguat pada perdagangan Selasa (5/6/2018). Pasar saham Indonesia mampu melanjutkan penguatan ditopang kenaikan sembilan sektor penggerak utama. IHSG naik 20,52 poin atau 0,3% ke level 6.031,37.', 'Membuka perdagangan, ada 72 saham menguat, 18 saham melemah, dan 40 saham stagnan. Transaksi perdagangan mencapai Rp50,99 miliar dari 20,47 juta lembar saham diperdagangkan.<br />\\r\\n<br />\\r\\nIndeks LQ45 naik 3,65 poin atau 0,4% menjadi 965,82, Jakarta Islamic Index (JII) naik 5,75 poin atau 0,8% ke 688,72, indeks IDX30 naik 1,85 poin atau 0,4% ke 524,79 dan indeks MNC36 naik 1,51 poin atau 0,4% ke 340,37.<br />\\r\\n<br />\\r\\nMayoritas sektor penggerak IHSG menguat, dengan sektor industri dasar memimpin penguatan hingga 1,1%. Hanya sektor keuangan yang mengalami pelemahan sebesar 0,2%. <br />\\r\\n<br />\\r\\nAdapun saham-saham yang bergerak dalam jajaran top gainers, antara lain saham PT Hotel Mandarine Regency Tbk (HOME) naik Rp19 atau 13,67% ke Rp158, saham PT Indomobil Sukses Tbk (IMAS) naik Rp150 atau 4,48% ke Rp3.500 dan saham PT Pabrik Kertas Tjiwi Kimia Tbk (TKIM) naik Rp675 atau 4,48% ke Rp15.750.<br />\\r\\n<br />\\r\\nAdapun saham-saham yang bergerak dalam jajaran top losers, antara lain PT Golden Plantation Tbk (GOLL) turun Rp3 atau 4,92% ke Rp58, saham PT Siloam International Hospitals Tbk (SILO) turun Rp225 atau 3,35% ke Rp6.500, dan saham PT Pakuwon Jati Tbk (PWON) turun Rp10 atau 1,77% ke Rp555.', 'news/screenshot.1479.jpg', '2020-06-28 07:22:31.924654', 'ihsg-naik-ke-6031-ditopang-penguatan-9-sektor', 8, 4, 2, 1),
(6, 'Man City Enggan Menyerah Kejar Jorginho', 'MANCHESTER – Gelandang Napoli, Jorginho, masih menjadi daya tarik tersendiri bagi Man City untuk mendatangkannya pada bursa transfer musim panas 2018. Meski telah mendapat penolakan dari Napoli, tetapi klu berjuluk The Citizens itu tak ingin menyerah.', 'Hal tersebut disampaikan salah satu dewan di klub Man City yakni Alberto Galassi. Ia yakin bahwa pertempuran untuk mendapatkan Jorginho masih akan terus dilanjutkan Man City hingga bursa transfer musim panas 2018 ditutup.<br />\\r\\n<br />\\r\\nSebelumnya tawaran Man City untuk mendatangkan Jorginho dengan harga 50 juta euro atau sekira Rp110 miliar telah mendapat penolakan dari pihak Napoli. Akan tetapi pihaknya, akan terus melakukan negoisasi dengan Napoli hingga menemukan kesepakatan dengan Napoli.<br />\\r\\n<br />\\r\\n“Dia adalah salah satu pemain yang kami sukai, kami tidak pernah menyamarkan itu. Namun (Presiden Napoli, Aurelio) De Laurentiis tahu nilai pemainnya sangat bagus dalam negosiasi,” ungkap Galassi, mengutip dari Goal, Selasa (5/6/2018). <br />\\r\\n<br />\\r\\n“Kami (Man City) adalah klub yang jujur, kami tidak melawan keinginan klub lain atau mencoba mendekati pemain tanpa menyetujui persyaratan pertama dengan klub mereka,” tambahnya.<br />\\r\\n<br />\\r\\n“Satu hal yang pasti, jika ada kesepakatan, itu akan cocok untuk kedua klub. Saya pribadi percaya jika ini dilakukan, itu akan terjadi beberapa jam sebelum batas waktu transfer, yang di tahun Piala Dunia akan selalu tidak biasa,” pungkasnya.', 'news/screenshot.1480.jpg', '2020-06-28 07:22:40.580708', 'man-city-enggan-menyerah-kejar-jorginho', 1, 2, 3, 1),
(7, '5 Mobil Terlaris Jelang Lebaran, Mitsubishi Xpander Nomor 1', 'JAKARTA - Jelang lebaran, Mitsubishi Xpander masih menjadi primadona konsumen automotif Tanah Air. Bahkan model ini berdasarkan data Gabungan Industri Kendaraan Bermotor Indonesia (Gaikindo) mampu mengalahkan mobil sejuta umat Toyota Avanza.', 'Berdasarkan data wholesale atau distribusi pabrik ke diler sepanjang bulan April kemarin mencapai 7.097 unit terpaut sedikit dengan penjualan Avanza di bulan yang sama sebanyak 6.917 unit.<br />\\r\\n<br />\\r\\nMobil sejuta umat milik Toyota ini sedikit terkoreksi dibanding bulan sebelumnya yang membukukan angka penjualan 7.097 unit. Secara keseluruhan sejak Januari hingga April 2018, penjualan wholesale Avanza sendiri mencapai 28.330 unit. Sedangkan Mitsubishi Xpander lebih unggul diatas Avanza pada periode yang sama yakni mencapai 29.069 unit.<br />\\r\\n<br />\\r\\nSelain pertarungan kedua low multi purpose vehicle (MPV) antara Mitsubishi Xpander yang tengah meraj disusul Toyota Avanza urutan kedua. Kelas kendaraan LCGC seperti Calya menjadi mobil yang sangat diminati, di mana penjualan bulan April mencapai 6.292 unit sedangkan periode Januari hingga April sebanyak 21.535 unit. <br />\\r\\n<br />\\r\\nDaihatsu Sigra juga menjadi salah satu kendaraan LCGC yang cukup banyak diburu konsumen, di mana penjualan April membukukan angka paling tinggi 5.250 unit dibanding bulan sebelumnya yang hanya 4.037 unit. Secara total penjualan Januari hingga April yakni 17.419 unit.<br />\\r\\n<br />\\r\\nSedangkan posisi kelima, Toyota Innova menjadi cukup diminati konsumen di mana pada bulan April penjualan MPV medium ini mencapai 4.648 unit. sedangkan total penjualan Januari-April mencapai 19.323 unit.', 'news/screenshot.1482.jpg', '2020-06-28 07:22:50.003161', '5-mobil-terlaris-jelang-lebaran-mitsubishi-xpander-nomor-1', 12, 7, 3, 1),
(8, 'Pilgub Jabar, Pemilih Diminta Cermat Amati Track Record Paslon', 'PURWAKARTA - Pemilihan Gubernur Jawa Barat semakin dekat. Jika dibandingkan dengan Pilkada di daerah lain, Jawa Barat terlihat lebih banyak menyedot perhatian. Selain karena Jawa Barat merupakan daerah terdekat dengan pusat pemberitaan Ibu Kota, Jawa Bara', 'Banyak kalangan menyebutkan bahwa siapa pun yang terpilih menjadi Gubernur Jawa Barat periode 2018-2023 akan mempengaruhi pemilihan presiden dan wakil presiden 2019 mendatang. Tentu anggapan ini sangat beralasan jika dilihat dari banyaknya jumlah penduduk Jawa Barat yang menurut data BPS pada tahun 2017 sebanyak 46.497.174 jiwa atau 18,34% dari total jumlah penduduk Indonesia.<br />\\r\\n<br />\\r\\nLalu sosok Gubernur seperti apa yang warga Jawa Barat harus pilih untuk periode 2018-2023?. Pengamat politik, Adi Prayitno, memiliki kriteria khusus yang dapat dijadikan pedoman bagi para pemilih saat menentukan calon pemimpin yang akan dipilihnya saat hari pemilihan tiba. Kriteria khusus yang disyaratkan adalah komitmennya terhadap pemberantasan korupsi.<br />\\r\\n<br />\\r\\n\"Ya, warga Jawa Barat harus men tracking jejak rekam semua cagub khususnya yang terkait soal korupsi, dia pernah terlibat atau pernah keseret kasus korupsi gak?\", ujarnya saat dihubungi lewat telefon.<br />\\r\\n<br />\\r\\nAdi juga menyinggung soal adanya Cagub yang pernah mendapatkan penghargaan atas program penanganan anti korupsi, tetapi indeks persepsi korupsi di daerah yang dipimpinnya tertinggi di Jawa Barat.<br />\\r\\n<br />\\r\\n\"Coba di-tracking, ada kan salah satu cagub yang citra ke publik bagus, tapi anomali dengan realitanya; kan indeks persepsi korupsi di daerah yang dipimpinnya tertinggi di Jabar?\", imbuhnya.<br />\\r\\n<br />\\r\\nPerihal itu, hasil survei Transparency International Indonesia (TII) menyebutkan Indeks Persepsi Korupsi Kota Bandung berada di level paling rendah. Artinya, Kota Bandung menjadi kota paling korup dari 11 kota yang disurvei TII. Survei dilakukan serentak pada 20 Mei-17 Juni 2015 kepada 1,100 pengusaha dengan menggunakan metode penarikan sampel stratified random sampling. <br />\\r\\n<br />\\r\\nTerkait dengan tersebut, Adi mengingatkan agar publik tidak hanya melihat popularitas calon Gubernur yang akan dipilih, tetapi harus cermat melihat rekam jejak (track record) calon berdasarkan data runtun waktu (time series) dalam beberapa tahun sebelumnya yaitu 2015 hingga 2017.', 'news/screenshot.1483.jpg', '2020-06-28 07:22:56.549898', 'pilgub-jabar-pemilih-diminta-cermat-amati-track-record-paslon', 14, 3, 3, 1),
(9, 'Xiaomi Mi A2 Lite Kantongi Sertifikasi, Ini Spesifikasinya', 'JAKARTA - Ponsel Xiaomi sering muncul pada badan regulasi telekomunikasi China TENAA dan situs web lainnya belakangan ini. Sedikit info terbaru berasal dari badan regulasi telekomunikasi Amerika Serikat FCC, di mana perangkat Xiaomi itu disetujui, dan nom', 'Menariknya, di bawah \"Marketing Name,\" Xiaomi M1805D1SG terdaftar sebagai Mi A2 Lite, yang mengindikasikan kehadiran Mi A2 yang lebih murah.<br />\\r\\n<br />\\r\\nDaftar dalam Otoritas Komunikasi Singapura hanya mengungkap rincian teknis seperti band dan frekuensi untuk koneksi Wi-Fi dan Bluetooth, demikian dilansir dari GSM Arena.<br />\\r\\n<br />\\r\\nWebsite Techradar melaporkan, Xiaomi Mi A2 Lite memiliki spesifikasi antara lain, berjalan dengan sistem operasi Android 8.1 Oreo dengan MIUI 9. Handset kabarnya tampil dengan layar 5,84 inci full HD+ 2.5D dengan resolusi 2.280 x 1.080 dan aspek rasio 19:9.<br />\\r\\n<br />\\r\\nBila seri Mi 8 yang baru-baru ini dirilis menampilkan notch atau poni, maka Mi A2 Lite akan mengusung notch yang serupa.<br />\\r\\n<br />\\r\\nXiaomi Mi A2 Lite didukung dengan prosesor Qualcomm Snapdragon 625 octa core dengan GPU Adreno 506. Handset hadir dengan tiga varian, 2GB RAM + 16GB storage, 3GB RAM + 32 GB storage dan 4GB + 64GB storage. <br />\\r\\n<br />\\r\\nUntuk kamera, ponsel ini dibekali dual kamera di belakang dengan kamera utama 12MP dan kamera sekunder dengan flash LED. Di bagian depan, handset dilengkapi dengan kamera selfie 5MP.<br />\\r\\n<br />\\r\\nXiaomi Mi A2 Lite didukung dengan baterai 4.000 mAh dan konektivitas 4G VoLTE, WiFi, Bluetooth 5, GPS dan jack audio 3.5mm. Handset juga dibekali kemampuan sensor sidik jari di bagian belakang.', 'news/screenshot.1484.jpg', '2020-06-28 07:23:03.828591', 'xiaomi-mi-a2-lite-kantongi-sertifikasi-ini-spesifikasinya', 15, 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_kategoritambahan`
--

CREATE TABLE `news_kategoritambahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` longtext NOT NULL,
  `kategori_utama_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_kategoritambahan`
--

INSERT INTO `news_kategoritambahan` (`id`, `nama`, `keterangan`, `kategori_utama_id`) VALUES
(1, 'Sepakbola', 'Berisi berita tentang dunia sepakbola di seluruh dunia', 2),
(2, 'MotoGP', 'Berita Tentang MotoGP', 2),
(3, 'Pemilu', 'Semua berita tentang Pemilu', 3),
(4, 'F1', 'Berita Seputar Formula 1', 2),
(5, 'Kesehatan', 'Berisi berita tentang kesehatan', 6),
(6, 'Fashion', 'Berisi berita tentang fashion', 6),
(7, 'Makanan', 'Berisi berita tentang makanan', 6),
(8, 'Saham dan Valas', 'Berisi berita tentang saham dan valuta asing', 4),
(9, 'Fiskal dan Moneter', 'Berisi berita tentang fiskal dan moneter', 4),
(10, 'Properti', 'Berisi berita tentang properti', 4),
(11, 'Olahraga Lain', 'Berisi berita tentang olahraga lainnya', 2),
(12, 'Mobil', 'Berisi berita tentang mobil', 7),
(13, 'Motor', 'Berisi berita tentang motor', 7),
(14, 'Pilkada 2018', 'Berisi berita tentang pemilihan kepala daerah', 3),
(15, 'Gadget', 'Berisi berita tentang gadget', 5),
(16, 'Game', 'Berisi berita tentang game', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_kategoriutama`
--

CREATE TABLE `news_kategoriutama` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_kategoriutama`
--

INSERT INTO `news_kategoriutama` (`id`, `nama`, `keterangan`) VALUES
(2, 'Olahraga', 'Kategori yang berhubungan dengan dunia olahraga'),
(3, 'Politik', 'Kategori yang berhubungan dengan dunia Politik'),
(4, 'Keuangan', 'Kategori yang berhubungan dengan dunia keuangan'),
(5, 'Teknologi', 'Kategori yang berhubungan dengan dunia teknologi'),
(6, 'Gaya Hidup', 'Kategori yang berhubungan dengan dunia gaya hidup'),
(7, 'Otomotif', 'Kategori yang berhubungan dengan dunia otomotif');

-- --------------------------------------------------------

--
-- Table structure for table `news_komentar`
--

CREATE TABLE `news_komentar` (
  `id` int(11) NOT NULL,
  `komentar` longtext NOT NULL,
  `tgl_post` datetime(6) NOT NULL,
  `berita_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_komentar`
--

INSERT INTO `news_komentar` (`id`, `komentar`, `tgl_post`, `berita_id`, `user_id`) VALUES
(1, 'Berita nya sangat bermanfaat, mantap', '2020-06-28 07:54:34.695858', 9, 4),
(2, 'keren, terimakasih info nya....', '2020-06-28 07:56:52.567379', 9, 5),
(3, 'kereeeen ...!!!!', '2020-06-28 08:02:12.203771', 7, 6),
(5, 'Hp mantap', '2020-06-28 08:10:28.915700', 9, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `news_berita`
--
ALTER TABLE `news_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_berita_kategori_tambahan_id_b58ea747_fk_news_kate` (`kategori_tambahan_id`),
  ADD KEY `news_berita_kategori_utama_id_8b829608_fk_news_kategoriutama_id` (`kategori_utama_id`),
  ADD KEY `news_berita_slug_1a6f9ef3` (`slug`),
  ADD KEY `news_berita_penulis_id_8e81fe83_fk_auth_user_id` (`penulis_id`);

--
-- Indexes for table `news_kategoritambahan`
--
ALTER TABLE `news_kategoritambahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_kategoritambaha_kategori_utama_id_03602340_fk_news_kate` (`kategori_utama_id`);

--
-- Indexes for table `news_kategoriutama`
--
ALTER TABLE `news_kategoriutama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_komentar`
--
ALTER TABLE `news_komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_komentar_berita_id_3ef4e810_fk_news_berita_id` (`berita_id`),
  ADD KEY `news_komentar_user_id_8a142dd3_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news_berita`
--
ALTER TABLE `news_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news_kategoritambahan`
--
ALTER TABLE `news_kategoritambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news_kategoriutama`
--
ALTER TABLE `news_kategoriutama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news_komentar`
--
ALTER TABLE `news_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `news_berita`
--
ALTER TABLE `news_berita`
  ADD CONSTRAINT `news_berita_kategori_tambahan_id_b58ea747_fk_news_kate` FOREIGN KEY (`kategori_tambahan_id`) REFERENCES `news_kategoritambahan` (`id`),
  ADD CONSTRAINT `news_berita_kategori_utama_id_8b829608_fk_news_kategoriutama_id` FOREIGN KEY (`kategori_utama_id`) REFERENCES `news_kategoriutama` (`id`),
  ADD CONSTRAINT `news_berita_penulis_id_8e81fe83_fk_auth_user_id` FOREIGN KEY (`penulis_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `news_kategoritambahan`
--
ALTER TABLE `news_kategoritambahan`
  ADD CONSTRAINT `news_kategoritambaha_kategori_utama_id_03602340_fk_news_kate` FOREIGN KEY (`kategori_utama_id`) REFERENCES `news_kategoriutama` (`id`);

--
-- Constraints for table `news_komentar`
--
ALTER TABLE `news_komentar`
  ADD CONSTRAINT `news_komentar_berita_id_3ef4e810_fk_news_berita_id` FOREIGN KEY (`berita_id`) REFERENCES `news_berita` (`id`),
  ADD CONSTRAINT `news_komentar_user_id_8a142dd3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
