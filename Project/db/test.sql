-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 09:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `active_users`
--

CREATE TABLE `active_users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` int(11) NOT NULL,
  `license_key` varchar(255) DEFAULT NULL,
  `license_type` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `creation_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`id`, `license_key`, `license_type`, `user_role`, `creation_date`, `expiration_date`) VALUES
(1, 'Named001', 'named', 'ROLE_ADMIN', '2022-01-05', '2023-01-05'),
(2, 'con001', 'concurrent', 'ROLE_USER', '2022-01-05', '2023-01-08'),
(3, 'con002', 'concurrent', 'ROLE_USER', '2022-01-05', '2023-01-05'),
(4, 'con003', 'concurrent', 'ROLE_USER', '2022-01-05', '2022-01-05'),
(5, 'con004', 'concurrent', 'ROLE_USER', '2022-01-05', '2022-01-05'),
(6, 'con0055', 'concurrent', 'ROLE_USER', '2022-01-05', '2022-01-05'),
(7, 'con005599', 'concurrent', 'ROLE_USER', '2022-01-05', '2022-01-05'),
(8, 'con00LT_reader', 'concurrent', 'ROLE_READER', '2022-01-05', '2022-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `license_user`
--

CREATE TABLE `license_user` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `license_user`
--

INSERT INTO `license_user` (`id`, `license_id`, `user_id`, `status`) VALUES
(1, 1, 1, 0),
(2, 2, 5, 0),
(3, 2, 2, 0),
(4, 3, 4, 0),
(5, 3, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `named_licence_users`
--

CREATE TABLE `named_licence_users` (
  `id` int(11) NOT NULL,
  `repository_name` varchar(255) DEFAULT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `named_licence_users`
--

INSERT INTO `named_licence_users` (`id`, `repository_name`, `license_id`, `user_id`) VALUES
(1, 'Lambda Theta', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pools`
--

