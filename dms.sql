-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 07:53 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `fbform`
--

CREATE TABLE `fbform` (
  `id` int(11) NOT NULL,
  `fbData` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fbform`
--

INSERT INTO `fbform` (`id`, `fbData`, `creationDate`) VALUES
(12, 'Hii I am Kavil', '2019-10-05 17:39:24'),
(13, 'The foundation of the pedestal on which Chemcare Industries firmly stands today is made up of over three long decade old legacy of experience and expertise and the old-fashioned values of commitment and integrity in service.', '2019-10-05 17:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `help_request`
--

CREATE TABLE `help_request` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `volId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `volunteerStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help_request`
--

INSERT INTO `help_request` (`id`, `specilization`, `location`, `volId`, `userId`, `postingDate`, `userStatus`, `volunteerStatus`) VALUES
(1, 'Doctor', 'Ahmedabad', 8, 1, '2019-10-05 10:24:05', 0, 1),
(2, 'Fire Fighter', 'Ahmedad', 8, 2, '2019-10-05 10:45:08', 1, 1),
(3, 'Fire Fighter', 'Surat', 8, 2, '2019-10-05 10:57:34', 1, 1),
(4, 'Doctor', 'Kankaria,Ahmedabad', 9, 2, '2019-10-05 11:11:51', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resourcecategory`
--

CREATE TABLE `resourcecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourcecategory`
--

INSERT INTO `resourcecategory` (`id`, `category`, `creationDate`, `updationDate`) VALUES
(0, 'Wheats', '2019-10-05 15:56:09', '05-10-2019 10:17:47 PM'),
(0, 'Wheats', '2019-10-05 15:56:27', '05-10-2019 10:17:47 PM'),
(0, 'Wheats', '2019-10-05 16:10:37', '05-10-2019 10:17:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `resourceName` varchar(255) NOT NULL,
  `units` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `allocStatus` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `category`, `resourceName`, `units`, `location`, `allocStatus`, `creationDate`, `updationDate`) VALUES
(12, 'Water', 'Bikaneri wheat', 16, 'Ahmedabad', 0, '2019-10-05 16:11:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-10-05 07:26:29', '', 0),
(16, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 07:27:11', '', 1),
(17, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 07:54:36', '05-10-2019 01:39:51 PM', 1),
(18, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:47:47', '05-10-2019 04:31:53 PM', 1),
(19, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 11:11:19', '05-10-2019 04:42:13 PM', 1),
(20, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 12:46:17', '', 1),
(21, 0, 'admin', 0x3132372e302e302e3100000000000000, '2019-10-05 14:23:03', '', 0),
(22, 0, 'admin', 0x3132372e302e302e3100000000000000, '2019-10-05 14:23:13', '', 0),
(23, 2, 'test@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:23:23', '05-10-2019 07:53:40 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Anuj kumar', 'Test address', 'Aligarh', 'Males', 'info@w3gang.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-26 07:03:09', '30-12-2016 11:27:47 AM'),
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', ''),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', ''),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', ''),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '07-01-2017 01:32:12 PM');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `volunteerName` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `volEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `specilization`, `volunteerName`, `contactno`, `volEmail`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'Fire Fighter', 'Hardik', 9898780780, 'kavktshah@gmail.com', '22dda5d8bd3c9f3957d9f30587b5f86c', '2019-10-05 05:40:35', ''),
(9, 'Doctor', 'Dhruvik', 9898788077, 'kavilparikh@gmail.com', 'c150a9c7a9f9e1dafc3ed22c0dc65595', '2019-10-05 09:22:51', ''),
(10, 'Fire Fighter', '', 0, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-05 09:31:38', ''),
(11, 'Scuba Rescue Diver', 'Dhaval Jotaneeya', 787878787877, 'yeti@crm', '9fd4b1c58bfbd10a6498754b7e1836c6', '2019-10-05 11:05:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `volunteerslog`
--

CREATE TABLE `volunteerslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteerslog`
--

INSERT INTO `volunteerslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 10, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:36:52', '', 1),
(2, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-10-05 11:12:35', '', 0),
(3, 8, 'kavktshah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 11:13:00', '', 1),
(4, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-10-05 11:40:46', '', 0),
(5, 8, 'kavktshah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 11:41:04', '', 1),
(6, 0, 'test@demo.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:01:32', '', 0),
(7, 0, 'kavilparikh@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:03:42', '', 0),
(8, 0, 'kavktshah@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:03:48', '', 0),
(9, 8, 'kavktshah@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:03:56', '', 1),
(10, 0, 'kavktshah@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:24:57', '', 0),
(11, 8, 'kavktshah@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-05 14:25:05', '', 1),
(12, 8, 'kavktshah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 17:11:06', '', 1),
(13, 8, 'kavktshah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 17:32:05', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `volunteerspecilization`
--

CREATE TABLE `volunteerspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteerspecilization`
--

INSERT INTO `volunteerspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(0, 'Fire Fighter', '2019-10-05 05:38:02', ''),
(0, 'Doctor', '2019-10-05 05:39:52', ''),
(0, 'Scuba Rescue Diver', '2019-10-05 11:04:57', ''),
(0, 'demo', '2019-10-05 12:58:43', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbform`
--
ALTER TABLE `fbform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_request`
--
ALTER TABLE `help_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteerslog`
--
ALTER TABLE `volunteerslog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fbform`
--
ALTER TABLE `fbform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `help_request`
--
ALTER TABLE `help_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `volunteerslog`
--
ALTER TABLE `volunteerslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE TABLE `uNews` (
  `id` int(11) NOT NULL,
  `nwsData` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `uNews`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `uNews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
CREATE TABLE `volunteerspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `volunteerspecilization`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `volunteerspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


  CREATE TABLE `resourcecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `resourcecategory`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `resourcecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;