-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 07:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `userID` int(11) NOT NULL,
  `fullname_eng` varchar(100) DEFAULT NULL,
  `fullname_bng` varchar(100) DEFAULT NULL,
  `fathersname_eng` varchar(100) DEFAULT NULL,
  `fathersname_bng` varchar(100) DEFAULT NULL,
  `mothersname_eng` varchar(100) DEFAULT NULL,
  `mothersname_bng` varchar(100) DEFAULT NULL,
  `date_of_birth` varchar(20) DEFAULT NULL,
  `nid_number` int(30) DEFAULT NULL,
  `birth_certificate_no` int(30) DEFAULT NULL,
  `passport_no` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `religion` varchar(10) DEFAULT NULL,
  `blood_group` varchar(4) DEFAULT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `user_mobile` int(20) DEFAULT NULL,
  `user_other_number` int(20) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `UserAuthKey` varchar(50) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `userpic_title` varchar(50) DEFAULT NULL,
  `userpic_directory` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`userID`, `fullname_eng`, `fullname_bng`, `fathersname_eng`, `fathersname_bng`, `mothersname_eng`, `mothersname_bng`, `date_of_birth`, `nid_number`, `birth_certificate_no`, `passport_no`, `gender`, `religion`, `blood_group`, `marital_status`, `useremail`, `user_mobile`, `user_other_number`, `username`, `UserAuthKey`, `password`, `userpic_title`, `userpic_directory`) VALUES