CREATE TABLE `pools` (
  `id` int(11) NOT NULL,
  `pool_name` varchar(255) NOT NULL,
  `role_type` varchar(255) NOT NULL,
  `repository_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pools`
--

INSERT INTO `pools` (`id`, `pool_name`, `role_type`, `repository_name`) VALUES
(24, 'pool1', 'ROLE_USER', 'Lambda Theta'),
(31, 'reader_pool', 'ROLE_READER', 'Lambda Theta');

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool1_active_users`
--

CREATE TABLE `pool_pool1_active_users` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool1_license`
--

CREATE TABLE `pool_pool1_license` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool_pool1_license`
--

INSERT INTO `pool_pool1_license` (`id`, `license_id`) VALUES
(1, 2),
(5, 3),
(3, 4),
(2, 5),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool1_users`
--

CREATE TABLE `pool_pool1_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool_pool1_users`
--

INSERT INTO `pool_pool1_users` (`id`, `user_id`) VALUES
(3, 1),
(1, 2),
(2, 5),
(4, 6),
(6, 8),
(5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `pool_reader_pool_active_users`
--

CREATE TABLE `pool_reader_pool_active_users` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pool_reader_pool_license`
--

CREATE TABLE `pool_reader_pool_license` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool_reader_pool_license`
--

INSERT INTO `pool_reader_pool_license` (`id`, `license_id`) VALUES
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pool_reader_pool_users`
--

CREATE TABLE `pool_reader_pool_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool_reader_pool_users`
--

INSERT INTO `pool_reader_pool_users` (`id`, `user_id`) VALUES
(1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `role_details`
--

CREATE TABLE `role_details` (
  `id` int(21) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `eaPortal` tinyint(1) NOT NULL,
  `import_export` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `userManagement` tinyint(1) NOT NULL,
  `userProfile` tinyint(1) NOT NULL,
  `elementCreate` tinyint(1) NOT NULL,
  `elementRead` tinyint(1) NOT NULL,
  `elementUpdate` tinyint(1) NOT NULL,
  `elementDelete` tinyint(1) NOT NULL,
  `relationshipCreate` tinyint(1) NOT NULL,
  `relationshipRead` tinyint(1) NOT NULL,
  `relationshipUpdate` tinyint(1) NOT NULL,
  `relationshipDelete` tinyint(1) NOT NULL,
  `connectorCreate` tinyint(1) NOT NULL,
  `connectorRead` tinyint(1) NOT NULL,
  `connectorUpdate` tinyint(1) NOT NULL,
  `connectorDelete` tinyint(1) NOT NULL,
  `modelFolderCreate` tinyint(1) NOT NULL,
  `catalogCreate` tinyint(1) NOT NULL,
  `catalogRead` tinyint(1) NOT NULL,
  `catalogUpdate` tinyint(1) NOT NULL,
  `catalogDelete` tinyint(1) NOT NULL,
  `matrixCreate` tinyint(1) NOT NULL,
  `matrixRead` tinyint(1) NOT NULL,
  `matrixUpdate` tinyint(1) NOT NULL,
  `matrixDelete` tinyint(1) NOT NULL,
  `graphCreate` tinyint(1) NOT NULL,
  `graphRead` tinyint(1) NOT NULL,
  `graphUpdate` tinyint(1) NOT NULL,
  `graphDelete` tinyint(1) NOT NULL,
  `userCreate` tinyint(1) NOT NULL,
  `userRead` tinyint(1) NOT NULL,
  `userUpdate` tinyint(1) NOT NULL,
  `userDelete` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `roleCreate` tinyint(1) NOT NULL,
  `roleRead` tinyint(1) NOT NULL,
  `roleUpdate` tinyint(1) NOT NULL,
  `roleDelete` tinyint(1) NOT NULL,
  `backup_restore` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_details`
--

INSERT INTO `role_details` (`id`, `user_role`, `company_name`, `eaPortal`, `import_export`, `admin`, `userManagement`, `userProfile`, `elementCreate`, `elementRead`, `elementUpdate`, `elementDelete`, `relationshipCreate`, `relationshipRead`, `relationshipUpdate`, `relationshipDelete`, `connectorCreate`, `connectorRead`, `connectorUpdate`, `connectorDelete`, `modelFolderCreate`, `catalogCreate`, `catalogRead`, `catalogUpdate`, `catalogDelete`, `matrixCreate`, `matrixRead`, `matrixUpdate`, `matrixDelete`, `graphCreate`, `graphRead`, `graphUpdate`, `graphDelete`, `userCreate`, `userRead`, `userUpdate`, `userDelete`, `import`, `export`, `roleCreate`, `roleRead`, `roleUpdate`, `roleDelete`, `backup_restore`) VALUES
(1, 'ROLE_READER', 'Lambda Theta', 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'ROLE_USER', 'Lambda Theta', 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(4, 'ROLE_ADMIN', 'Lambda Theta', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'ROLE_SUPER_ADMIN', 'Lambda Theta', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `metamodel_name` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `user_fullname` varchar(255) DEFAULT NULL,
  `cell_no` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `company_name`, `metamodel_name`, `user_type`, `password`, `enabled`, `user_fullname`, `cell_no`, `phone_no`, `extension`, `theme`) VALUES
(1, 'admin', 'aliyousuf11@hotmail.com', 'Lambda Theta', 'amf2_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, 'Syed Ali Yousuf', '03075388129', '03075388129', '1234', 'default'),
(2, 'admin1', 'ahsanshahid@gmail.com', 'Lambda Theta', 'amf2_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, 'Ahsan Shahid', '03075388129', '03075388129', '1234', 'default'),
(4, 'alex', NULL, 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, NULL, NULL, NULL, NULL, 'default'),
(5, 'ali', '', 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, '', '', '', '', 'default'),
(6, 'aliyousuf', 'ali@gmail.com', 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, NULL, NULL, NULL, NULL, 'default'),
(7, 'ali_admin', NULL, 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, NULL, NULL, NULL, NULL, 'default'),
(8, 'Arifsultan', 'lambdatheta123@gmail.com', 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$BP3ZPh3afgOqVs/o4yum/utfGy504wHfQvGGDZ7fQy2VxnQ06ySPW', 1, NULL, NULL, NULL, NULL, 'default'),
(9, 'hussain', 'husainahmed154@gmail.com', 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$XXZ.0T96xvgjCNIWKE0CZOh.lQ8irh4d7gp8zhOxWy3vYmt7kNTIq', 1, NULL, NULL, NULL, NULL, 'default'),
(10, 'kjh', NULL, 'Lambda Theta', NULL, 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, NULL, NULL, NULL, NULL, 'default'),
(11, 'newuser', 'new@gmail.com', 'Lambda Theta', NULL, 'EAXEE', '$2a$10$jDt7w.TwbwUnmI44imiXdOzhWGnniFfHG6SRdC88U7y0Lf3pWm8hG', 1, NULL, NULL, NULL, NULL, 'default'),
(12, 'new_admin', 'newadmin@gmail.com', 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$Pn085EfVZIevnHWXDddZtO2rK.R2Rv9.YzPlLRw1iaSP02utGTkuC', 1, NULL, NULL, NULL, NULL, 'default'),
(14, 'SahiNaam', 'arif@gmail.com', 'DHAkiCompany', NULL, 'EAXEE', '$2a$10$A4CySVh8OQvBGvnY7jHvU.NQlHIfJGHB/Ru0K70nWfwrnMj5B3c7m', 1, NULL, NULL, NULL, NULL, 'default'),
(15, 'superAdmin', NULL, 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, NULL, NULL, NULL, NULL, 'default'),
(16, 'umar', 'lambdatheta123@gmail.com', 'Hussain Enterprises', NULL, 'EAXEE', '$2a$10$RfrIP/M6W1KT0z3I4ckxput7jFpu8ISRfdW.JgZGydU7mceIVxtAS', 1, NULL, NULL, NULL, NULL, 'default'),
(17, 'reader', 'ahsanshahid@gmail.com', 'Lambda Theta', 'amf1_metamodel', 'EAXEE', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 1, 'Ahsan Shahid', '03075388129', '03075388129', '1234', 'default');

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
(6, 'admin', 'ROLE_ADMIN'),
(7, 'admin1', 'ROLE_ADMIN'),
(19, 'new_admin', 'ROLE_ADMIN'),
(5, 'reader', 'ROLE_READER'),
(20, 'superAdmin', 'ROLE_SUPER_ADMIN'),
(9, 'ahsan1', 'ROLE_USER'),
(4, 'ali', 'ROLE_USER'),
(17, 'aliyousuf', 'ROLE_USER'),
(16, 'Arifsultan', 'ROLE_USER'),
(10, 'newuser', 'ROLE_USER'),
(13, 'umar', 'ROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_user`
--
ALTER TABLE `license_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `named_licence_users`
--
ALTER TABLE `named_licence_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pools`
--
ALTER TABLE `pools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_pool1_active_users`
--
ALTER TABLE `pool_pool1_active_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_pool1_license`
--
ALTER TABLE `pool_pool1_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `pool_pool1_users`
--
ALTER TABLE `pool_pool1_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_reader_pool_active_users`
--
ALTER TABLE `pool_reader_pool_active_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_reader_pool_license`
--
ALTER TABLE `pool_reader_pool_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `pool_reader_pool_users`
--
ALTER TABLE `pool_reader_pool_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role_details`
--
ALTER TABLE `role_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `active_users`
--
ALTER TABLE `active_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `license_user`
--
ALTER TABLE `license_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `named_licence_users`
--
ALTER TABLE `named_licence_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pools`
--
ALTER TABLE `pools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pool_pool1_active_users`
--
ALTER TABLE `pool_pool1_active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool1_license`
--
ALTER TABLE `pool_pool1_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pool_pool1_users`
--
ALTER TABLE `pool_pool1_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pool_reader_pool_active_users`
--
ALTER TABLE `pool_reader_pool_active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_reader_pool_license`
--
ALTER TABLE `pool_reader_pool_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pool_reader_pool_users`
--
ALTER TABLE `pool_reader_pool_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_details`
--
ALTER TABLE `role_details`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `license_user`
--
ALTER TABLE `license_user`
  ADD CONSTRAINT `license_user_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `license_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `named_licence_users`
--
ALTER TABLE `named_licence_users`
  ADD CONSTRAINT `named_licence_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `named_licence_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_pool1_active_users`
--
ALTER TABLE `pool_pool1_active_users`
  ADD CONSTRAINT `pool_pool1_active_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `pool_pool1_active_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_pool1_license`
--
ALTER TABLE `pool_pool1_license`
  ADD CONSTRAINT `pool_pool1_license_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`);

--
-- Constraints for table `pool_pool1_users`
--
ALTER TABLE `pool_pool1_users`
  ADD CONSTRAINT `pool_pool1_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_reader_pool_active_users`
--
ALTER TABLE `pool_reader_pool_active_users`
  ADD CONSTRAINT `pool_reader_pool_active_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `pool_reader_pool_active_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_reader_pool_license`
--
ALTER TABLE `pool_reader_pool_license`
  ADD CONSTRAINT `pool_reader_pool_license_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`);

--
-- Constraints for table `pool_reader_pool_users`
--
ALTER TABLE `pool_reader_pool_users`
  ADD CONSTRAINT `pool_reader_pool_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
