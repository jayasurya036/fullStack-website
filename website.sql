-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2018 at 08:54 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `cachepost`
--

CREATE TABLE `cachepost` (
  `postID` int(11) NOT NULL,
  `postHeading` varchar(30) NOT NULL,
  `postData` varchar(200) NOT NULL,
  `postImg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cachepost`
--

INSERT INTO `cachepost` (`postID`, `postHeading`, `postData`, `postImg`) VALUES
(1, 'THIS IS MY FIRST POST', 'hsi hsi hsi', 'b23cc35a27.jpg'),
(2, 'THIS IS MY FIRST POST', ';ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsddlfld;ljlj', 'edd6544355.jpg'),
(3, 'THIS IS MY FIRST POST', ';ljljdfljldjflsdlj', '18d7362ade.jpg'),
(4, 'hey my new photo', 'jdslfjdljfljhai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasury', '09aff79448.jpg'),
(5, 'heading', 'dsljdlsfjcon\r\n\r\ncontent\r\ndsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n\r\ncontentdsljdlsfjcon\r\n', '215ea8f05e.jpg'),
(6, 'hai my name is vamsi', 'iinfosis i got a new job in infosis i got a new job in infosis ', '188b776945.JPG'),
(7, 'speakets', 'this ore our colenty sd;lfjdsljfsd;lkjf\r\nthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthi', 'ce8be9d22e.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `mainpost`
--

CREATE TABLE `mainpost` (
  `postID` int(11) NOT NULL,
  `postHeading` varchar(30) NOT NULL,
  `postData` varchar(500) NOT NULL,
  `postImg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainpost`
--

INSERT INTO `mainpost` (`postID`, `postHeading`, `postData`, `postImg`) VALUES
(1, 'THIS IS MY FIRST POST', 'hsi hsi hsi sljfd lsjfo sfod sdfjods fjodsfjlfodf hsi sljfd lsjfo sfod sdfjods fjodsfjlfodf hsi sljfd lsjfo sfod sdfjods fjodsfjlfodf hsi sljfd lsjfo sfod sdfjods fjodsfjlfodf hsi sljfd lsjfo sfod sdf', 'b23cc35a27.jpg'),
(2, 'THIS IS MY FIRST POST', ';ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;', 'edd6544355.jpg'),
(3, 'THIS IS MY FIRST POST', ';ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;fjdlfld;ljljdfljldjflsdjlfjds;fjsdfdsl;', '18d7362ade.jpg'),
(4, 'hey my new photo', 'jdslfjdljfljhai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasuryahai this is jayasurya', '09aff79448.jpg'),
(5, 'heading', 'dsljdlsfjcon\n\ncontent\ndsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontentdsljdlsfjcon\n\ncontent', '215ea8f05e.jpg'),
(6, 'hai my name is vamsi', 'iinfosis i got a new job in infosis i got a new job in infosis ', '188b776945.JPG'),
(7, 'speakets', 'this ore our colenty sd;lfjdsljfsd;lkjf\r\nthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsljfsd;lkjfthis ore our colenty sd;lfjdsl', 'ce8be9d22e.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `reaction`
--

CREATE TABLE `reaction` (
  `postID` int(11) NOT NULL,
  `postLikes` int(255) NOT NULL,
  `postDIslikes` int(255) NOT NULL,
  `postFavorites` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reaction`
--

INSERT INTO `reaction` (`postID`, `postLikes`, `postDIslikes`, `postFavorites`) VALUES
(1, 1, 1, 1),
(2, 0, 0, 1),
(3, 3, 0, 2),
(4, 0, 0, 1),
(5, 0, 0, 0),
(6, 0, 0, 1),
(7, 2, 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cachepost`
--
ALTER TABLE `cachepost`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `mainpost`
--
ALTER TABLE `mainpost`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `reaction`
--
ALTER TABLE `reaction`
  ADD PRIMARY KEY (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cachepost`
--
ALTER TABLE `cachepost`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mainpost`
--
ALTER TABLE `mainpost`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `reaction`
--
ALTER TABLE `reaction`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reaction`
--
ALTER TABLE `reaction`
  ADD CONSTRAINT `reaction_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `mainpost` (`postID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
