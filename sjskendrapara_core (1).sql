-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 04:04 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sjskendrapara_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `album_image` varchar(255) DEFAULT NULL,
  `album_link` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL COMMENT '{images,video}',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `albums_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_link` varchar(255) NOT NULL DEFAULT '#',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `page_link`, `status`) VALUES
(14, 'About Us', '#', 1),
(15, ' Academics', 'academics', 1),
(16, ' Activity', 'Activity', 1),
(17, ' People', '#', 1),
(18, ' Rules', '#', 1),
(19, ' Gallery', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `page_content` text NOT NULL,
  `page_link` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_slug`, `main_image`, `page_content`, `page_link`, `status`) VALUES
(5, 'Activity', 'Activity', 'file upload  jpg,png,jpeg,gif', '<h2>Activity</h2>\r\n', 'Activity', 1),
(6, 'about', 'about', 'file upload  jpg,png,jpeg,gif', '<h3>MESSAGE FROM PRINCIPAL</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The motto of the school resonates with my calling to serve not to be served. I believe that God has called me not to be gloriously Successful but to be much more Faithful.</p>\r\n\r\n<p>St. Joseph&rsquo;s School was established in 1996 at the request of the people of Kendrapara. It is a minority educational institution established by the Archdiocese of Cuttack-Bhubaneswar and administered by the Cuttack Roman Catholic Diocesan Corporation as per provisions of the constitution of India, Article 30, Clause(i)</p>\r\n\r\n<p>St. Joseph&rsquo;s School, Kendrapara, is affiliated to the council for the Indian Certificate of the Secondary Education Examinations (ICSE) and the Indian School Certificate Examinations (ISC), New Delhi, and recognized by the Government of Odisha. From Nursery onwards, boys and girls are prepared for the class X by the council.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<h3><strong>St. Joseph&rsquo;s School aims at being a School with</strong></h3>\r\n\r\n<p>&nbsp;&nbsp; A passion for academic excellence<br />\r\n&nbsp;&nbsp; Integrity<br />\r\n&nbsp;&nbsp; Uncompromising human and ethical values<br />\r\n&nbsp;&nbsp;A sensitive social conscience<br />\r\n&nbsp;&nbsp;An abiding commitment to improving the quality of life in the Society especially of the marginalized, the underprivileged and the weaker sections of the society</p>\r\n\r\n<h3><strong>(A) To inculcate in our students the Values of</strong></h3>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;Love and concern for others<br />\r\n&nbsp;&nbsp;Friendliness and co-operation<br />\r\n&nbsp;&nbsp;Truthfulness<br />\r\n&nbsp;&nbsp;Respect for all as children of God<br />\r\n&nbsp;&nbsp;Discipline and self-control<br />\r\n&nbsp;&nbsp;Responsible citizenship<br />\r\n&nbsp;&nbsp;Care and concern for the environment</p>\r\n\r\n<h3><strong>(B) To promote in our students</strong></h3>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;Academic excellence<br />\r\n&nbsp;&nbsp;Leadership skills<br />\r\n&nbsp;&nbsp;All-round development<br />\r\n&nbsp;&nbsp;Service orientation<br />\r\n&nbsp;&nbsp;With this Vision and Mission, we the Principal, Staff and Students set our Goal to achieve our dream. &ldquo;We do not see the dream while sleeping, but we see the dream that does not allow us to sleep&rdquo;. Yes, we believe in few habits that make us successful<br />\r\n(1) We are Proactive not Reactive.<br />\r\n(2) We begin with end in mind.<br />\r\n(3) We put first things in first place.<br />\r\n(4) We think We Win.<br />\r\nTherefore, we imitate the words &amp; deeds of our Freedom Fighters, Great Leaders, Saints &amp; Prophets. We take risks in our life journey (Study, Teaching &amp; Co-curricular Activities). If we win, we can lead others, if we lose, we can guide others. (Swami Vivekananda) Yes, friends let this little message encourage us to TRUST ONESELF which will reach us to our GOAL.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>GOOD GOD BLESS YOU!<br />\r\n<br />\r\nFR. NABAKISHOR<br />\r\nPRINCIPAL ST. JOSEPH&rsquo;S SCHOOL<br />\r\nTINIMUHANI, KENDRAPARA<br />\r\nPIN: 754211 (ODISHA)</strong></p>\r\n', 'about', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_link` varchar(255) NOT NULL DEFAULT '#',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `menu_id`, `title`, `page_link`, `status`) VALUES
(4, 14, 'about', 'about', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `name`, `email`, `password`, `role`, `status`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', '$2a$10$jEseQB.qzkbImuPj1r7VbepQaWfi90sWW3GSH5aTtiK1Ut6LDFsK.', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_id` (`albums_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`albums_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD CONSTRAINT `sub_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
