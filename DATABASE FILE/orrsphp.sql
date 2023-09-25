-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 04:23 PM
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orrsphp`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_train` ()   select * from orrs_train$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orrs_admin`
--

CREATE TABLE `orrs_admin` (
  `admin_id` int(20) NOT NULL,
  `admin_fname` varchar(200) NOT NULL,
  `admin_lname` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_uname` varchar(200) NOT NULL,
  `admin_pwd` varchar(200) NOT NULL,
  `admin_dpic` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_admin`
--

INSERT INTO `orrs_admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_uname`, `admin_pwd`, `admin_dpic`) VALUES
(1, 'System ', 'Admin', 'admin@mail.com', 'Administrator', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_employee`
--

CREATE TABLE `orrs_employee` (
  `emp_id` int(20) NOT NULL,
  `emp_fname` varchar(200) NOT NULL,
  `emp_lname` varchar(200) NOT NULL,
  `emp_nat_idno` varchar(200) NOT NULL,
  `emp_phone` varchar(200) NOT NULL,
  `emp_addr` varchar(200) NOT NULL,
  `emp_uname` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_pwd` varchar(200) NOT NULL,
  `emp_dpic` varchar(200) NOT NULL,
  `emp_dept` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_employee`
--

INSERT INTO `orrs_employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_nat_idno`, `emp_phone`, `emp_addr`, `emp_uname`, `emp_email`, `emp_pwd`, `emp_dpic`, `emp_dept`) VALUES
(1, 'Ramesh', 'K', 'IND1', '9945912511', 'Belgam', 'RameshK', 'ramesh@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Booking');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passenger`
--

CREATE TABLE `orrs_passenger` (
  `pass_id` int(20) NOT NULL,
  `pass_fname` varchar(200) NOT NULL,
  `pass_lname` varchar(200) NOT NULL,
  `pass_phone` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_pwd` varchar(200) NOT NULL,
  `pass_dpic` varchar(200) NOT NULL,
  `pass_uname` varchar(200) NOT NULL,
  `pass_bday` varchar(200) NOT NULL,
  `pass_bio` longtext NOT NULL,
  `pass_train_number` varchar(200) NOT NULL,
  `pass_train_name` varchar(200) NOT NULL,
  `pass_dep_station` varchar(200) NOT NULL,
  `pass_dep_time` varchar(200) NOT NULL,
  `pass_arr_station` varchar(200) NOT NULL,
  `pass_train_fare` varchar(200) NOT NULL,
  `pass_fare_payment_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_passenger`
--

