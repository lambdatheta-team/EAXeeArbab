-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 08:58 AM
-- Server version: 10.4.22-MariaDB
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
-- Database: `eeatool`
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
-- Table structure for table `backup_databases`
--

CREATE TABLE `backup_databases` (
  `id` int(11) NOT NULL,
  `backupDate` text NOT NULL,
  `company_name` text NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `backup_databases`
--

INSERT INTO `backup_databases` (`id`, `backupDate`, `company_name`, `username`) VALUES
(1, '2022_07_23__11_50_15', 'MIM', 'umerkhan');

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
(12, 'conFN5GNHjEZUbhdZxX001', 'concurrent', 'ROLE_ADMIN', '2022-05-10', '2075-01-05'),
(13, 'conxSugIKQNb2aeLhEX002', 'concurrent', 'ROLE_USER', '2022-05-10', '2075-01-05'),
(14, 'conq6QhOkQw8x88wQUh003', 'concurrent', 'ROLE_USER', '2022-05-10', '2075-01-05'),
(15, 'conUegglegvbb9UzMlZ004', 'concurrent', 'ROLE_USER', '2022-05-10', '2075-01-05'),
(16, 'conKimrdH1KVOQhSSs8005', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(17, 'conFAUyLzmUl8YzV3ub006', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(18, 'conerrHiTUUxIKkKLOq007', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(19, 'conHXUI1OVSXsRXWDUi008', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(20, 'conWG0t3tnTCO4oIPI0009', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(21, 'conColK5I5if8V1YhEM010', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(22, 'cony1MaROae9hikrwp0011', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(23, 'conQgbRnTY1fQeLQx40012', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(24, 'conFf7A5TJercvCiNo0013', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(25, 'conltC81G1oZOheHG90014', 'concurrent', 'ROLE_ORGANIZATION_PORTAL', '2022-05-10', '2075-01-05'),
(26, 'TempNamed002', 'named', 'ROLE_ADMIN', '2022-01-05', '2023-01-05'),
(27, 'TempNamed003', 'named', 'ROLE_ADMIN', '2022-01-05', '2023-01-05'),
(28, 'TempNamed001', 'named', 'ROLE_ADMIN', '2022-01-05', '2023-01-05'),
(29, 'TempNamed004', 'named', 'ROLE_ADMIN', '2022-01-05', '2023-01-05');

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
(73, 'MIM', 26, 1630),
(80, 'MIM', 1, 1657),
(81, 'MIM', 27, 1627);

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
(6, 'Pool2', 'ROLE_ADMIN', 'MIM'),
(11, 'Manual_Pool', 'ROLE_USER', 'MIM'),
(12, 'Sample_Pool', 'ROLE_ORGANIZATION_PORTAL', 'MIM'),
(13, 'Pool1', 'ROLE_ADMIN', 'MIM');

-- --------------------------------------------------------

--
-- Table structure for table `pool_manual_pool_active_users`
--

CREATE TABLE `pool_manual_pool_active_users` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_manual_pool_license`
--

CREATE TABLE `pool_manual_pool_license` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_manual_pool_users`
--

CREATE TABLE `pool_manual_pool_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool1_active_users`
--

CREATE TABLE `pool_pool1_active_users` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool1_license`
--

CREATE TABLE `pool_pool1_license` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool1_users`
--

CREATE TABLE `pool_pool1_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool2_active_users`
--

CREATE TABLE `pool_pool2_active_users` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool2_license`
--

CREATE TABLE `pool_pool2_license` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_pool2_users`
--

CREATE TABLE `pool_pool2_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_sample_pool_active_users`
--

CREATE TABLE `pool_sample_pool_active_users` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_sample_pool_license`
--

CREATE TABLE `pool_sample_pool_license` (
  `id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pool_sample_pool_users`
--

CREATE TABLE `pool_sample_pool_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `organizationalPortal` tinyint(1) NOT NULL,
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

INSERT INTO `role_details` (`id`, `user_role`, `company_name`, `eaPortal`, `import_export`, `admin`, `userManagement`, `userProfile`, `organizationalPortal`, `elementCreate`, `elementRead`, `elementUpdate`, `elementDelete`, `relationshipCreate`, `relationshipRead`, `relationshipUpdate`, `relationshipDelete`, `connectorCreate`, `connectorRead`, `connectorUpdate`, `connectorDelete`, `modelFolderCreate`, `catalogCreate`, `catalogRead`, `catalogUpdate`, `catalogDelete`, `matrixCreate`, `matrixRead`, `matrixUpdate`, `matrixDelete`, `graphCreate`, `graphRead`, `graphUpdate`, `graphDelete`, `userCreate`, `userRead`, `userUpdate`, `userDelete`, `import`, `export`, `roleCreate`, `roleRead`, `roleUpdate`, `roleDelete`, `backup_restore`) VALUES
(1, 'ROLE_READER', 'MIM', 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'ROLE_USER', 'MIM', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(4, 'ROLE_ADMIN', 'MIM', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(5, 'ROLE_SUPER_ADMIN', 'MIM', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'ROLE_ORGANIZATION_PORTAL', 'MIM', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
  `theme` varchar(255) NOT NULL DEFAULT 'default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `activePoolDetails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `company_name`, `metamodel_name`, `user_type`, `password`, `enabled`, `user_fullname`, `cell_no`, `phone_no`, `extension`, `theme`, `status`, `activePoolDetails`) VALUES
(1627, 'admin', 'info@mim.gov.sa', 'MIM', 'mim_metamodel', 'EAXEE', '$2a$10$Alf76GYLYKAnzPckqyrqdOb1QDg0aHPH8CS3y8VFf5Un.1OMba/O.', 1, 'MIM Admin', '', '', '', 'default', 1, NULL),
(1630, 'umerkhan', 'umerkhan@gmail.com', 'MIM', 'mim_metamodel', 'EAXEE', '$2a$10$EArHGnabSI4pVIYd4UFZ3enn109ttrtOyesQWvySr83wUh8S9v9mm', 1, 'umer', '', '', '', 'default', 0, NULL),
(1643, 'ZAP', 'foo-bar@example.com', 'ZAP', 'null_metamodel', NULL, '$2a$10$eXx2vxZLc/tCHCGoC12dhuLrhuNJgobkRndm4woA1iX1DPj0.rQjS', 1, NULL, NULL, NULL, NULL, 'default', 0, NULL),
(1657, 'ahsan', 'ahsanshahid@gmail.com', 'MIM', 'mim_metamodel', 'EAXEE', '$2a$10$U3ZGXi46dGnzCXSeYgsnE.9/wjbmL4NmrcLj4umzlfiiaTyAdq3pu', 1, 'Ahsan', NULL, NULL, NULL, 'default', 0, NULL);

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
(1628, 'admin', 'ROLE_ADMIN'),
(1658, 'ahsan', 'ROLE_ADMIN'),
(1631, 'umerkhan', 'ROLE_USER'),
(1644, 'ZAP', 'ROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_databases`
--
ALTER TABLE `backup_databases`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `backup_databases` ADD FULLTEXT KEY `backupDate` (`backupDate`);
ALTER TABLE `backup_databases` ADD FULLTEXT KEY `company_name` (`company_name`);
ALTER TABLE `backup_databases` ADD FULLTEXT KEY `username` (`username`);

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
-- Indexes for table `pool_manual_pool_active_users`
--
ALTER TABLE `pool_manual_pool_active_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_manual_pool_license`
--
ALTER TABLE `pool_manual_pool_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `pool_manual_pool_users`
--
ALTER TABLE `pool_manual_pool_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `pool_pool2_active_users`
--
ALTER TABLE `pool_pool2_active_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_pool2_license`
--
ALTER TABLE `pool_pool2_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `pool_pool2_users`
--
ALTER TABLE `pool_pool2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_sample_pool_active_users`
--
ALTER TABLE `pool_sample_pool_active_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pool_sample_pool_license`
--
ALTER TABLE `pool_sample_pool_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `pool_sample_pool_users`
--
ALTER TABLE `pool_sample_pool_users`
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
-- AUTO_INCREMENT for table `backup_databases`
--
ALTER TABLE `backup_databases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `license_user`
--
ALTER TABLE `license_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `named_licence_users`
--
ALTER TABLE `named_licence_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `pools`
--
ALTER TABLE `pools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pool_manual_pool_active_users`
--
ALTER TABLE `pool_manual_pool_active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_manual_pool_license`
--
ALTER TABLE `pool_manual_pool_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_manual_pool_users`
--
ALTER TABLE `pool_manual_pool_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool1_active_users`
--
ALTER TABLE `pool_pool1_active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool1_license`
--
ALTER TABLE `pool_pool1_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool1_users`
--
ALTER TABLE `pool_pool1_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool2_active_users`
--
ALTER TABLE `pool_pool2_active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool2_license`
--
ALTER TABLE `pool_pool2_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_pool2_users`
--
ALTER TABLE `pool_pool2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_sample_pool_active_users`
--
ALTER TABLE `pool_sample_pool_active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_sample_pool_license`
--
ALTER TABLE `pool_sample_pool_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_sample_pool_users`
--
ALTER TABLE `pool_sample_pool_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_details`
--
ALTER TABLE `role_details`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1658;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1659;

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
-- Constraints for table `pool_manual_pool_active_users`
--
ALTER TABLE `pool_manual_pool_active_users`
  ADD CONSTRAINT `pool_Manual_Pool_active_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `pool_Manual_Pool_active_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_manual_pool_license`
--
ALTER TABLE `pool_manual_pool_license`
  ADD CONSTRAINT `pool_Manual_Pool_license_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`);

--
-- Constraints for table `pool_manual_pool_users`
--
ALTER TABLE `pool_manual_pool_users`
  ADD CONSTRAINT `pool_Manual_Pool_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_pool1_active_users`
--
ALTER TABLE `pool_pool1_active_users`
  ADD CONSTRAINT `pool_Pool1_active_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `pool_Pool1_active_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_pool1_license`
--
ALTER TABLE `pool_pool1_license`
  ADD CONSTRAINT `pool_Pool1_license_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`);

--
-- Constraints for table `pool_pool1_users`
--
ALTER TABLE `pool_pool1_users`
  ADD CONSTRAINT `pool_Pool1_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_pool2_active_users`
--
ALTER TABLE `pool_pool2_active_users`
  ADD CONSTRAINT `pool_Pool2_active_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `pool_Pool2_active_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_pool2_license`
--
ALTER TABLE `pool_pool2_license`
  ADD CONSTRAINT `pool_Pool2_license_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`);

--
-- Constraints for table `pool_pool2_users`
--
ALTER TABLE `pool_pool2_users`
  ADD CONSTRAINT `pool_Pool2_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_sample_pool_active_users`
--
ALTER TABLE `pool_sample_pool_active_users`
  ADD CONSTRAINT `pool_Sample_Pool_active_users_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`),
  ADD CONSTRAINT `pool_Sample_Pool_active_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pool_sample_pool_license`
--
ALTER TABLE `pool_sample_pool_license`
  ADD CONSTRAINT `pool_Sample_Pool_license_ibfk_1` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`);

--
-- Constraints for table `pool_sample_pool_users`
--
ALTER TABLE `pool_sample_pool_users`
  ADD CONSTRAINT `pool_Sample_Pool_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
