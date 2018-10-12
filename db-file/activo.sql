-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 07:13 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `bill_image` mediumblob NOT NULL,
  `created_at` datetime NOT NULL,
  `isdeleted` int(2) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_image`, `created_at`, `isdeleted`, `deleted_at`, `deleted_by`) VALUES
(1, '', '2018-09-24 03:13:23', 0, '0000-00-00 00:00:00', 0),
(2, '', '2018-09-24 03:13:23', 0, '0000-00-00 00:00:00', 0),
(3, '', '2018-09-24 03:13:23', 0, '0000-00-00 00:00:00', 0),
(4, '', '2018-09-24 03:13:23', 0, '0000-00-00 00:00:00', 0),
(5, '', '2018-09-24 03:13:23', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`) VALUES
(1, 'COMPUTER-SCIENCE'),
(2, 'INFORMATION-TECHNOLOGY'),
(3, 'ELECTRONICS-AND-TELECOMMUNICATION'),
(4, 'ELECTRONICS'),
(5, 'INSTRUMENTATION'),
(6, 'GENERAL');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(1, 'ACCOUNTANT'),
(2, 'RECEPTIONIST'),
(3, 'LIBRARIAN'),
(4, 'STORE-MANAGER'),
(5, 'PURCHASE-OFFICER'),
(6, 'LAB_INCHARGE');

-- --------------------------------------------------------

--
-- Table structure for table `fullfilled`
--

CREATE TABLE `fullfilled` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `is_returnable` int(2) NOT NULL,
  `item_min_quantity` int(11) NOT NULL,
  `item_rate` int(11) NOT NULL,
  `item_access` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `is_deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `dept_id`, `is_returnable`, `item_min_quantity`, `item_rate`, `item_access`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`, `is_deleted`) VALUES
