-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 02:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `metamodel_name` varchar(255) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `company_name`, `metamodel_name`, `password`, `enabled`) VALUES
('admin', NULL, 'Lambda Theta', 'amf1_metamodel', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1),
('ahsan', NULL, 'Ahsan_Company', 'amf2_metamodel', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1),
('ahsan1', NULL, 'Ahsan_Company', NULL, '$2a$10$y9IlZVOx0vTgFbDJCKOKEerRhnlWsp27tQh0bTGRDCFjb6WD86ovC', 1),
('alex', NULL, 'Lambda Theta', NULL, '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1),
('ali', NULL, 'Lambda Theta', NULL, '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1),
('aliyousuf', 'ali@gmail.com', 'Lambda Theta', 'amf2', '$2a$10$RAKJkEjdDII0.e5RC2/eJu5K8y3H8d3reP79taxIZD28/fc4/bgy.', 1),
('ali_admin', NULL, 'Lambda Theta', NULL, '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1),
('Arifsultan', 'lambdatheta123@gmail.com', 'DHAkiCompany', NULL, '$2a$10$BP3ZPh3afgOqVs/o4yum/utfGy504wHfQvGGDZ7fQy2VxnQ06ySPW', 1),
('hussain', 'husainahmed154@gmail.com', 'Hussain Enterprises', NULL, '$2a$10$XXZ.0T96xvgjCNIWKE0CZOh.lQ8irh4d7gp8zhOxWy3vYmt7kNTIq', 1),
('kjh', NULL, 'Lambda Theta', NULL, '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1),
('newuser', 'new@gmail.com', 'Lambda Theta', NULL, '$2a$10$jDt7w.TwbwUnmI44imiXdOzhWGnniFfHG6SRdC88U7y0Lf3pWm8hG', 1),
('new_admin', 'newadmin@gmail.com', 'Lambda Theta', 'amf1_metamodel', '$2a$10$Pn085EfVZIevnHWXDddZtO2rK.R2Rv9.YzPlLRw1iaSP02utGTkuC', 1),
('SahiNaam', 'arif@gmail.com', 'DHAkiCompany', NULL, '$2a$10$A4CySVh8OQvBGvnY7jHvU.NQlHIfJGHB/Ru0K70nWfwrnMj5B3c7m', 1),
('umar', 'lambdatheta123@gmail.com', 'Hussain Enterprises', NULL, '$2a$10$RfrIP/M6W1KT0z3I4ckxput7jFpu8ISRfdW.JgZGydU7mceIVxtAS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `username`, `role`) VALUES
(8, 'kjh', 'kk'),
(6, 'admin', 'ROLE_ADMIN'),
(5, 'ali_admin', 'ROLE_ADMIN'),
(7, 'ahsan', 'ROLE_USER'),
(9, 'ahsan1', 'ROLE_USER'),
(3, 'alex', 'ROLE_USER'),
(4, 'ali', 'ROLE_USER'),
(17, 'aliyousuf', 'ROLE_USER'),
(16, 'Arifsultan', 'ROLE_USER'),
(12, 'hussain', 'ROLE_USER'),
(10, 'newuser', 'ROLE_USER'),
(19, 'new_admin', 'ROLE_USER'),
(14, 'SahiNaam', 'ROLE_USER'),
(13, 'umar', 'ROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `uni_username_role` (`role`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
