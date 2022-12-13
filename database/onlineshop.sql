-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 01:32 PM
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
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kamal@kamal.com', NULL, NULL, 'Kamal Uddin', '15dc4019c63d977a26ae4d9e703f327f', '700c8b805a3e2a265b01c77614cd8b21', NULL, NULL);

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
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'motorolla'),
(5, 'LG'),
(6, 'Cloth Brand');

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
(9, 10, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(71, 61, '127.0.0.1', -1, 1),
(208, 64, '::1', 28, 1),
(225, 1, '::1', -1, 1),
(232, 2, '::1', 29, 1);

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
(7, 29, 2, 1, '07M47684BS5725065', 'Incompleted');

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
(7, 29, 'Forhad Hossain', 'forhad@gmail.com', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka', 'Dhaka', 123456, 'Monir Hossain', '4444 4444 4444 4444', '09/22', 2, 40000, 232);

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
(100, 7, 5, 1, 10000);

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
  `product_qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_ram`, `product_storage`, `product_title`, `product_price`, `product_old_price`, `product_desc`, `product_image`, `product_keywords`, `product_status`, `product_qty`) VALUES
(1, 1, 'Mens Item', 'Red', 'Small', 'Kids Yellow Shirt nice', ' 5000', '6000.00', 'Samsung galaxy s7 edge', '1653465480_pm11.jpg', 'samsung mobile electronics', 'Active', 12),
(2, 1, 'Womens Item', 'Blue', 'Large', 'Creative Head Phone', '25000', '700', 'iphone 5s', '1653461734_1653209980_girl-walking.jpg', 'mobile iphone apple', 'Active', 2),
(3, 4, 'Kids Item', 'Orange', 'Medium', 'Oppo A31', ' 30000', '11000', 'ipad apple brand', '1653462142_1653462030_kids-wear-for-boys-250x250.jpg', 'apple ipad tablet', 'Active', 0),
(4, 1, 'Kids Item', 'Green', 'Medium', 'iPhone 6s', '32000', '40000', 'Apple iPhone ', '1653440787_1653169803_1.0x0.jpg', 'iphone apple mobile', 'Active', 130),
(5, 1, 'Womens Item', 'Yellow', 'Large', 'New collection Pad Hot', '10000', '50000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653465766_1653463769_1653461930_Sk-Collection-Beige-Cotton-Ladies-SDL666450799-1-ff9d9.jpg', 'ipad tablet samsung', 'Active', 100),
(6, 1, 'Kids Item', 'Blue', 'Small', 'Kids Blue T Shirt Trendy', '35000', '50000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1653458119_1653209453_images.jpg', 'samsung laptop ', 'Active', 99),
(7, 1, 'Kids Item', 'Red', 'Small', 'Kids Yellow Shirt', '50000', ' 60000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1653458296_1.0x0.jpg', 'Laptop Hp Pavillion', 'Active', 45),
(8, 1, 'Kids Item', 'White', 'Large', 'New Baby Dress', '40000', '45000', 'Lorem ipsum dolor sit amet, consectetur, adipisicing elit. Voluptatum nam earum laborum quis, consectetur exercitationem ipsam optio enim, vitae amet a, repudiandae quia id iste. Odit, in, veritatis? Reprehenderit, dolores?', '1653457939_1653209453_images.jpg', 'sony mobile', 'Active', 47),
(9, 1, 'Kids Item', 'Green', 'Medium', 'Kids New Arrival Panjabi', '12000', '15000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1653458385_1653210298_download.jpg', 'iphone apple mobile', 'Active', 0),
(10, 5, 'Kids Item', 'Red', 'Large', 'Kids Blue T Shirt Trendy', '2500', ' 3000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1653458497_1653210518_GirlsClothing_Widgets.jpg', 'book shelf furniture', 'Active', 600),
(11, 6, 'Kids Item', 'White', 'Small', 'Kids Yellow Shirt', '6000', '7000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1653462062_image28.jpg', 'Vaccum Cleaner', 'Active', 200),
(12, 6, 'Kids Item', 'Blue', 'Medium', 'Ladies Thee Pics', '1500', '2000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, vitae necessitatibus quia unde debitis dolore aliquam eum suscipit dolores quae aliquid tempora ratione neque magni explicabo dicta doloribus fugit repellat?', '1653458575_1653209453_images.jpg', 'iron', 'Active', 170),
(13, 6, 'Mens Item', 'Green', 'Medium', 'LED TV', '20000', '8000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653459414_2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'led tv lg', 'Active', 300),
(14, 6, 'Mens Item', 'Blue', 'Large', 'Men Gap Pant', '3500', '5555', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653459702_41OJZebRUoL._SL246_SX190_CR0,0,190,246_.jpg', 'Microwave Oven', 'Active', 59),
(15, 6, 'Mens Item', 'Green', 'Large', 'Mixer Grinder', '2500', '11000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653460083_1653209001_a2.jpg', 'Mixer Grinder', 'Active', 23),
(16, 1, 'Mens Item', 'White', 'Medium', 'Samsung Galaxy Note 3', '10000', '11000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653460860_1653258528_dress_shirt_PNG.png', 'samsung galaxy Note 3 neo', 'Active', 87),
(17, 1, 'Mens Item', 'Blue', 'Large', 'Samsung Galaxy Note 3', '10000', '1000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461104_gents-formal-250x250.jpg', 'samsung galxaxy note 3 neo', 'Active', 78),
(18, 1, 'Mens Item', 'Green', 'Large', 'Mens Shirt', '250', '800', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461261_mm2.jpg', 'Headphones Sony', 'Active', 0),
(19, 1, 'Mens Item', 'Red', 'Small', 'Man Tall', '250', '11000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461353_pm2.jpg', 'Headphones Sony', 'Active', 65),
(20, 3, 'Mens Item', 'White', 'Medium', 'boys shirts', '299', '1000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461465_pm11.jpg', 'suit boys shirts', 'Active', 67),
(21, 3, 'Womens Item', 'Green', 'Medium', 'boys Jeans Pant', '550', '500', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653460140_7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'boys Jeans Pant', 'Active', 5),
(22, 3, 'Womens Item', 'White', 'Medium', 'boys Jeans Pant', '460', '800', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461539_Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'boys Jeans Pant', 'Active', 89),
(65, 3, 'Womens Item', 'Red', 'Medium', 'boys Jeans Pant', '470', '5555', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461636_red dress.jpg', 'boys Jeans Pant', 'Active', 700),
(66, 3, 'Womens Item', 'Red', 'Small', 'boys Jeans Pant', '480', '1000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653461704_shortname.jpg', 'boys Jeans Pant', 'Active', 40),
(67, 3, 'Womens Item', 'Red', 'Medium', 'Ladies big three pic', '360', '800', 'pants', '1653461930_Sk-Collection-Beige-Cotton-Ladies-SDL666450799-1-ff9d9.jpg', 'boys Jeans Pant', 'Active', 600),
(68, 3, 'Mens Item', 'Blue', 'Large', 'boys Jeans Pant', '550', '600', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653463207_pm3.jpg', 'boys Jeans Pant', 'Active', 50),
(69, 3, 'Womens Item', 'Green', 'Small', 'ladies Jeans Pant', '390', '400', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dolorem necessitatibus aspernatur ex voluptate, numquam iusto blanditiis pariatur. Sunt recusandae, libero voluptates labore deleniti dignissimos aliquid, repudiandae amet eius asperiores?', '1653463469_ldj.jpg', 'boys Jeans Pant', 'Active', 56),
(83, 0, 'Womens Item', 'Green', 'Medium', 'Kids Yellow Shirt', '300', '500', 'Crystal balls and clairvoyance: Future proofing in a world of inevitable change\r\nMake your open-source project public before you’re ready (Ep. 444)', '1653463575_ldg.jpg', '', 'Active', 78),
(84, 0, 'mens_imtem', 'Green', 'Medium', 'Kids Yellow Shirt', '300', '500', 'sfdsfdsf', '1653294501_1.0x0.jpg', '', 'Active', 0),
(85, 0, 'womens_item', 'Green', 'Medium', 'Boishakhi Dress', '5000', '15000', 'Dhaka', '1653294405_1.0x0.jpg', '', 'Active', 0),
(86, 0, 'mens_imtem', 'Red', 'Large', 'Hot Dress', ' 500', '1000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1653294433_1.0x0.jpg', '', 'Active', 0),
(87, 0, 'kids_item', 'Blue', 'Small', 'Indian Jacket', '500', '600', 'Chandpur is a hilsa area', '1653294414_1.0x0.jpg', '', 'active', 0),
(88, 0, 'kids_item', 'Green', 'Medium', 'Hot T Shirt', '900', '2000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1653209453_images.jpg', '', 'active', 0),
(89, 0, 'Kids Item', 'White', 'Small', 'Womens New Arrival Dry Special ', '9000', '11000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1653463900_1653209453_images.jpg', '', 'Active', 0),
(90, 0, 'Mens Item', 'Green', 'Medium', 'Kids New Arrival Panjabi', '800', '1000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1653463828_re3.jpg', '', 'Active', 654),
(91, 0, 'Womens Item', 'Blue', 'Small', 'Boishakhi Dress', '540', '700', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1653463769_1653461930_Sk-Collection-Beige-Cotton-Ladies-SDL666450799-1-ff9d9.jpg', '', 'Active', 45);

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
(29, 'Forhad', 'Hossain', 'forhad@gmail.com', 'Forhad123', '1827009878', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka');

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
(29, 'Forhad', 'Hossain', 'forhad@gmail.com', 'Forhad123', '1827009878', '105/2, Sukrabad, Dhanmondi, Dhaka', 'dhaka');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

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
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