(1, 'COMPUTER', 1, 0, 3, 50000, 1, '2018-09-23 17:10:16', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'PROJECTOR', 6, 1, 4, 1500, 1, '2018-09-23 17:12:59', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'PRINTER', 6, 1, 3, 2000, 1, '2018-09-23 17:15:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'BREADBOARD', 6, 1, 7, 300, 0, '2018-09-23 17:17:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'SPEAKERS', 6, 1, 3, 1500, 0, '2018-09-23 17:17:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'USB-DRIVE', 6, 1, 2, 800, 0, '2018-09-23 17:18:54', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'CIRCUIT-KIT', 4, 1, 4, 1000, 1, '2018-09-23 17:26:11', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'CHAIRS', 6, 1, 10, 700, 0, '2018-09-23 17:26:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'MARKER/CHALK', 6, 0, 15, 50, 0, '2018-09-23 17:27:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'WELDING-MACHINE', 6, 1, 2, 1000, 1, '2018-09-23 17:30:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `per_piece_cost` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_officer_to_staff`
--

CREATE TABLE `purchase_officer_to_staff` (
  `purchase_officer_to_staff_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_officer_to_staff`
--

INSERT INTO `purchase_officer_to_staff` (`purchase_officer_to_staff_id`, `user_id`, `dept_id`) VALUES
(1, 22, 1),
(2, 27, 2),
(3, 28, 3),
(4, 29, 4),
(5, 32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_status` int(11) NOT NULL,
  `is_new` int(2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `is_deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `user_id`, `request_status`, `is_new`, `created_at`, `updated_at`, `deleted_by`, `deleted_at`, `is_deleted`) VALUES
(1, 15, 0, 1, '2018-09-23 17:33:29', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 19, 1, 0, '2018-09-23 17:36:31', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 14, 1, 0, '2018-09-23 17:37:35', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 14, 2, 0, '2018-09-23 17:38:04', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 13, 0, 1, '2018-09-23 17:38:55', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 14, 0, 0, '2018-09-23 17:40:41', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 20, 2, 0, '2018-09-23 17:41:01', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 17, 1, 0, '2018-09-23 17:43:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 14, 0, 0, '2018-09-24 03:07:16', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 14, 1, 0, '2018-09-24 03:07:16', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `request_item`
--

CREATE TABLE `request_item` (
  `request_item_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `is_fullfilled` int(11) NOT NULL,
  `request_item_status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `is_deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_item`
--

INSERT INTO `request_item` (`request_item_id`, `request_id`, `item_id`, `quantity`, `due_date`, `is_fullfilled`, `request_item_status`, `created_at`, `updated_at`, `deleted_at`, `is_deleted`) VALUES
(1, 1, 2, 1, '2018-09-26', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 2, 3, 1, '2018-09-05', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 2, 4, 1, '2018-09-25', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 4, 5, 1, '2018-09-28', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 5, 6, 1, '2018-09-28', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 6, 7, 2, '2018-09-28', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 7, 2, 1, '2018-09-21', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 8, 8, 10, '2018-09-25', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 0, 1, 3, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(10, 0, 4, 3, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 0, 1, 3, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(12, 0, 4, 3, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(13, 0, 1, 3, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, 0, 4, 3, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(15, 0, 4, 2, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(16, 0, 2, 2, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(17, 0, 4, 10, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(18, 0, 5, 10, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `society`
--

CREATE TABLE `society` (
  `society_id` int(11) NOT NULL,
  `society_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `society`
--

INSERT INTO `society` (`society_id`, `society_name`) VALUES
(1, 'ISTE'),
(2, 'CSI'),
(3, 'VRC'),
(4, 'IEEE');

-- --------------------------------------------------------

--
-- Table structure for table `society_student_coordinator`
--

CREATE TABLE `society_student_coordinator` (
  `society_student_coordinator_id` int(11) NOT NULL,
  `society_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `staff_first_name` varchar(255) NOT NULL,
  `staff_middle_name` varchar(255) NOT NULL,
  `staff_last_name` varchar(255) NOT NULL,
  `staff_number` varchar(10) NOT NULL,
  `staff_dept_id` int(11) NOT NULL,
  `staff_gender` varchar(10) NOT NULL,
  `staff_dob` date NOT NULL,
  `staff_designation_id` int(11) NOT NULL,
  `is_teaching_staff` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `user_id`, `staff_first_name`, `staff_middle_name`, `staff_last_name`, `staff_number`, `staff_dept_id`, `staff_gender`, `staff_dob`, `staff_designation_id`, `is_teaching_staff`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 18, 'avisha', 'prakash', 'nagarkar', '283461894', 1, 'Male', '1998-03-27', 1, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 19, 'trupti', 'rajesh', 'raghani', '8468126491', 2, 'Male', '1998-04-21', 2, 1, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 20, 'pearl', 'ashok', 'punjabi', '714832468', 3, 'Male', '1998-10-12', 3, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 21, 'richard', 'puran', 'kanjan', '47162466', 4, 'Male', '1998-04-03', 4, 1, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 22, 'mohit', 'karan', 'sumai', '562356922', 1, 'Male', '1998-09-17', 5, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 23, 'parvez', 'sunil', 'thakkar', '988462873', 1, 'Male', '1998-03-27', 6, 1, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 24, 'parmod', 'gaithode', 'sadhwani', '9748858275', 2, 'Male', '1998-04-21', 1, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 25, 'akash', 'jagu', 'janyani', '859773456', 3, 'Male', '1998-10-12', 2, 1, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 26, 'amit', 'prakash', 'narang', '283461894', 4, 'Male', '1998-04-03', 3, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 27, 'sarfaraz', 'rajesh', 'raghani', '8468126491', 2, 'Male', '1998-09-17', 5, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 28, 'jaiyam', 'ashok', 'punjabi', '714832468', 3, 'Male', '1998-03-27', 5, 0, '2018-09-23 18:33:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 29, 'prakash', 'puran', 'kanjan', '47162466', 4, 'Male', '1998-04-21', 5, 1, '2018-09-23 18:33:49', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 30, 'rajesh', 'karan', 'sumai', '562356922', 3, 'Male', '1998-10-12', 1, 0, '2018-09-23 18:33:49', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 31, 'ashok', 'sunil', 'thakkar', '988462873', 4, 'Male', '1998-04-03', 2, 1, '2018-09-23 18:33:49', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 32, 'puran', 'gaithode', 'sadhwani', '9748858275', 5, 'Male', '1998-09-17', 5, 0, '2018-09-23 18:33:49', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 58, 'Chirag', 'Rajesh', 'Raghani', '9898856040', 3, 'on', '2018-09-13', 2, 0, '2018-09-24 03:52:28', '2018-09-24 03:52:28', 0, '0000-00-00 00:00:00', 0),
(17, 59, 'Akash', 'Prakash', 'Narang', '9898856040', 6, 'Male', '1983-09-22', 4, 0, '2018-09-24 04:11:48', '2018-09-24 04:11:48', 0, '0000-00-00 00:00:00', 0),
(18, 2, 'neha', 'a', 'lalchandani', '2568999999', 2, 'Male', '2018-09-13', 2, 0, '2018-09-24 04:21:57', '2018-09-24 04:21:57', 0, '0000-00-00 00:00:00', 0),
(19, 2, 'neha', 'a', 'lalchandani', '2568999999', 2, 'Male', '2018-09-13', 2, 0, '2018-09-24 04:22:26', '2018-09-24 04:22:26', 0, '0000-00-00 00:00:00', 0),
(20, 2, 'neha', 'a', 'lalchandani', '2568999999', 2, 'Male', '2018-09-13', 2, 0, '2018-09-24 04:22:58', '2018-09-24 04:22:58', 0, '0000-00-00 00:00:00', 0),
(21, 58, 'Dhiren', 'Ashok', 'Chotwani', '7744844293', 1, 'Male', '1998-07-15', 6, 0, '2018-09-24 06:06:06', '2018-09-24 06:06:06', 0, '0000-00-00 00:00:00', 0),
(22, 21, 'Richard', 'ashok', 'Joseph', '0989085604', 6, 'Male', '1994-05-23', 4, 0, '2018-09-24 09:42:32', '2018-09-24 09:42:32', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL DEFAULT '1',
  `item_id` int(11) NOT NULL,
  `item_quantity_available` int(11) NOT NULL,
  `item_total_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `item_id`, `item_quantity_available`, `item_total_quantity`) VALUES
(1, 3, 4, 6),
(2, 2, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_first_name` varchar(255) NOT NULL,
  `student_middle_name` varchar(255) NOT NULL,
  `student_last_name` varchar(255) NOT NULL,
  `student_number` varchar(10) NOT NULL,
  `student_dept_id` int(11) NOT NULL,
  `student_gender` varchar(10) NOT NULL,
  `student_dob` date NOT NULL,
  `student_passout_year` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `user_id`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_number`, `student_dept_id`, `student_gender`, `student_dob`, `student_passout_year`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 2, 'chirag', 'prakash', 'narang', '283461894', 1, 'Male', '1998-03-27', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 3, 'dhiren', 'rajesh', 'raghani', '8468126491', 2, 'Male', '1998-04-21', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 4, 'jatin', 'ashok', 'punjabi', '714832468', 3, 'Male', '1998-10-12', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 5, 'rahul', 'puran', 'kanjan', '47162466', 4, 'Male', '1998-04-03', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 6, 'narang', 'karan', 'sumai', '562356922', 1, 'Male', '1998-09-17', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 7, 'sumai', 'sunil', 'thakkar', '988462873', 2, 'Male', '1998-03-27', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 8, 'akshay', 'gaithode', 'sadhwani', '9748858275', 3, 'Male', '1998-04-21', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 9, 'shyam', 'jagu', 'janyani', '859773456', 4, 'Male', '1998-10-12', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 10, 'nikhil', 'hiro', 'gurnani', '9875627648', 1, 'Male', '1998-04-03', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 11, 'varun', 'girish', 'mulhandani', '8637958275', 2, 'Male', '1998-09-17', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 12, 'dhiraj', 'girishlal', 'jangra', '935783295', 3, 'Male', '1998-03-27', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 38, 'girish', 'sunil', 'nawani', '9963529595', 4, 'Male', '1998-04-21', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 14, 'roshni', 'mukesh', 'agarwal', '98826471', 1, 'Male', '1998-10-12', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 39, 'girishlal', 'rakesh', 'bansal', '89378429', 2, 'Male', '1998-04-03', '2020', '2018-09-23 18:47:54', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 16, 'latika', 'piyush', 'dare', '7481349522', 3, 'Male', '1998-09-17', '2020', '2018-09-23 18:47:55', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 17, 'anisha', 'sumit', 'bansode', '94825921', 4, 'Male', '1970-01-01', '2020', '2018-09-23 18:47:55', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 46, 'Gaurav', 'ABC', 'Makhiga', '9999999999', 1, 'Male', '1998-11-11', '2020', '2018-09-23 20:22:06', '2018-09-23 20:22:06', 0, '0000-00-00 00:00:00', 0),
(18, 46, 'Gaurav', 'ABC', 'Makhiga', '9999999999', 1, 'Male', '1998-11-11', '2020', '2018-09-23 20:23:50', '2018-09-23 20:23:50', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_token` text NOT NULL,
  `is_email_verified` int(2) NOT NULL,
  `is_fully_registered` int(2) NOT NULL,
  `is_first_login` int(2) NOT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `is_deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_role_id`, `user_token`, `is_email_verified`, `is_fully_registered`, `is_first_login`, `user_profile_picture`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `is_deleted`) VALUES
(2, 'chirag@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 1, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(3, 'dhiren@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(4, 'jatin@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(5, 'rahul@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 1, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(6, 'narang@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(7, 'sumai@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(8, 'akshay@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(9, 'shyam@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(10, 'nikhil@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(11, 'varun@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(12, 'dhiraj@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(13, 'karan@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 3, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(14, 'roshni@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 1, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(15, 'khushboo@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 1, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(16, 'latika@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(17, 'anisha@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(18, 'avisha@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 5, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(19, 'trupti@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(20, 'pearl@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 3, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(21, 'richard@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 6, '', 1, 1, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(22, 'mohit@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 7, '', 1, 0, 0, '', '2018-09-23 16:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(23, 'parvez@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 1, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(24, 'parmod@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 8, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(25, 'akash@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 5, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(26, 'amit@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 6, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(27, 'sarfaraz@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 7, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(28, 'jaiyam@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 7, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(29, 'prakash@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 7, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(30, 'rajesh@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 5, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(31, 'ashok@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 6, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(32, 'puran@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 7, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(33, 'karan@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 5, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(34, 'sunil@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 3, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(35, 'gaithode@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(36, 'jagu@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 1, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(37, 'hiro@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(38, 'girish@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(39, 'girishlal@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(40, 'sunil@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(41, 'sagar@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(42, 'jatin@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(43, 'pali@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(44, 'ashnil@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(45, 'rahul@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(46, 'gaurav@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 1, 0, '', '2018-09-23 16:40:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(47, 'sahil@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(48, 'khushi@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-23 16:40:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(52, 'jaynam.s@somaiya.edu', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 0, 0, '', '2018-09-24 00:46:58', '2018-09-24 00:46:58', '0000-00-00 00:00:00', 0, 0),
(53, 'dhirenchotwani@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 1, 0, '', '2018-09-24 00:56:20', '2018-09-24 00:56:20', '0000-00-00 00:00:00', 0, 0),
(54, 'akash.narang@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-24 02:56:09', '2018-09-24 02:56:09', '0000-00-00 00:00:00', 0, 0),
(55, 'ria.thomas1503@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 8, '', 1, 0, 0, '', '2018-09-24 02:57:47', '2018-09-24 02:57:47', '0000-00-00 00:00:00', 0, 0),
(56, '2016.hiro.nikhil@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-24 03:40:58', '2018-09-24 03:40:58', '0000-00-00 00:00:00', 0, 0),
(57, '', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 0, 0, '', '2018-09-24 03:41:35', '2018-09-24 03:41:35', '0000-00-00 00:00:00', 0, 0),
(58, '2016.dhiren.chotwani@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 1, 0, '', '2018-09-24 03:43:11', '2018-09-24 03:43:11', '0000-00-00 00:00:00', 0, 0),
(59, '2016.akash.narang@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 6, '', 1, 0, 0, '', '2018-09-24 04:07:32', '2018-09-24 04:07:32', '0000-00-00 00:00:00', 0, 0),
(60, '2016.akash.narang@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 3, '', 1, 0, 0, '', '2018-09-24 04:17:34', '2018-09-24 04:17:34', '0000-00-00 00:00:00', 0, 0),
(61, '2016.akash.narang@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 3, '', 1, 0, 0, '', '2018-09-24 04:17:38', '2018-09-24 04:17:38', '0000-00-00 00:00:00', 0, 0),
(62, '2016.dhiren.chotwani@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 3, '', 1, 0, 0, '', '2018-09-24 04:23:32', '2018-09-24 04:23:32', '0000-00-00 00:00:00', 0, 0),
(63, 'chotwanidhirendc@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 0, 0, '', '2018-09-24 09:54:24', '2018-09-24 09:54:24', '0000-00-00 00:00:00', 0, 0),
(64, '2016.hiro.nikhil@ves.ac.in', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 4, '', 1, 0, 0, '', '2018-09-24 10:07:41', '2018-09-24 10:07:41', '0000-00-00 00:00:00', 0, 0),
(65, 'dhirenchotwani@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 2, '', 1, 0, 0, '', '2018-09-24 10:10:58', '2018-09-24 10:10:58', '0000-00-00 00:00:00', 0, 0),
(66, 'chotwanidhirendc@gmail.com', '$2y$10$JCfV8gyi9.ITy/nP4Z3mt.kWWKaReGTVyGPjMdXT9Lr25hCr5uzhq', 5, '', 1, 0, 0, '', '2018-09-24 11:39:03', '2018-09-24 11:39:03', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `user_role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `user_role_name`) VALUES
(1, 'ADMIN'),
(2, 'TEACHER'),
(3, 'LAB-ASSISTANT'),
(4, 'STUDENT'),
(5, 'SOCIETY-COORDINATOR'),
(6, 'STORE-MANAGER'),
(7, 'PURCHASE-OFFICER'),
(8, 'NON-TEACHING');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `fullfilled`
--
ALTER TABLE `fullfilled`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_officer_to_staff`
--
ALTER TABLE `purchase_officer_to_staff`
  ADD PRIMARY KEY (`purchase_officer_to_staff_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `request_item`
--
ALTER TABLE `request_item`
  ADD PRIMARY KEY (`request_item_id`);

--
-- Indexes for table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`society_id`);

--
-- Indexes for table `society_student_coordinator`
--
ALTER TABLE `society_student_coordinator`
  ADD PRIMARY KEY (`society_student_coordinator_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fullfilled`
--
ALTER TABLE `fullfilled`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_officer_to_staff`
--
ALTER TABLE `purchase_officer_to_staff`
  MODIFY `purchase_officer_to_staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `request_item`
--
ALTER TABLE `request_item`
  MODIFY `request_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `society`
--
ALTER TABLE `society`
  MODIFY `society_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `society_student_coordinator`
--
ALTER TABLE `society_student_coordinator`
  MODIFY `society_student_coordinator_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
