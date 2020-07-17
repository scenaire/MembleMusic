-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 07:46 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memble`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(50) NOT NULL,
  `album_pic` text NOT NULL,
  `album_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `album_pic`, `album_year`) VALUES
(1, 'Kill This Love', 'https://www.educatepark.com/wp-content/uploads/2019/04/https___images.genius.com_d736a5ecaaef61672bb09fcbd37193ff.500x500x1.jpg', 2019),
(2, 'Thank U, Next', 'https://vignette.wikia.nocookie.net/arianagrande/images/c/c0/Thank_U%2C_Next_Artwork.jpg/revision/latest?cb=20181104031644', 2019),
(3, 'HAPPIER', 'https://i.redd.it/ampjk9dyz6g11.jpg', 2018),
(4, 'Guilty Crown THEME SONGS COLLECTION', 'https://lastfm-img2.akamaized.net/i/u/ar0/bc1b785a86f3420c9532eef44c9b1c66', 2012),
(6, 'American Teen', 'https://is4-ssl.mzstatic.com/image/thumb/Music122/v4/22/b1/df/22b1dfb2-1637-f3fd-79ce-9464340f7b95/886446326146.jpg/600x600bf.png', 2017),
(7, 'Love me / Love me not', 'http://diymag.com/media/img/Artists/H/Honne/honne-lp.jpg', 2018),
(8, 'Old Town Road', 'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/49/26/86/4926869b-03ee-8c8a-4326-b002b5d6efc2/886447622827.jpg/600x600bf.png', 2018),
(9, 'ME!', 'https://i.scdn.co/image/1f2784adc8a50ba0064ca4fdfdb08b289235ab21', 2019),
(10, 'Wow.', 'http://exclaim.ca/images/postwow.jpg', 2018),
(11, 'Sucker', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/52968599-2344881839074552-8018203135245009854-n-1551384807.jpg?crop=1xw:1xh;center,top&resize=480:*', 2019),
(12, 'Spider-Man: Into the Spider-Verse (soundtrack)', 'https://i1.sndcdn.com/artworks-pHkdnBeOOQbI-0-t500x500.jpg', 2018),
(13, 'Without Me', 'http://www.billboard-japan.com/common/sys/img/news/00000071/71318/image.jpg', 2018),
(14, 'Dancing with a Stranger', 'https://m.media-amazon.com/images/I/61z6U6zMg+L._SS500_.jpg', 2019),
(15, 'ธารารัตน์', 'https://i.scdn.co/image/d4b041359b6ab742e842c02067ea71231fd8b3d6', 2019),
(16, 'ถามหน่อย', 'https://i.scdn.co/image/b304415dd6e9bf9aeb76ce8c0fb4177c964de055', 2019),
(17, 'I Don\'t Care', 'https://i.scdn.co/image/e6a08e84fa0838f58b340e0d0e7e27213459d661', 2019),
(18, 'MAP OF THE SOUL: PERSONA', 'https://i.scdn.co/image/7a5055664f8306a2c87b918b14ba4c5c62301605', 2019),
(19, 'If I Can\'t Have You', 'https://i.scdn.co/image/fe04c83b9a329527399f50827c098983ace070ad', 2019),
(20, 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO', 'https://i.scdn.co/image/16160e9999e3395dfdef718d2e7cc8432d728920', 2019),
(21, 'SOS', 'https://i.scdn.co/image/2cc4d3aa28ebae67ed93040315342ca43aa7080d', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`) VALUES
(90, 'Aloe Blacc'),
(55, 'Aminé'),
(40, 'Anna of the North'),
(20, 'Anthony Improgo'),
(52, 'Anuel AA'),
(4, 'Ariana Grande'),
(89, 'Aviici'),
(53, 'Bantu'),
(7, 'Bastille'),
(65, 'Beau Young Prince'),
(42, 'BEKA'),
(11, 'Billie Eilish'),
(88, 'Billy Ray Cyrus'),
(49, 'Black Caviar'),
(1, 'BLACKPINK'),
(48, 'Blackway'),
(45, 'Brendon Urie'),
(86, 'BTS'),
(16, 'Charlotte Lawrence'),
(62, 'Coi Leray'),
(21, 'Colouring'),
(70, 'Denzel Curry'),
(69, 'DJ Khalil'),
(56, 'DUCKWRTH'),
(25, 'Echo And The Bunnymen'),
(84, 'Ed Sheeran'),
(8, 'EGOIST'),
(30, 'Emre Turkmen'),
(3, 'G-Dragon'),
(41, 'Georgia'),
(36, 'Gus Dapperton'),
(23, 'Haerts'),
(75, 'Halsey'),
(9, 'Hiroyuki Sawano'),
(2, 'HONNE'),
(26, 'Human Touch'),
(61, 'Jacquees'),
(51, 'Jaden Smith'),
(47, 'Jonas Brothers'),
(58, 'Juice WRLD'),
(85, 'Justin Bieber'),
(83, 'Kanom'),
(12, 'Khalid'),
(28, 'Kid Harpoon'),
(22, 'Leon Else'),
(43, 'Lil Nas X'),
(66, 'Lil Wayne'),
(14, 'Logic'),
(17, 'Lord Huron'),
(64, 'LouGotCash'),
(6, 'Marshmello'),
(31, 'Michael Goldsworthy'),
(24, 'New Order'),
(54, 'Nicki Minaj'),
(82, 'Nonny9'),
(77, 'Normani'),
(29, 'Olly Alexander'),
(13, 'OneRepublic'),
(33, 'Orchestral Manoeuvres in the D'),
(19, 'Parade of Lights'),
(18, 'Phoebe Bridgers'),
(81, 'Ponchet'),
(46, 'Post Malone'),
(76, 'Sam Smith'),
(63, 'Seezyn'),
(10, 'Selena Gomez'),
(57, 'Shaboozey'),
(87, 'Shawn Mendes'),
(35, 'Siouxsie and The Banshees'),
(60, 'Ski Mask the Slump God'),
(50, 'Swae Lee'),
(72, 'Swavay'),
(44, 'Taylor Swift'),
(34, 'Tears for Fears'),
(37, 'Telekinesis'),
(38, 'The Alarm'),
(5, 'The TOYS'),
(59, 'Thutmose'),
(73, 'Trevor Rich'),
(67, 'Ty Dolla $ign'),
(79, 'VARINZ'),
(74, 'Vince Staples'),
(68, 'XXXTENTACION'),
(71, 'YBN Cordae'),
(27, 'Years & Years'),
(78, 'YOUNGOHM'),
(15, 'YUNGBLUD'),
(80, 'Z TRIP');

-- --------------------------------------------------------

--
-- Table structure for table `billboard_chart`
--

CREATE TABLE `billboard_chart` (
  `billboard_no` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billboard_chart`
--

INSERT INTO `billboard_chart` (`billboard_no`, `song_id`) VALUES
(6, 6),
(1, 44),
(2, 45),
(3, 46),
(4, 47),
(5, 49),
(7, 67),
(8, 68);

-- --------------------------------------------------------

--
-- Table structure for table `global_chart`
--

CREATE TABLE `global_chart` (
  `globle_no` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_chart`
--

INSERT INTO `global_chart` (`globle_no`, `song_id`) VALUES
(7, 44),
(6, 45),
(8, 49),
(1, 71),
(4, 79),
(2, 80),
(3, 81),
(5, 82);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `premium` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`username`, `password`, `email`, `premium`) VALUES
('alise', 'ttandt', 'alise@google.co.th', NULL),
('bluebird', 'ttandt', 'bluebird@hotmail.com', 3),
('iamporploy', 'porploy', '', 2),
('littletea', 'ttandt', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL,
  `playlist_name` int(11) NOT NULL,
  `playlist_creator` varchar(20) NOT NULL,
  `playlist_song` int(11) NOT NULL,
  `playlist_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_song`
--

CREATE TABLE `playlist_song` (
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `song_album` int(11) NOT NULL,
  `song_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `song_album`, `song_url`) VALUES
(1, 'Kill This Love', 1, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212299&authkey=AJGzUZ16NhDq7fM'),
(2, 'Don\'t Know What To Do', 1, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212297&authkey=APJY3gTOVVqUiB0'),
(3, 'DUU-DU DUU-DU (Remix Version)', 1, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212296&authkey=APnvOsnm9u9gHoc'),
(4, 'Hope Not', 1, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212295&authkey=AN-T8CQq-b2o_p8'),
(5, 'Kick It', 1, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212298&authkey=AAuIgzu6p_5Ls-E'),
(6, '7 Rings', 2, 'https://onedrive.live.com/download?cid=4CC6E18B5BF15347&resid=4CC6E18B5BF15347%21119&authkey=AHCHiZj66NIBTk4'),
(7, 'Imagine', 2, 'https://onedrive.live.com/download?cid=4CC6E18B5BF15347&resid=4CC6E18B5BF15347%21124&authkey=AGRrh-o2tmLQPsE'),
(8, 'Ghostin', 2, 'https://onedrive.live.com/download?cid=4CC6E18B5BF15347&resid=4CC6E18B5BF15347%21121&authkey=AI7bH2rPWJF6XJw'),
(9, 'Make Up', 2, 'https://onedrive.live.com/download?cid=4CC6E18B5BF15347&resid=4CC6E18B5BF15347%21120&authkey=APF4gGmXcSu-9kI'),
(10, 'Thank U, Next', 2, 'https://onedrive.live.com/download?cid=4CC6E18B5BF15347&resid=4CC6E18B5BF15347%21122&authkey=AFoww7gShGLQyCk'),
(11, 'Happier', 3, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212288&authkey=AIqHCP4hhK35kdc'),
(12, 'Euterpe ~Silence~', 4, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212357&authkey=AL7EDTAJ6SvZYXE'),
(13, 'Departures ~Blessing~', 4, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212358&authkey=AEqnXYwTYGwglcw'),
(14, 'Bios <MK+nZk­ Version>', 4, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212360&authkey=AMGDe6S_RpQHARE'),
(15, 'Real <C+nZk­ Version>', 4, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212361&authkey=AHeBCYZn9E5rADE'),
(16, 'American Teen', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212365&authkey=ANhm5aBQL42Gwic'),
(17, 'Young, Dumb & Broke', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212363&authkey=ADhOlU53r3YRPYg'),
(18, 'Location', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212364&authkey=ANXZc75_r-PknsY'),
(19, 'Another Sad Love Song', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212368&authkey=ANxidADA0BPxRBs'),
(20, 'Saved', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212366&authkey=AMvJ_ZyR-KxPM3s'),
(21, 'Coaster', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212367&authkey=ALQpD8VgcktGJpc'),
(22, '8TEEN', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212370&authkey=AOH5_qucvKsKUpE'),
(23, 'Let’s Go', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212371&authkey=AN1igkb-rp3Mu-k'),
(24, 'Hopeless', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212369&authkey=AF1HQEJtXCWDNso'),
(25, 'Cold Blooded', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212372&authkey=AL5oBX7GYG2_gV0'),
(26, 'Winter', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212373&authkey=AG6UFuBQloYC5uc'),
(27, 'Therapy', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212374&authkey=ADK4l0GOkiVDfRE'),
(28, 'Keep Me', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212378&authkey=ABuVDSdTQUcWM2c'),
(29, 'Shot Down', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212376&authkey=AKvkvvOrs0qhWD4'),
(30, 'Angels', 6, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212375&authkey=AEiooG8RGrDPKLA'),
(31, 'I Might ◑', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212382&authkey=AJ92qBYkWP5A5q0'),
(32, 'Me & You ◑', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212380&authkey=AIR5xQGXVJzZOr0'),
(33, 'Day 1 ◑', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212383&authkey=AFPm_gsc9RrsyuQ'),
(34, 'I Got You ◑', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212384&authkey=ADXMHUMLW_UDkok'),
(35, 'Feels So Good ◑', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212385&authkey=AHIPdmbw6DYDisg'),
(36, '306 ◑', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212386&authkey=AMLhUPM1TqX0NWY'),
(37, 'Location Unknown ◐', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212387&authkey=AJsy8_rlTtCV1gA'),
(39, 'Crying Over You ◐', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212388&authkey=AKATi3pNGN77U_g'),
(40, 'Shrink ◐', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212389&authkey=AHcPDOR9I-anOiM'),
(41, 'I Just Wanna Go Back ◐', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212390&authkey=AN871-6iajUYPnc'),
(42, 'Sometimes ◐', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212391&authkey=AJnarZhh5POZq6s'),
(43, 'Forget Me Not ◐', 7, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212393&authkey=AEOqRWIeVAVu_bI'),
(44, 'Old Town Road', 8, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212414&authkey=AAwY0PbSgASOlHY'),
(45, 'ME!', 9, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212415&authkey=AKj4oUum6LmZQxM'),
(46, 'Wow.', 10, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212416&authkey=AD9h3BN509V0Mj4'),
(47, 'Sucker', 11, 'https://onedrive.live.com/embed?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212417&authkey=ADyt5EYx1CLXRBM'),
(48, 'What\'s Up Danger', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212421&authkey=AC9X6JhK0MIrHBs'),
(49, 'Sunflower', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212420&authkey=ANU-9N8ozYnZxe8'),
(50, 'Way Up', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212419&authkey=APhfz7j_Dd2wZ5g'),
(52, 'Familia', 12, 'https://onedrive.live.com/embed?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212422&authkey=ALptFOZFOV8SvbM'),
(53, 'Invincible', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212423&authkey=ABHpJOLdQp89h7E'),
(54, 'Start a Riot', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212424&authkey=AKlrHAtd94vOuAg'),
(55, 'Hide', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212425&authkey=AL0fMXQ-LPN_Yt4'),
(56, 'Memories', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212427&authkey=AIzPMwMwK31mR_8'),
(62, 'Save The Day', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212426&authkey=ALyMEfg8j3yiDYk'),
(63, 'Let Go', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212428&authkey=AP-FALg4vXuL7_w'),
(64, 'Scared of the Dark', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212429&authkey=AIV96__g5JBDJR0'),
(65, 'Elevate', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212430&authkey=ACNvp7yXupQsmM0'),
(66, 'Home', 12, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212431&authkey=AHtrKCN5u-fc4hc'),
(67, 'Without Me', 13, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212436&authkey=APTR5Zo4PSX3xtQ'),
(68, 'Dancing With a Stranger', 14, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212435&authkey=AGbWdROJ5gBvSZY'),
(69, 'ธารารัตน์', 15, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212437&authkey=AECEkUukgd0HI2k'),
(70, 'ถามหน่อย', 16, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212438&authkey=AKh8y4Dx9iL-NEU'),
(71, 'I Don\'t Care', 17, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212439&authkey=AJSE5eFcC_2N3p0'),
(72, 'Intro : Persona', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212441&authkey=AED7VN0dgTNq9J0'),
(73, 'Boy With Luv', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212443&authkey=ALzvK2Dc3zkKaB0'),
(74, 'Mikrokosmos', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212442&authkey=ALtwG52ghlcKFgQ'),
(75, 'Make It Right', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212444&authkey=ADRxD1bfhz-XekM'),
(76, 'HOME', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212445&authkey=AF5Vq9rLUbXyan0'),
(77, 'Jamais Vu', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212446&authkey=AFSiKM9G98ip0W4'),
(78, 'Dionysus', 18, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212449&authkey=AFRPCkhaGOJCw3w'),
(79, 'If I Can\'t Have You', 19, 'http://tonyextra.com/wp-content/uploads/2019/05/Shawn-Mendes-If-I-Can-t-Have-You.mp3'),
(80, 'bad guy', 20, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212450&authkey=AM7my817Qz_m8uU'),
(81, 'Old Town Road - Remix', 8, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212451&authkey=AJDAKrTa1ZuICso'),
(82, 'SOS', 21, 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212452&authkey=AO7_98hI79qXKtg');

-- --------------------------------------------------------

--
-- Table structure for table `song_artist`
--

CREATE TABLE `song_artist` (
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `song_artist`
--

INSERT INTO `song_artist` (`song_id`, `artist_id`) VALUES
(1, 1),
(2, 1),
(6, 4),
(3, 1),
(8, 4),
(11, 6),
(11, 7),
(4, 1),
(7, 4),
(5, 1),
(9, 4),
(10, 4),
(12, 8),
(13, 8),
(14, 9),
(15, 9),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(30, 12),
(20, 12),
(21, 12),
(22, 12),
(23, 12),
(24, 12),
(25, 12),
(26, 12),
(27, 12),
(28, 12),
(29, 12),
(35, 2),
(35, 40),
(37, 2),
(37, 41),
(39, 2),
(39, 42),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 43),
(45, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(48, 49),
(49, 46),
(49, 50),
(50, 51),
(52, 52),
(52, 54),
(52, 53),
(53, 55),
(54, 56),
(54, 57),
(55, 58),
(55, 63),
(56, 59),
(62, 60),
(62, 61),
(62, 62),
(62, 64),
(63, 65),
(64, 66),
(64, 67),
(64, 68),
(65, 69),
(65, 70),
(65, 71),
(65, 72),
(66, 74),
(67, 75),
(68, 76),
(68, 77),
(69, 78),
(70, 79),
(70, 80),
(70, 81),
(70, 82),
(70, 83),
(71, 84),
(71, 85),
(72, 86),
(73, 86),
(73, 75),
(74, 86),
(75, 86),
(76, 86),
(77, 86),
(78, 86),
(79, 87),
(80, 11),
(81, 43),
(81, 88),
(82, 89),
(82, 90);

-- --------------------------------------------------------

--
-- Table structure for table `thai_chart`
--

CREATE TABLE `thai_chart` (
  `thaichart_no` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thai_chart`
--

INSERT INTO `thai_chart` (`thaichart_no`, `song_id`) VALUES
(1, 1),
(6, 2),
(5, 45),
(8, 69),
(7, 70),
(2, 71),
(3, 73),
(4, 79);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`),
  ADD UNIQUE KEY `artist_name` (`artist_name`);

--
-- Indexes for table `billboard_chart`
--
ALTER TABLE `billboard_chart`
  ADD PRIMARY KEY (`billboard_no`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `global_chart`
--
ALTER TABLE `global_chart`
  ADD PRIMARY KEY (`globle_no`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `playlist_creator` (`playlist_creator`),
  ADD KEY `playlist_song` (`playlist_song`);

--
-- Indexes for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `song_album` (`song_album`);

--
-- Indexes for table `song_artist`
--
ALTER TABLE `song_artist`
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `thai_chart`
--
ALTER TABLE `thai_chart`
  ADD PRIMARY KEY (`thaichart_no`),
  ADD KEY `song_id` (`song_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billboard_chart`
--
ALTER TABLE `billboard_chart`
  ADD CONSTRAINT `billboard_chart_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Constraints for table `global_chart`
--
ALTER TABLE `global_chart`
  ADD CONSTRAINT `global_chart_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`playlist_creator`) REFERENCES `member` (`username`);

--
-- Constraints for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD CONSTRAINT `playlist_song_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`),
  ADD CONSTRAINT `playlist_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`song_album`) REFERENCES `album` (`album_id`);

--
-- Constraints for table `song_artist`
--
ALTER TABLE `song_artist`
  ADD CONSTRAINT `song_artist_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  ADD CONSTRAINT `song_artist_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Constraints for table `thai_chart`
--
ALTER TABLE `thai_chart`
  ADD CONSTRAINT `thai_chart_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