(44, 'Helal Uddin', 'Helal Uddin', 'Abu Taher', 'Abu Taher', 'Afroza Begum', 'Afroza Begum', '12-02-1991', 2147483647, 2147483647, 'EF0334491', 'Male', 'Islam', 'B+', 'Married', 'root@outlook.com', 1872772313, 98766654, 'root', 'a72404860c2ae2183b09954b05aa2f07', 'b48bf6b999f95ce8cc77a7a6cc4a12ae', 'helal.png', 'img/users'),
(45, 'Rahim', '', 'Mia', '', 'Karim', '', '1234', 1234, 1234, '123', 'Male', 'Islam', '', '', 'rahim@gmail.com', 1234, 0, 'rahim', '9d6beccfb7e71a16be64be0e5c0214dc', '700c8b805a3e2a265b01c77614cd8b21', 'helal.png', 'img/users'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'boishakhi@gmail.com', NULL, NULL, 'helal', '5f7519c9359c6cc00e3c5f6725130ed4', '6116afedcb0bc31083935c1c262ff4c9', NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bs@cs.com', NULL, NULL, 'postmaster', '59fef9b2d6e79b7d4784b9b3aa8e9745', '6116afedcb0bc31083935c1c262ff4c9', NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bs@cs.com', NULL, NULL, 'rahim', '89a46e46312f2420f70b95ea37d931ed', '6116afedcb0bc31083935c1c262ff4c9', NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zsadek@gmail.com', NULL, NULL, 'zafar', 'c7a7e3fb592f84951af7044e03cc595c', 'b714337aa8007c433329ef43c7b8252c', NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@admin.com', NULL, NULL, 'Administrator', '21df24efdeb0205af0a6b28fc0fb02af', 'b714337aa8007c433329ef43c7b8252c', NULL, NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'boishakhi@gmail.com', NULL, NULL, 'postmaster', '59fef9b2d6e79b7d4784b9b3aa8e9745', '6116afedcb0bc31083935c1c262ff4c9', NULL, NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kamal@kamal.com', NULL, NULL, 'Kamal Uddin', '15dc4019c63d977a26ae4d9e703f327f', '700c8b805a3e2a265b01c77614cd8b21', NULL, NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'forhad1@gmail.com', NULL, NULL, 'forhad', '09459508110e641862ef1fa037c766b2', 'b714337aa8007c433329ef43c7b8252c', NULL, NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'helal@hostingta.com', NULL, NULL, 'csehelal', '5f9db1c454e88cc2c456b9256a65e5bd', 'b48bf6b999f95ce8cc77a7a6cc4a12ae', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(2, 'csehelal', 'helal@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'OSAKA');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(11, 45, '::1', 7, 1),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(71, 61, '127.0.0.1', -1, 1),
(232, 2, '::1', 29, 1),
(351, 5, '::1', 34, 1),
(371, 68, '::1', 39, 1),
(372, 69, '::1', 40, 1),
(377, 91, '::1', -1, 1),
(379, 1, '::1', 41, 1),
(380, 4, '::1', 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Mens Wear'),
(2, 'Ladies Wears'),
(4, 'Kids Wear'),
(6, 'Baby Wear'),
(7, 'Mix Wear');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com'),
(6, 'mdforhad4596@gmail.com'),
(7, 'bs@cs.com'),
(8, 'boishakhi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(4, 29, 2, 1, '07M47684BS5725041', 'Completed'),
(6, 29, 2, 1, '07M47684BS5725041', 'Completed'),
(7, 29, 2, 1, '07M47684BS5725065', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234),
(2, 26, 'Helal Uddin', 'bs@cs.com', 'dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '3333333333333333', '12/22', 2, 30000, 789),
(3, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '4444 4444 4444 4444', '12/12', 1, 5000, 231),
(4, 29, 'Forhad Hossain', 'forhad@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '7777777777777777', '11/22', 1, 300, 321),
(5, 29, 'Forhad Hossain', 'forhad@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '5432 3453 5632 2567', '12/22', 1, 5000, 654),
(6, 29, 'Forhad Hossain', 'forhad@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '6666666666555555', '11/22', 3, 100000, 543),
(7, 29, 'Forhad Hossain', 'forhad@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '4444 4444 4444 4444', '09/22', 2, 40000, 232),
(8, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 653423, 'Helal uddin', '7657706655467098', '12/22', 1, 30000, 345),
(9, 30, 'Nasrin  Sultana', 'nasrin@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Nasrin Sultan', '3748 227789 07443', '09/22', 2, 30000, 917),
(10, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '3333333333333333', '11/22', 1, 25000, 321),
(11, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '8888 8888 8888 8888', '12/22', 1, 6000, 543),
(12, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Helal Uddin', '4444 4444 4444 4444', '12/22', 1, 5000, 234),
(13, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '1111111111111111', '12/22', 1, 6000, 234),
(14, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '3333333333333333', '11/22', 1, 6000, 231),
(15, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '8888 8888 8888 8888', '12/22', 1, 6000, 432),
(16, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '2222222222222222', '12/22', 1, 25000, 232),
(17, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '7777777777777777', '12/22', 1, 5000, 131),
(18, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '7777777777777777', '12/22', 1, 25000, 432),
(19, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 653423, 'Nasrin Sultan', '4444 4444 4444 4444', '12/22', 1, 25000, 234),
(20, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 653423, 'Helal uddin', '3243444444444444', '12/33', 1, 30000, 324),
(21, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '4444 4444 4444 4444', '12/33', 1, 30000, 324),
(22, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 653423, 'Nasrin Sultan', '3333333333333333', '12/23', 1, 25000, 123),
(23, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal uddin', '8888 8888 8888 8888', '12/22', 1, 30000, 654),
(24, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '3333333333333333', '12/23', 1, 30000, 326),
(25, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Nasrin Sultan', '4444 4444 4444 4444', '12/22', 1, 6000, 123),
(26, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '9999999999999999', '02/23', 1, 6000, 326),
(27, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Nasrin Sultan', '3333333333333333', '11/22', 1, 6000, 321),
(28, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Helal Uddin', '2322222222222222', '12/23', 1, 25000, 231),
(29, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Helal uddin', '7777777777777777', '12/23', 1, 25000, 543),
(30, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '5555 5555 5555 5555', '11/22', 1, 6000, 765),
(31, 28, 'Helal Uddin', 'helal@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Helal Uddin', '1111111111111111', '11/22', 1, 6000, 123),
(32, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Helal Uddin', '4444 4444 4444 4444', '12/33', 1, 6000, 342),
(33, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Helal Uddin', '2222222222222222', '12/22', 3, 67000, 123),
(34, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Helal Uddin', '4444 4444 4444 4444', '12/22', 1, 35000, 223),
(35, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Nasrin Sultan', '9999999999999999', '11/24', 1, 6000, 675),
(36, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Monir Hossain', '3333333333333333', '12/22', 2, 36000, 123),
(37, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Monir Hossain', '3333333333333333', '12/23', 1, 6000, 343),
(38, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Nasrin Sultan', '7777777777777777', '11/22', 1, 2500, 432),
(39, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Chandpur', 123456, 'Helal Uddin', '6666666666666666', '12/22', 1, 35000, 543),
(40, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Helal Uddin', '1234444444444444', '12/22', 1, 25000, 122),
(41, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Helal Uddin', '1233333333333333', '12/22', 1, 6000, 234),
(42, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Helal uddin', '3333333333333333', '11/22', 1, 32000, 123),
(43, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Helal Uddin', '4444 4444 4444 4444', '12/22', 1, 460, 321),
(44, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Chandpur', 123456, 'Helal Uddin', '4444 4444 4444 4444', '11/23', 1, 10000, 123),
(45, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Monir Hossain', '6666666666666666', '12/22', 2, 37000, 321),
(46, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Helal Uddin', '2222222222222222', '12/23', 1, 2500, 123),
(47, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Chandpur', 123456, 'Helal Uddin', '9999999999999999', '12/22', 1, 2500, 123),
(48, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 653423, 'Jhon Jack', '9999999999999999', '12/22', 1, 550, 213),
(49, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 653423, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(50, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 653423, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(51, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 653423, 'Jhon Jack', '9999999999999999', '12/22', 1, 20000, 213),
(52, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 653423, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(53, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(54, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 550, 213),
(55, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(56, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(57, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(58, 31, 'Helal Uddin', 'helal@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(59, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(60, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(61, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(62, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(63, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(64, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(65, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(66, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(67, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 32000, 213),
(68, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(69, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(70, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 460, 213),
(71, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(72, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 2, 50000, 213),
(73, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(74, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(75, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(76, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 6000, 213),
(77, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(78, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(79, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(80, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(81, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 10000, 213),
(82, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 300, 213),
(83, 33, 'Helal Uddin', 'helal@hostingta.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(84, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(85, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(86, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(87, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(88, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(89, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 10000, 213),
(90, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 0, 0, 213),
(91, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 0, 0, 213),
(92, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 0, 0, 213),
(93, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 0, 0, 213),
(94, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 0, 0, 213),
(95, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 0, 0, 213),
(96, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 20000, 213),
(97, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(98, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(99, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(100, 28, 'Boishakhi Islam', 'boishakhi@gmail.com', 'Dhaka', 'dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(101, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213),
(102, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 460, 213),
(103, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 2, 12500, 213),
(104, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 2, 500, 213),
(105, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(106, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 20000, 213),
(107, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 30000, 213),
(108, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 550, 213),
(109, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 50000, 213),
(110, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 470, 213),
(111, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 3500, 213),
(112, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 50000, 213),
(113, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(114, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 3, 21000, 213),
(115, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 3, 21000, 213),
(116, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(117, 32, 'Helal Uddin', 'csehelal@outlook.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 40000, 213),
(118, 36, 'Rahim Mia', 'rahim@gmail.com', 'Kachua', 'Chandpur', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 3, 74000, 213),
(119, 33, 'Helal Uddin', 'helal@hostingta.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 10000, 213),
(120, 33, 'Helal Uddin', 'helal@hostingta.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 2, 38000, 213),
(121, 33, 'Helal Uddin', 'helal@hostingta.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 32000, 213),
(122, 37, 'Ismail  Mia', 'ismail@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 4, 11480, 213),
(123, 38, 'Amena Akter', 'amena@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 40000, 213),
(124, 38, 'Amena Akter', 'amena@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 3, 16900, 213),
(125, 38, 'Amena Akter', 'amena@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 25000, 213),
(126, 33, 'Helal Uddin', 'helal@hostingta.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 50000, 213),
(127, 41, 'Rahmatulla Sharif Pathan  Bepari', 'enghelaluddin@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 2, 7500, 213),
(128, 41, 'Rahmatulla Sharif Pathan  Bepari', 'enghelaluddin@gmail.com', 'Dhaka', 'Dhaka', 'Dhaka', 123456, 'Jhon Jack', '9999999999999999', '12/22', 1, 5000, 213);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(91, 2, 1, 1, 5000),
(93, 3, 1, 1, 5000),
(94, 4, 7, 1, 300),
(95, 5, 1, 1, 5000),
(96, 6, 5, 1, 10000),
(97, 6, 8, 1, 40000),
(98, 6, 7, 1, 50000),
(99, 7, 3, 1, 30000),
(100, 7, 5, 1, 10000),
(101, 8, 3, 1, 30000),
(102, 9, 2, 1, 25000),
(103, 9, 1, 1, 5000),
(104, 10, 2, 1, 25000),
(105, 11, 7, 1, 6000),
(106, 12, 1, 1, 5000),
(107, 13, 7, 1, 6000),
(108, 14, 7, 1, 6000),
(109, 15, 7, 1, 6000),
(110, 16, 2, 1, 25000),
(111, 17, 1, 1, 5000),
(112, 18, 2, 1, 25000),
(113, 19, 2, 1, 25000),
(114, 20, 3, 1, 30000),
(115, 21, 3, 1, 30000),
(116, 22, 2, 1, 25000),
(117, 23, 3, 1, 30000),
(118, 24, 3, 1, 30000),
(119, 25, 7, 1, 6000),
(120, 26, 7, 1, 6000),
(121, 27, 7, 1, 6000),
(122, 28, 2, 1, 25000),
(123, 29, 2, 1, 25000),
(124, 30, 7, 1, 6000),
(125, 31, 7, 1, 6000),
(126, 32, 7, 1, 6000),
(127, 33, 2, 1, 25000),
(128, 33, 5, 1, 10000),
(129, 33, 4, 1, 32000),
(130, 34, 6, 1, 35000),
(131, 35, 7, 1, 6000),
(132, 36, 7, 1, 6000),
(133, 36, 3, 1, 30000),
(134, 37, 7, 1, 6000),
(135, 38, 6, 1, 2500),
(136, 39, 6, 1, 35000),
(137, 40, 2, 1, 25000),
(138, 41, 7, 1, 6000),
(139, 42, 4, 1, 32000),
(140, 43, 21, 1, 460),
(141, 44, 16, 1, 10000),
(142, 45, 1, 1, 5000),
(143, 45, 4, 1, 32000),
(144, 46, 6, 1, 2500),
(145, 47, 6, 1, 2500),
(146, 48, 21, 1, 550),
(147, 49, 2, 1, 25000),
(148, 50, 3, 1, 30000),
(149, 51, 13, 1, 20000),
(150, 52, 2, 1, 25000),
(151, 53, 2, 1, 25000),
(152, 54, 21, 1, 550),
(153, 55, 7, 1, 6000),
(154, 56, 7, 1, 6000),
(155, 57, 7, 1, 6000),
(156, 58, 7, 1, 6000),
(157, 59, 2, 1, 25000),
(158, 60, 2, 1, 25000),
(159, 61, 1, 1, 5000),
(160, 62, 7, 1, 6000),
(161, 63, 7, 1, 6000),
(162, 64, 7, 1, 6000),
(163, 65, 7, 1, 6000),
(164, 66, 2, 1, 25000),
(165, 67, 4, 1, 32000),
(166, 68, 1, 1, 5000),
(167, 69, 1, 1, 5000),
(168, 70, 21, 1, 460),
(169, 71, 7, 1, 6000),
(170, 72, 3, 1, 30000),
(171, 72, 13, 1, 20000),
(172, 73, 7, 1, 6000),
(173, 74, 2, 1, 25000),
(174, 75, 2, 1, 25000),
(175, 76, 7, 1, 6000),
(176, 77, 3, 1, 30000),
(177, 78, 2, 1, 25000),
(178, 79, 2, 1, 25000),
(179, 80, 2, 1, 25000),
(180, 81, 5, 1, 10000),
(181, 82, 7, 1, 300),
(182, 83, 1, 1, 5000),
(183, 84, 1, 1, 5000),
(184, 85, 1, 1, 5000),
(185, 86, 2, 1, 25000),
(186, 87, 3, 1, 30000),
(187, 88, 2, 1, 25000),
(188, 89, 5, 1, 10000),
(189, 96, 13, 1, 20000),
(190, 97, 3, 1, 30000),
(191, 98, 3, 1, 30000),
(192, 99, 3, 1, 30000),
(193, 100, 3, 1, 30000),
(194, 101, 1, 1, 5000),
(195, 102, 21, 1, 460),
(196, 103, 15, 1, 2500),
(197, 103, 16, 1, 10000),
(198, 104, 18, 1, 250),
(199, 104, 19, 1, 250),
(200, 105, 2, 1, 25000),
(201, 106, 13, 1, 20000),
(202, 107, 3, 1, 30000),
(203, 108, 21, 1, 550),
(204, 109, 7, 1, 50000),
(205, 110, 21, 1, 470),
(206, 111, 14, 1, 3500),
(207, 112, 7, 1, 50000),
(208, 113, 2, 1, 25000),
(209, 114, 5, 1, 10000),
(210, 114, 1, 1, 5000),
(211, 114, 7, 1, 6000),
(212, 115, 5, 1, 10000),
(213, 115, 1, 1, 5000),
(214, 115, 7, 1, 6000),
(215, 116, 2, 1, 25000),
(216, 117, 8, 1, 40000),
(217, 118, 3, 1, 30000),
(218, 118, 4, 1, 32000),
(219, 118, 9, 1, 12000),
(220, 119, 5, 1, 10000),
(221, 120, 4, 1, 32000),
(222, 120, 7, 1, 6000),
(223, 121, 4, 1, 32000),
(224, 122, 85, 1, 540),
(225, 122, 21, 1, 460),
(226, 122, 21, 1, 480),
(227, 122, 5, 1, 10000),
(228, 123, 8, 1, 40000),
(229, 124, 88, 1, 900),
(230, 124, 7, 1, 6000),
(231, 124, 16, 1, 10000),
(232, 125, 2, 1, 25000),
(233, 126, 6, 1, 50000),
(234, 127, 9, 1, 2500),
(235, 127, 1, 1, 5000),
(236, 128, 1, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_ram` varchar(50) NOT NULL,
  `product_storage` varchar(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_old_price` varchar(50) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_status` text CHARACTER SET utf8mb4 NOT NULL COMMENT 'active,inactive',
  `product_qty` int(100) NOT NULL,
  `reviews_body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_ram`, `product_storage`, `product_title`, `product_price`, `product_old_price`, `product_desc`, `product_image`, `product_keywords`, `product_status`, `product_qty`, `reviews_body`) VALUES
(1, 1, 'OSAKA', '12 CTN', '12W', 'M COB', ' 5000', '6000.00', 'Lorem, ipsum dolor sit amet consectetur, adipisicing elit. Alias excepturi tempore modi maiores numquam voluptatem et nam ad quas dolorum maxime laudantium est quia ab facere, repudiandae veritatis. Natus, et.', '1669101526_bulb-1.png', 'samsung mobile electronics', 'Active', 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'),
(2, 1, 'OSAKA', '12 CTN', '18W', 'M COB', '25000', '700', 'iphone 5s', '1669101375_bulb-1.png', 'mobile iphone apple', 'Active', 0, ''),
(3, 4, 'OSAKA', '12 CTN', '18W', 'LED NIGHT-O COLOR BULB-(NON GUARANTEE) ', ' 30000', '11000', 'ipad apple brand', '1669101388_bulb-1.png', 'apple ipad tablet', 'Active', 0, ''),
(4, 1, 'OSAKA', '12 CTN', '18W', 'LED NIGHT-O COLOR BULB-(NON GUARANTEE) ', '32000', '40000', 'Apple iPhone ', '1669101404_bulb-1.png', 'iphone apple mobile', 'Active', 130, 'kabakaba'),
(5, 1, 'OSAKA', '12 CTN', '18W', 'LED NIGHT-O COLOR BULB-(NON GUARANTEE) ', '10000', '50000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1669101420_bulb-1.png', 'ipad tablet samsung', 'Active', 100, ''),
(6, 1, 'OSAKA', '12 CTN', '33W', 'LED GLOBE COLOR BULB-(NON GUARANTEE)', '35000', '50000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1669101434_bulb-1.png', 'samsung laptop ', 'Active', 99, ''),
(7, 1, 'OSAKA', '12 CTN', '30W', 'LED GLOBE COLOR BULB-(NON GUARANTEE)', '50000', ' 60000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1669101453_bulb-1.png', 'Laptop Hp Pavillion', 'Active', 45, ''),
(8, 1, 'OSAKA', '12 CTN', '15W', 'LED GLOBE COLOR BULB-(NON GUARANTEE)', '40000', '45000', 'Lorem ipsum dolor sit amet, consectetur, adipisicing elit. Voluptatum nam earum laborum quis, consectetur exercitationem ipsam optio enim, vitae amet a, repudiandae quia id iste. Odit, in, veritatis? Reprehenderit, dolores?', '1669101467_bulb-1.png', 'sony mobile', 'Active', 47, ''),
(9, 1, 'OSAKA', '12 CTN', '20W', 'X-PRESS', '12000', '15000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1668614976_239548583_365851855126761_2198537150157397264_n.jpg', 'iphone apple mobile', 'Active', 0, ''),
(10, 5, 'OSAKA', '12 CTN', '35W', 'X-PRESS', '2500', ' 3000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1668615000_209301981_324028759309071_4421798211119385824_n.jpg', 'book shelf furniture', 'Active', 600, ''),
(11, 6, 'OSAKA', '20 CTN', '50W', 'X-PRESS', '6000', '7000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1668615019_273952173_467244141654198_4941835621844935648_n.jpg', 'Vaccum Cleaner', 'Active', 200, ''),
(12, 6, 'OSAKA', '20 CTN', '60W', 'X-PRESS', '1500', '2000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1668615034_207929071_323733532671927_3585325687144437034_n.jpg', 'iron', 'Active', 170, ''),
(13, 6, 'OSAKA', '20 CTN', '18W', 'CANDLE CRYSTAL', '20000', '8000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615164_4.jpg', 'led tv lg', 'Active', 300, ''),
(14, 6, 'OSAKA', '20 CTN', '32W', 'SPOT LIGHT-ECO', '3500', '5555', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615189_279246735_514589840252961_424574916048509926_n.jpg', 'Microwave Oven', 'Active', 59, 'Dhaka is the capital of Bangladesh.'),
(15, 6, 'OSAKA', '20 CTN', '15W', 'OS-22 (SMD PANEL)-DL+WW ', '2500', '11000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615210_274271245_467243981654214_3102325451932968257_n.jpg', 'Mixer Grinder', 'Active', 23, ''),
(16, 1, 'OSAKA', '20 CTN', '18W', 'OS-22 (SMD PANEL)-ALLCOLOR', '10000', '11000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615229_286660284_538965667815378_2187560510514526895_n.jpg', 'samsung galaxy Note 3 neo', 'Active', 87, ''),
(17, 1, 'OSAKA', '40 CTN', '0.5W', 'FLAT WHITE PANEL(ROUND/SQUARE) ', '10000', '1000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615249_204093755_322950516083562_7215411092114323091_n.jpg', 'samsung galxaxy note 3 neo', 'Active', 78, ''),
(18, 1, 'OSAKA', '40 CTN', '5W', 'SURFACE PANEL', '250', '800', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615274_282015872_524464505932161_358551164465021010_n.jpg', 'Headphones Sony', 'Active', 0, ''),
(19, 1, 'OSAKA', '40 CTN', '5W', 'Man Tall', '250', '11000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615297_281260358_523127792732499_4701111724058317246_n.jpg', 'Headphones Sony', 'Active', 65, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'),
(20, 3, 'OSAKA', '40 CTN', '18W', 'NEW FLEXO PANEL', '299', '1000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615325_7.jpg', 'suit boys shirts', 'Active', 67, ''),
(21, 3, 'OSAKA', '40 CTN', '15W', 'boys Jeans Pant', '550', '500', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615345_4.jpg', 'boys Jeans Pant', 'Active', 5, ''),
(22, 3, 'OSAKA', '40 CTN', '9W', 'boys Jeans Pant', '460', '800', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668615375_12.jpg', 'boys Jeans Pant', 'Active', 89, ''),
(65, 3, 'OSAKA', '40 CTN', '12W', 'boys Jeans Pant', '470', '5555', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668616031_8.jpg', 'boys Jeans Pant', 'Active', 700, ''),
(66, 3, 'OSAKA', '40 CTN', '7W', 'boys Jeans Pant', '480', '1000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668616051_239548583_365851855126761_2198537150157397264_n.jpg', 'boys Jeans Pant', 'Active', 40, ''),
(67, 3, 'OSAKA', '40 CTN', '5W', 'Ladies big three pic', '360', '800', 'pants', '1668616072_8.jpg', 'boys Jeans Pant', 'Active', 600, ''),
(68, 3, 'M COB ', '50 CTN', '0.5W', 'M COB', '550', '600', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668616096_204093755_322950516083562_7215411092114323091_n.jpg', 'boys Jeans Pant', 'Active', 50, ''),
(69, 3, 'OSAKA LED', '50 CTN', '0.5W', 'M COB', '390', '400', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1668616118_209301981_324028759309071_4421798211119385824_n.jpg', 'boys Jeans Pant', 'Active', 56, ''),
(83, 0, 'M COB', '50 CTN', '0.5W', 'Kids Yellow Shirt', '300', '500', 'Crystal balls and clairvoyance: Future proofing in a world of inevitable change\r\nMake your open-source project public before you’re ready (Ep. 444)', '1668616170_239548583_365851855126761_2198537150157397264_n.jpg', '', 'Active', 78, ''),
(84, 0, 'OSAKA', '100 CTN', '0.5W', 'Kids Yellow Shirt', '300', '500', 'sfdsfdsf', '1668616229_279246735_514589840252961_424574916048509926_n.jpg', '', 'Active', 0, ''),
(85, 0, 'OSAKA', '100 CTN', '7W', 'Boishakhi Dress', '5000', '15000', 'Dhaka', '1668616249_1.jpg', '', 'Active', 0, ''),
(86, 0, 'SURFACE PANEL ', '100 CTN', '7W', 'Hot Dress', ' 500', '1000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1668616265_207929071_323733532671927_3585325687144437034_n.jpg', '', 'Active', 0, ''),
(87, 0, 'M COB', '100 CTN', '7W', 'Indian Jacket', '500', '600', 'Chandpur is a hilsa area', '1668616298_208148654_323185686060045_5640263162039132158_n.jpg', '', 'active', 0, ''),
(88, 0, 'OSAKA', '100 CTN', '7W', 'Hot T Shirt', '900', '2000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1668616321_274271245_467243981654214_3102325451932968257_n.jpg', '', 'active', 0, ''),
(89, 0, 'ELITE FLEXIBLE PANEL', '100 CTN', '7W', 'Womens New Arrival Dry Special ', '9000', '11000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1668616344_131096655_201616714883610_3017550757769196477_n.jpg', '', 'Active', 0, ''),
(90, 0, 'OSAKA', '100 CTN', '12W', 'Kids New Arrival Panjabi', '800', '1000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1668616361_209301981_324028759309071_4421798211119385824_n.jpg', '', 'Active', 654, ''),
(91, 0, 'ELIT PANEL', '100 CTN', '12W', 'Boishakhi Dress', '540', '700', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1668616378_12.jpg', '', 'Active', 45, '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `r_id` int(6) UNSIGNED NOT NULL,
  `cus_id` varchar(11) NOT NULL,
  `r_name` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_body` varchar(255) NOT NULL,
  `r_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`r_id`, `cus_id`, `r_name`, `r_email`, `r_body`, `r_date`) VALUES
(21, '1', 'Md Zamal Hossain', 'zamal@gmail.com', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '2022-05-26 07:20:21'),
(22, '0', 'Md Kamal Hossain', 'kamal@gmail.com', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '2022-05-26 00:13:21'),
(41, '', 'Hossain', 'zamal@outlook.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,', '2022-05-26 09:40:18'),
(42, '', 'Hossain', 'zamal@outlook.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,', '2022-05-26 09:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', 'puneeth', '9448121558', '123456789', 'sdcjns,djc'),
(26, 'Helal', 'Uddin', 'bs@cs.com', '12345', '9876509876', 'dhaka', 'dhaka'),
(28, 'Boishakhi', 'Islam', 'boishakhi@gmail.com', '12345', '0197186043', 'Dhaka', 'dhaka'),
(29, 'Forhad', 'Hossain', 'forhad@gmail.com', 'Forhad123', '1827009878', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka'),
(30, 'Nasrin ', 'Sultana', 'nasrin@gmail.com', 'Nasrin@1234', '0182700987', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(31, 'Helal', 'Uddin', 'helal@gmail.com', 'Helal@1234', '0182700987', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(32, 'Helal', 'Uddin', 'csehelal@outlook.com', 'Helal@1234', '0187277231', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(33, 'Helal', 'Uddin', 'helal@hostingta.com', 'Helal@1234', '0182700987', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(34, 'Helal', 'Uddin', 'helal2@hostingta.com', 'Helal1234', '0187277231', '105/2, Sukrabad', 'dhaka'),
(35, 'Md Helal', 'Uddin', 'helal3@hostingta.com', 'Helal@1234', '0170417030', 'Dhaka', 'Dhaka'),
(36, 'Rahim', 'Mia', 'rahim@gmail.com', 'Rahim@1234', '0191288777', 'Kachua', 'Chandpur'),
(37, 'Ismail ', 'Mia', 'ismail@gmail.com', 'Ismail@1234', '0184304301', 'Dhaka', 'Dhaka'),
(38, 'Amena', 'Akter', 'amena@gmail.com', 'Amena@1234', '0170417030', 'Dhaka', 'Dhaka'),
(39, 'Zkaria', 'Mia', 'zakaria@yahoo.com', 'Zakaria@1234', '0170417030', 'Dhaka', 'Dhaka'),
(40, 'Mostafa Kamal', 'Patowary', 'mostafa@outlook.com', 'Mostafa@1234', '0170417030', 'Dhaka', 'Dhaka'),
(41, 'Rahmatulla Sharif Pathan ', 'Bepari', 'enghelaluddin@gmail.com', 'Rahman@1234', '0170417030', 'Dhaka', 'Dhaka'),
(42, 'Rahima ', 'Begum', 'rahima@rahima.com', 'Rahima@1234', '0170417030', 'Dhaka', 'Dhaka');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'Helal', 'Uddin', 'bs@cs.com', 'helal@123', '9876509876', 'dhaka', 'dhaka'),
(27, 'Boishakhi', 'Islam', 'boishakhi@gmail.com', '12345', '1234567', 'dh', 'dhaka'),
(28, 'Boishakhi', 'Islam', 'boishakhi@gmail.com', '12345', '0197186043', 'Dhaka', 'dhaka'),
(29, 'Forhad', 'Hossain', 'forhad@gmail.com', 'Forhad123', '1827009878', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka'),
(30, 'Nasrin ', 'Sultana', 'nasrin@gmail.com', 'Nasrin@1234', '0182700987', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(31, 'Helal', 'Uddin', 'helal@gmail.com', 'Helal@1234', '0182700987', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(32, 'Helal', 'Uddin', 'csehelal@outlook.com', 'Helal@1234', '0187277231', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(33, 'Helal', 'Uddin', 'helal@hostingta.com', 'Helal@1234', '0182700987', '105/2, Sukrabad, Dhanmondi, Dhaka', 'Dhaka'),
(34, 'Helal', 'Uddin', 'helal2@hostingta.com', 'Helal1234', '0187277231', '105/2, Sukrabad', 'dhaka'),
(35, 'Md Helal', 'Uddin', 'helal3@hostingta.com', 'Helal@1234', '0170417030', 'Dhaka', 'Dhaka'),
(36, 'Rahim', 'Mia', 'rahim@gmail.com', 'Rahim@1234', '0191288777', 'Kachua', 'Chandpur'),
(37, 'Ismail ', 'Mia', 'ismail@gmail.com', 'Ismail@1234', '0184304301', 'Dhaka', 'Dhaka'),
(38, 'Amena', 'Akter', 'amena@gmail.com', 'Amena@1234', '0170417030', 'Dhaka', 'Dhaka'),
(39, 'Zkaria', 'Mia', 'zakaria@yahoo.com', 'Zakaria@1234', '0170417030', 'Dhaka', 'Dhaka'),
(40, 'Mostafa Kamal', 'Patowary', 'mostafa@outlook.com', 'Mostafa@1234', '0170417030', 'Dhaka', 'Dhaka'),
(41, 'Rahmatulla Sharif Pathan ', 'Bepari', 'enghelaluddin@gmail.com', 'Rahman@1234', '0170417030', 'Dhaka', 'Dhaka'),
(42, 'Rahima ', 'Begum', 'rahima@rahima.com', 'Rahima@1234', '0170417030', 'Dhaka', 'Dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `r_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