INSERT INTO `orrs_passenger` (`pass_id`, `pass_fname`, `pass_lname`, `pass_phone`, `pass_addr`, `pass_email`, `pass_pwd`, `pass_dpic`, `pass_uname`, `pass_bday`, `pass_bio`, `pass_train_number`, `pass_train_name`, `pass_dep_station`, `pass_dep_time`, `pass_arr_station`, `pass_train_fare`, `pass_fare_payment_code`) VALUES
(1, 'Jack', 'M', '9945912522', 'Mangalore', 'jack@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Jack', '', '', 'T5', 'Deccan Express', 'Mumbai', '8:30 AM', 'Hyderabad', '650', '12345678'),
(2, 'Jill', 'K', '9945912533', 'Bangalore', 'jill@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Jill', '', '', 'T5', 'Deccan Express', 'Mumbai', '8:30 AM', 'Hyderabad', '650', '12345678'),
(3, 'Rakesh', 'Rao', '9945912544', 'Belgam', 'rakesh@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Rakesh', '', '', '', '', '', '', '', '', ''),
(4, 'Shobha', 'G', '9945912555', 'Ujire', 'shobha@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Shobha', '', '', 'T3', 'Chennai express ', 'Chennai', '10:00 AM', 'Mangalore', '500', ''),
(5, 'Kumar', 'Rai', '994591566', 'Hubli', 'kumar@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Kumar', '', '', '', '', '', '', '', '', ''),
(6, 'Janaki', 'Ram', '9945912577', 'Puttur', 'janaki@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Janaki', '', '', 'T1', 'Rajdhani Express', 'Mangalore', '7:00 AM', 'Bangalore', '100', '12345678'),
(7, 'Chaithra', 'S', '9945912581', 'Hassan', 'chaithra@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Chaithra', '', '', 'T3', 'Chennai express ', 'Chennai', '10:00 AM', 'Mangalore', '500', '12345678'),
(8, 'Arjun', 'K', '9945912599', 'Belur', 'arjun@gmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', '', 'Arjun', '', '', 'T2', 'Shatabdi Express', 'Bombay', '8:00 AM', 'Mangalore', '200', '12345678'),
(9, 'Gopi', 'N', '9945912500', 'Raichur', 'gopi@gmail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '', 'Gopi', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passwordresets`
--

CREATE TABLE `orrs_passwordresets` (
  `pwd_id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_passwordresets`
--

INSERT INTO `orrs_passwordresets` (`pwd_id`, `email`, `status`) VALUES
(1, 'gopi@gmail.com', 'Approved'),
(2, 'arjun@gmail.com', 'approved'),
(7, 'gopi@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train`
--

CREATE TABLE `orrs_train` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `current` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `passengers` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `fare` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_train`
--

INSERT INTO `orrs_train` (`id`, `name`, `route`, `current`, `destination`, `time`, `passengers`, `number`, `fare`) VALUES
(1, 'Rajdhani Express', 'Mangalore-Bangalore', 'Mangalore', 'Bangalore', '7:00 AM', '35', 'T1', '100'),
(2, 'Shatabdi Express', 'Bombay-Mangalore', 'Bombay', 'Mangalore', '8:00 AM', '40', 'T2', '200'),
(3, 'Chennai express ', 'Chennai-Mangalore', 'Chennai', 'Mangalore', '10:00 AM', '45', 'T3', '500'),
(4, 'Hamsafar Express', 'Mangalore-Mumbai', 'Mangalore', 'Mumbai', '9:00 PM', '50', 'T4', '550'),
(5, 'Deccan Express', 'Mumbai-Hyderabad', 'Mumbai', 'Hyderabad', '8:30 AM', '39', 'T5', '650');

--
-- Triggers `orrs_train`
--
DELIMITER $$
CREATE TRIGGER `after_train_insert` AFTER INSERT ON `orrs_train` FOR EACH ROW BEGIN
insert into orrs_train_backup VALUES(New.id,New.name,New.route,New.current,New.destination,New.time,New.passengers,New.number,New.fare);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train_backup`
--

CREATE TABLE `orrs_train_backup` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `current` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `passengers` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `fare` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_train_backup`
--

INSERT INTO `orrs_train_backup` (`id`, `name`, `route`, `current`, `destination`, `time`, `passengers`, `number`, `fare`) VALUES
(1, 'Rajdhani Express', 'Mangalore-Bangalore', 'Mangalore', 'Bangalore', '7:00 AM', '35', 'T1', '100'),
(2, 'Shatabdi Express', 'Bombay-Mangalore', 'Bombay', 'Mangalore', '8:00 AM', '40', 'T2', '200'),
(3, 'Chennai express ', 'Chennai-Mangalore', 'Chennai', 'Mangalore', '10:00 AM', '45', 'T3', '500'),
(4, 'Hamsafar Express', 'Mangalore-Mumbai', 'Mangalore', 'Mumbai', '9:00 PM', '50', 'T4', '550'),
(5, 'Deccan Express', 'Mumbai-Hyderabad', 'Mumbai', 'Hyderabad', '8:30 AM', '39', 'T5', '650');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train_tickets`
--

CREATE TABLE `orrs_train_tickets` (
  `ticket_id` int(20) NOT NULL,
  `pass_name` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `train_no` varchar(200) NOT NULL,
  `train_dep_stat` varchar(200) NOT NULL,
  `train_arr_stat` varchar(200) NOT NULL,
  `train_fare` varchar(200) NOT NULL,
  `fare_payment_code` varchar(200) NOT NULL,
  `confirmation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_train_tickets`
--

INSERT INTO `orrs_train_tickets` (`ticket_id`, `pass_name`, `pass_email`, `pass_addr`, `train_name`, `train_no`, `train_dep_stat`, `train_arr_stat`, `train_fare`, `fare_payment_code`, `confirmation`) VALUES
(1, 'Janaki Ram', 'janaki@gmail.com', 'Puttur', 'Rajdhani Express', 'T1', 'Mangalore', 'Bangalore', '100', '12345678', 'Approved'),
(2, 'Jack M', 'jack@gmail.com', 'Mangalore', 'Deccan Express', 'T5', 'Mumbai', 'Hyderabad', '650', '12345678', 'Approved'),
(3, 'Jill K', 'jill@gmail.com', 'Bangalore', 'Deccan Express', 'T5', 'Mumbai', 'Hyderabad', '650', '12345678', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  ADD PRIMARY KEY (`admin_id`) USING BTREE;

--
-- Indexes for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  ADD PRIMARY KEY (`emp_id`) USING BTREE;

--
-- Indexes for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  ADD PRIMARY KEY (`pass_id`) USING BTREE;

--
-- Indexes for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  ADD PRIMARY KEY (`pwd_id`) USING HASH;

--
-- Indexes for table `orrs_train`
--
ALTER TABLE `orrs_train`
  ADD PRIMARY KEY (`id`,`number`) USING BTREE,
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `orrs_train_backup`
--
ALTER TABLE `orrs_train_backup`
  ADD PRIMARY KEY (`id`,`number`) USING BTREE,
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `train_no` (`train_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  MODIFY `pass_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  MODIFY `pwd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orrs_train`
--
ALTER TABLE `orrs_train`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orrs_train_backup`
--
ALTER TABLE `orrs_train_backup`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  MODIFY `ticket_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
