-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 05:33 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localtheater`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '2018-10-24 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`,`Is_Active`,`shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251',1, 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4',1, '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b',0, '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', '');

-- --------------------------------------------------------



--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Bollywood', 'Bollywood News', '2018-06-06 10:28:09', '2018-06-30 18:41:07', 1),
(3, 'Sports', 'Related to sports news', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 18:01:03', '2018-06-30 19:19:51'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2018-06-30 18:01:36', '2018-06-30 19:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2018-06-30 18:49:23', '2018-08-28 15:57:32', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg'),
(10, 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2018-06-30 19:08:56', '2018-08-28 15:59:59', 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', '505e59c459d38ce4e740e3c9f5c6caf7.jpg'),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2018-06-30 19:10:36', '2018-08-28 16:01:35', 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg'),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2018-06-30 19:11:44', '2018-08-28 16:01:43', 1, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;