-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2017 at 11:20 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `pk_int_cart_id` int(11) NOT NULL,
  `fk_int_product_id` int(11) DEFAULT NULL,
  `fk_int_user_id` int(11) DEFAULT NULL,
  `date_date` date DEFAULT NULL,
  `int_total_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `pk_int_id` int(11) NOT NULL,
  `date_feedback_date` date DEFAULT NULL,
  `vchr_name` varchar(200) DEFAULT NULL,
  `vchr_email` varchar(200) DEFAULT NULL,
  `vchr_feedback` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `pk_int_purchase_id` int(11) NOT NULL,
  `fk_int_product_id` int(11) DEFAULT NULL,
  `int_items` int(11) DEFAULT NULL,
  `fk_int_user_id` int(11) DEFAULT NULL,
  `date_purchase_date` date DEFAULT NULL,
  `vchr_order_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `pk_int_cat_id` int(11) NOT NULL,
  `vchr_cat_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_details`
--

CREATE TABLE `tbl_product_details` (
  `pk_int_product_id` int(11) NOT NULL,
  `fk_int_cat_id` int(11) DEFAULT NULL,
  `vchr_product_name` varchar(200) DEFAULT NULL,
  `vchr_product_description` varchar(200) DEFAULT NULL,
  `vchr_price` varchar(200) DEFAULT NULL,
  `vchr_available` varchar(200) DEFAULT NULL,
  `date_add_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `pk_int_reg_id` int(11) NOT NULL,
  `vchr_firstname` varchar(200) DEFAULT NULL,
  `vchr_lastname` varchar(200) DEFAULT NULL,
  `vchr_username` varchar(200) DEFAULT NULL,
  `vchr_password` varchar(200) DEFAULT NULL,
  `varchar_gender` varchar(200) DEFAULT NULL,
  `vchr_address` varchar(200) DEFAULT NULL,
  `vchr_email` varchar(200) DEFAULT NULL,
  `int_phone_no` int(11) DEFAULT NULL,
  `date_dob` date DEFAULT NULL,
  `vchr_status` varchar(200) DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `pk_int_subcat_id` int(11) NOT NULL,
  `fk_int_product_cat_id` int(11) DEFAULT NULL,
  `vchr_subcat_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`pk_int_cart_id`),
  ADD KEY `fk_int_product_id` (`fk_int_product_id`),
  ADD KEY `fk_int_user_id` (`fk_int_user_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`pk_int_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`pk_int_purchase_id`),
  ADD KEY `fk_int_product_id` (`fk_int_product_id`),
  ADD KEY `fk_int_user_id` (`fk_int_user_id`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`pk_int_cat_id`);

--
-- Indexes for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  ADD PRIMARY KEY (`pk_int_product_id`),
  ADD KEY `fk_int_cat_id` (`fk_int_cat_id`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`pk_int_reg_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`pk_int_subcat_id`),
  ADD KEY `fk_int_product_cat_id` (`fk_int_product_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `pk_int_cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `pk_int_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `pk_int_purchase_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `pk_int_cat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  MODIFY `pk_int_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `pk_int_reg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `pk_int_subcat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`fk_int_product_id`) REFERENCES `tbl_product_details` (`pk_int_product_id`),
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`fk_int_user_id`) REFERENCES `tbl_signup` (`pk_int_reg_id`);

--
-- Constraints for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`fk_int_product_id`) REFERENCES `tbl_product_details` (`pk_int_product_id`),
  ADD CONSTRAINT `tbl_order_details_ibfk_2` FOREIGN KEY (`fk_int_user_id`) REFERENCES `tbl_signup` (`pk_int_reg_id`);

--
-- Constraints for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  ADD CONSTRAINT `tbl_product_details_ibfk_1` FOREIGN KEY (`fk_int_cat_id`) REFERENCES `tbl_product_category` (`pk_int_cat_id`);

--
-- Constraints for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD CONSTRAINT `tbl_subcategory_ibfk_1` FOREIGN KEY (`fk_int_product_cat_id`) REFERENCES `tbl_product_category` (`pk_int_cat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
