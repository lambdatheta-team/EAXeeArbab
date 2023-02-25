-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 12:57 PM
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
-- Database: `fordemo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_010` text,
  `ATT_011` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_010` text,
  `ATT_011` text,
  `ATT_064` text,
  `ATT_067` text,
  `ATT_070` text,
  `ATT_072` text,
  `ATT_081` text,
  `ATT_083` text,
  `ATT_084` text,
  `ATT_085` text,
  `ATT_086` date DEFAULT NULL,
  `ATT_087` time DEFAULT NULL,
  `ATT_088` text,
  `ATT_089` text,
  `ATT_090` text,
  `ATT_091` text,
  `ATT_092` date DEFAULT NULL,
  `ATT_093` text,
  `ATT_094` text,
  `ATT_095` text,
  `ATT_096` text,
  `ATT_097` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aggregation`
--

CREATE TABLE `aggregation` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `application_component`
--

CREATE TABLE `application_component` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_010` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_028` text,
  `ATT_030` text,
  `ATT_033` text,
  `ATT_036` text,
  `ATT_039` text,
  `ATT_041` text,
  `ATT_044` text,
  `ATT_047` text,
  `ATT_049` text,
  `ATT_052` text,
  `ATT_054` text,
  `ATT_056` text,
  `ATT_058` text,
  `ATT_059` text,
  `ATT_060` text,
  `ATT_061` date DEFAULT NULL,
  `ATT_062` date DEFAULT NULL,
  `ATT_065` text,
  `ATT_066` text,
  `ATT_067` text,
  `ATT_068` date DEFAULT NULL,
  `ATT_069` time DEFAULT NULL,
  `ATT_070` text,
  `ATT_071` text,
  `ATT_072` text,
  `ATT_073` text,
  `ATT_074` date DEFAULT NULL,
  `ATT_075` text,
  `ATT_076` text,
  `ATT_077` text,
  `ATT_078` text,
  `ATT_079` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `application_function`
--

CREATE TABLE `application_function` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_013` text,
  `ATT_016` text,
  `ATT_019` text,
  `ATT_022` text,
  `ATT_025` text,
  `ATT_027` text,
  `ATT_029` text,
  `ATT_031` text,
  `ATT_032` text,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` date DEFAULT NULL,
  `ATT_036` time DEFAULT NULL,
  `ATT_037` text,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` date DEFAULT NULL,
  `ATT_042` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `application_interface`
--

CREATE TABLE `application_interface` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_016` text,
  `ATT_018` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_028` text,
  `ATT_030` text,
  `ATT_031` text,
  `ATT_032` text,
  `ATT_033` text,
  `ATT_034` date DEFAULT NULL,
  `ATT_035` time DEFAULT NULL,
  `ATT_036` text,
  `ATT_037` text,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` date DEFAULT NULL,
  `ATT_041` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `application_service`
--

CREATE TABLE `application_service` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_016` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_028` text,
  `ATT_030` text,
  `ATT_032` text,
  `ATT_034` text,
  `ATT_037` text,
  `ATT_040` text,
  `ATT_043` text,
  `ATT_045` text,
  `ATT_047` text,
  `ATT_049` text,
  `ATT_051` text,
  `ATT_053` text,
  `ATT_055` text,
  `ATT_057` text,
  `ATT_058` text,
  `ATT_059` text,
  `ATT_060` date DEFAULT NULL,
  `ATT_061` date DEFAULT NULL,
  `ATT_064` text,
  `ATT_067` text,
  `ATT_068` text,
  `ATT_069` text,
  `ATT_070` date DEFAULT NULL,
  `ATT_071` time DEFAULT NULL,
  `ATT_072` text,
  `ATT_073` text,
  `ATT_074` text,
  `ATT_075` text,
  `ATT_076` date DEFAULT NULL,
  `ATT_077` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `architecture_state`
--

CREATE TABLE `architecture_state` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_011` text,
  `ATT_016` text,
  `ATT_022` text,
  `ATT_025` text,
  `ATT_028` text,
  `ATT_033` text,
  `ATT_035` text,
  `ATT_036` text,
  `ATT_037` text,
  `ATT_038` date DEFAULT NULL,
  `ATT_039` time DEFAULT NULL,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` text,
  `ATT_043` text,
  `ATT_044` date DEFAULT NULL,
  `ATT_045` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `association`
--

CREATE TABLE `association` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attributes_information`
--

CREATE TABLE `attributes_information` (
  `id` int(10) NOT NULL,
  `Element_Name` text,
  `Attribute_Type` text,
  `Target_Rel_Element` text,
  `Source_Rel_Element` text,
  `Self_Generated_Attribute` text,
  `Actual_Attribute` text,
  `Is_Grouped` text,
  `Group_Style` text,
  `Group_Caption` text,
  `Attribute_Format` text,
  `Page_Number` text,
  `Page_Title` text,
  `Is_Page_Grouped` text,
  `Group_Page_Title` text,
  `Group_Page_ID` text,
  `Allowable_Values` text,
  `Attribute_Tip` text,
  `Bidirection_Relationship_Pair` text,
  `Single_or_Multiple` text,
  `Maximum_Number_of_Object_Occurrence` text,
  `Relationship` text,
  `Relationship_Overload_Text` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes_information`
--

INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(2, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(3, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(4, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;System;Module', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(5, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(6, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Architecture Pattern', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Layered (n-tier);Client-Server;Master-Slave;Pipe-Filter;Peer-to-Peer;Model-View-Controller;Blackboard;Interpreter;Event-Driven;Microkernel;Microservices;Space-Based;Single Page Application (SPA);Serverless;', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(7, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Introduction Method', 'Yes', 'Simple', 'Introduction', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Buy;Outsourced Development;Inhouse Development;Free;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(8, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Introduction Method Note', 'Yes', 'Simple', 'Introduction', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(9, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(10, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(11, 'Application_Component', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Business Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00001', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(12, 'Application_Component', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00002', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-02-02 11:53:03'),
(13, 'Application_Component', 'Relationship', 'N/A', 'Actor', 'ATT_013', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00003', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-02-02 11:53:03'),
(14, 'Application_Component', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_014', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00004', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(15, 'Application_Component', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_015', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00005', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(16, 'Application_Component', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_016', 'Customer Organization Unit(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00006', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(17, 'Application_Component', 'Relationship', 'Domain', 'N/A', 'ATT_017', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00007', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(18, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(19, 'Application_Component', 'Relationship', 'Service_Contract', 'N/A', 'ATT_019', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00202', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(20, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(21, 'Application_Component', 'Relationship', 'N/A', 'Principle', 'ATT_021', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00008', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(22, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(23, 'Application_Component', 'Relationship', 'N/A', 'Standard', 'ATT_023', 'Associated Standards', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00009', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(24, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(25, 'Application_Component', 'Relationship', 'N/A', 'Risk', 'ATT_025', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00010', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(26, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(27, 'Application_Component', 'Relationship', 'Application_Function', 'N/A', 'ATT_027', 'Realized Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Application Functions/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00011', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(28, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Application Functions', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Application Functions/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(29, 'Application_Component', 'Relationship', 'Application_Service', 'N/A', 'ATT_029', 'Realized Application Services', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Application Functions/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00012', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(30, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Remarks on Application Services', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Application Functions/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(31, 'Application_Component', 'Relationship', 'Application_Component', 'N/A', 'ATT_031', 'Composed of Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00013', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(32, 'Application_Component', 'Relationship', 'N/A', 'Application_Component', 'ATT_032', 'Part of Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00013', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(33, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Remarks on Application Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(34, 'Application_Component', 'Relationship', 'Application_Component', 'N/A', 'ATT_034', 'Aggregates Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00014', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(35, 'Application_Component', 'Relationship', 'N/A', 'Application_Component', 'ATT_035', 'Aggregated by Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00014', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(36, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Remarks on Application Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(37, 'Application_Component', 'Relationship', 'Application_Component', 'N/A', 'ATT_037', 'Specialized Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00015', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(38, 'Application_Component', 'Relationship', 'N/A', 'Application_Component', 'ATT_038', 'Specialized by Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00015', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(39, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Remarks on Application Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(40, 'Application_Component', 'Relationship', 'Data_Object', 'N/A', 'ATT_040', 'Accessed Data Items', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00016', 'Multiple', 'Unlimited', 'Access', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(41, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Remarks on Data Items', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(42, 'Application_Component', 'Relationship', 'Application_Interface', 'N/A', 'ATT_042', 'Provided Interfaces', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Interfaces/Information Flow', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00017', 'Multiple', 'Unlimited', 'Realization', 'Provides', '1', NULL, '2022-02-02 11:53:03'),
(43, 'Application_Component', 'Relationship', 'N/A', 'Application_Interface', 'ATT_043', 'Utilized Interfaces', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Interfaces/Information Flow', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00018', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(44, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Remarks on Application Interface', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Interfaces/Information Flow', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(45, 'Application_Component', 'Relationship', 'Application_Component', 'N/A', 'ATT_045', 'Information Flows to', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Interfaces/Information Flow', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00019', 'Multiple', 'Unlimited', 'Flow', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(46, 'Application_Component', 'Relationship', 'N/A', 'Application_Component', 'ATT_046', 'Information Flows From', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Interfaces/Information Flow', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00019', 'Multiple', 'Unlimited', 'Flow', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(47, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Information Flow', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Interfaces/Information Flow', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(48, 'Application_Component', 'Relationship', 'N/A', 'Technology_Product', 'ATT_048', 'Utilized Technologies', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00020', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(49, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Remarks on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(50, 'Application_Component', 'Relationship', 'N/A', 'Technology_Node', 'ATT_050', 'Utilized Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00021', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(51, 'Application_Component', 'Relationship', 'Technology_Node', 'N/A', 'ATT_051', 'Deployed On Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00336', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-02-02 11:53:03'),
(52, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Remarks on Technology Nodes', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(53, 'Application_Component', 'Relationship', 'Requirement', 'N/A', 'ATT_053', 'Realized Requirements', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00022', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(54, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(55, 'Application_Component', 'Relationship', 'N/A', 'Gap', 'ATT_055', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00023', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(56, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_056', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(57, 'Application_Component', 'Relationship', 'N/A', 'Architecture_State', 'ATT_057', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00024', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(58, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_058', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(59, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_059', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(60, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_060', 'Lifecycle State', 'No', 'N/A', 'N/A', 'List', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Draft;Design;Under Development;In Production;Decommissioned;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(61, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_061', 'Date of Production', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(62, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_062', 'Date of Decommission', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(63, 'Application_Component', 'Relationship', 'Application_Component', 'N/A', 'ATT_063', 'Replaced Application Components', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00025', 'Multiple', 'Unlimited', 'Association', 'Replaces', '1', NULL, '2022-02-02 11:53:03'),
(64, 'Application_Component', 'Relationship', 'N/A', 'Application_Component', 'ATT_064', 'Replaced by Application Components', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00025', 'Multiple', 'Unlimited', 'Association', 'Replaced by', '1', NULL, '2022-02-02 11:53:03'),
(65, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_065', 'Remarks on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(66, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_066', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(67, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_067', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(68, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_068', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(69, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_069', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(70, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_070', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(71, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_071', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(72, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_072', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(73, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_073', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(74, 'Application_Component', 'System', 'N/A', 'N/A', 'ATT_074', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(75, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_075', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(76, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_076', 'Serial Number', 'Yes', 'Tabular', 'Attachment(s)', 'Number', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(77, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_077', 'File Name', 'Yes', 'Tabular', 'Attachment(s)', 'Text', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(78, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_078', 'Note', 'Yes', 'Tabular', 'Attachment(s)', 'Rich Text', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(79, 'Application_Component', 'Primary', 'N/A', 'N/A', 'ATT_079', 'Display as Icon', 'No', 'N/A', 'N/A', 'CheckBox', '13.0', 'Appearance', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(80, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(81, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(82, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(83, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Data Interface;Internal Service Interface;External Service Interface;User Experience Interface;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(84, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(85, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(86, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(87, 'Application_Interface', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00147', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(88, 'Application_Interface', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00148', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-02-02 11:53:03'),
(89, 'Application_Interface', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00149', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-02-02 11:53:03'),
(90, 'Application_Interface', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00150', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(91, 'Application_Interface', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00151', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(92, 'Application_Interface', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00152', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(93, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(94, 'Application_Interface', 'Relationship', 'N/A', 'Principle', 'ATT_015', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00153', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(95, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(96, 'Application_Interface', 'Relationship', 'N/A', 'Risk', 'ATT_017', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00154', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(97, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(98, 'Application_Interface', 'Relationship', 'N/A', 'Application_Component', 'ATT_019', 'Provided by Application Component', 'Yes', 'Shared', 'Provided by Application Objects', 'Object', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00017', 'Multiple', 'Unlimited', 'Realization', 'Provided by', '1', NULL, '2022-02-02 11:53:03'),
(99, 'Application_Interface', 'Relationship', 'N/A', 'Application_Service', 'ATT_020', 'Provided by Application Service', 'Yes', 'Shared', 'Provided by Application Objects', 'Object', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00141', 'Multiple', 'Unlimited', 'Realization', 'Provided by', '1', NULL, '2022-02-02 11:53:03'),
(100, 'Application_Interface', 'Relationship', 'Application_Component', 'N/A', 'ATT_021', 'Utilized by Application Components', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00018', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(101, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Applications', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(102, 'Application_Interface', 'Relationship', 'Data_Object', 'N/A', 'ATT_023', 'Data Objects Exchanged', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00155', 'Multiple', 'Unlimited', 'Association', 'Exchanges', '1', NULL, '2022-02-02 11:53:03'),
(103, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Data Objects', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(104, 'Application_Interface', 'Relationship', 'Requirement', 'N/A', 'ATT_025', 'Realized Requirements', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00156', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(105, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(106, 'Application_Interface', 'Relationship', 'N/A', 'Gap', 'ATT_027', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00157', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(107, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(108, 'Application_Interface', 'Relationship', 'N/A', 'Architecture_State', 'ATT_029', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00158', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(109, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(110, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(111, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_032', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(112, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_033', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(113, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_034', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(114, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_035', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(115, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_036', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(116, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_037', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(117, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_038', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(118, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_039', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(119, 'Application_Interface', 'System', 'N/A', 'N/A', 'ATT_040', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(120, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(121, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(122, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(123, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(124, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(125, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(126, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(127, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(128, 'Application_Function', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00164', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(129, 'Application_Function', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00165', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(130, 'Application_Function', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00166', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(131, 'Application_Function', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00167', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(132, 'Application_Function', 'Relationship', 'Domain', 'N/A', 'ATT_012', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00168', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(133, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(134, 'Application_Function', 'Relationship', 'N/A', 'Application_Component', 'ATT_014', 'Realized by Application Components', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00011', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(135, 'Application_Function', 'Relationship', 'Application_Service', 'N/A', 'ATT_015', 'Realizes Application Service', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00133', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(136, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(137, 'Application_Function', 'Relationship', 'Application_Function', 'N/A', 'ATT_017', 'Composed of Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00159', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(138, 'Application_Function', 'Relationship', 'N/A', 'Application_Function', 'ATT_018', 'Part of Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00159', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(139, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(140, 'Application_Function', 'Relationship', 'Application_Function', 'N/A', 'ATT_020', 'Aggregates Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00160', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(141, 'Application_Function', 'Relationship', 'N/A', 'Application_Function', 'ATT_021', 'Aggregated by Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00160', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(142, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(143, 'Application_Function', 'Relationship', 'Application_Function', 'N/A', 'ATT_023', 'Specializes Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00161', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(144, 'Application_Function', 'Relationship', 'N/A', 'Application_Function', 'ATT_024', 'Specialized by Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00161', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(145, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Remarks on Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(146, 'Application_Function', 'Relationship', 'N/A', 'Risk', 'ATT_026', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00335', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(147, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(148, 'Application_Function', 'Relationship', 'N/A', 'Gap', 'ATT_028', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00162', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(149, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(150, 'Application_Function', 'Relationship', 'N/A', 'Architecture_State', 'ATT_030', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00163', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(151, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(152, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(153, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_033', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(154, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_034', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(155, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_035', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(156, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_036', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(157, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_037', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(158, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_038', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(159, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_039', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(160, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_040', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(161, 'Application_Function', 'System', 'N/A', 'N/A', 'ATT_041', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(162, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(163, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(164, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(165, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(166, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Business Application Service;Integration Service;Interaction Service;Web Service;Cloud Service;Data Service;Access Service;Adaptor Service;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(167, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(168, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Service Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Design;Under Development;Being Changed;Operational;Non-Operational;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(169, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Introduction Method', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;InSourced; OutSourced', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(170, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(171, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(172, 'Application_Service', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Business Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00124', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(173, 'Application_Service', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00125', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-02-02 11:53:03'),
(174, 'Application_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00126', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(175, 'Application_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00127', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(176, 'Application_Service', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_014', 'Customer Organization Unit(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00128', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(177, 'Application_Service', 'Relationship', 'Domain', 'N/A', 'ATT_015', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00129', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(178, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(179, 'Application_Service', 'Relationship', 'Service_Contract', 'N/A', 'ATT_017', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00203', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(180, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(181, 'Application_Service', 'Relationship', 'N/A', 'Principle', 'ATT_019', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00130', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(182, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(183, 'Application_Service', 'Relationship', 'N/A', 'Standard', 'ATT_021', 'Associated Standards', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00131', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(184, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(185, 'Application_Service', 'Relationship', 'N/A', 'Risk', 'ATT_023', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00132', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(186, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(187, 'Application_Service', 'Relationship', 'Business_Process', 'N/A', 'ATT_025', 'Served Business Processes', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00120', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(188, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Business Processes', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(189, 'Application_Service', 'Relationship', 'Business_Capability', 'N/A', 'ATT_027', 'Served Business Capabilities', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00121', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(190, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Business Capabilities', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(191, 'Application_Service', 'Relationship', 'Business_Function', 'N/A', 'ATT_029', 'Served Business Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00182', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(192, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Remarks on Business Functions', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(193, 'Application_Service', 'Relationship', 'N/A', 'Application_Function', 'ATT_031', 'Realized by Application Functions', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00133', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(194, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Application Functions', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(195, 'Application_Service', 'Relationship', 'N/A', 'Application_Component', 'ATT_033', 'Realized by Application Components', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00012', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(196, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Application Components', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(197, 'Application_Service', 'Relationship', 'Application_Service', 'N/A', 'ATT_035', 'Composed of Application Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00134', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(198, 'Application_Service', 'Relationship', 'N/A', 'Application_Service', 'ATT_036', 'Part of Application Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00134', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(199, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Service Composition', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(200, 'Application_Service', 'Relationship', 'Application_Service', 'N/A', 'ATT_038', 'Aggregates Application Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00135', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(201, 'Application_Service', 'Relationship', 'N/A', 'Application_Service', 'ATT_039', 'Aggregated by Application Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00135', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(202, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Remarks on Service Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(203, 'Application_Service', 'Relationship', 'Application_Service', 'N/A', 'ATT_041', 'Specialized Application Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00136', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(204, 'Application_Service', 'Relationship', 'N/A', 'Application_Service', 'ATT_042', 'Specialized by Application Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00136', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(205, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Remarks on Service Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(206, 'Application_Service', 'Relationship', 'Data_Object', 'N/A', 'ATT_044', 'Accessed Data Items', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00138', 'Multiple', 'Unlimited', 'Access', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(207, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Remarks on Data Items', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(208, 'Application_Service', 'Relationship', 'N/A', 'Technology_Product', 'ATT_046', 'Utilized Technologies', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00139', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(209, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(210, 'Application_Service', 'Relationship', 'N/A', 'Technology_Node', 'ATT_048', 'Utilized Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00140', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(211, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Remarks on Technology Nodes', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(212, 'Application_Service', 'Relationship', 'Application_Interface', 'N/A', 'ATT_050', 'Provided Interfaces', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00141', 'Multiple', 'Unlimited', 'Realization', 'Provides', '1', NULL, '2022-02-02 11:53:03'),
(213, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Remarks on Interfaces', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(214, 'Application_Service', 'Relationship', 'Requirement', 'N/A', 'ATT_052', 'Realized Requirements', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00142', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(215, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_053', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(216, 'Application_Service', 'Relationship', 'N/A', 'Gap', 'ATT_054', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00143', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(217, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_055', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(218, 'Application_Service', 'Relationship', 'N/A', 'Architecture_State', 'ATT_056', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00144', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(219, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_057', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(220, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_058', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(221, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_059', 'Lifecycle State', 'No', 'N/A', 'N/A', 'List', '11.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Design;Under Development;Undergo Changed;Operational;Non-Operational;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(222, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_060', 'Operation Start Date', 'No', 'N/A', 'N/A', 'Date', '11.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(223, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_061', 'Operation End Date', 'No', 'N/A', 'N/A', 'Date', '11.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(224, 'Application_Service', 'Relationship', 'Application_Service', 'N/A', 'ATT_062', 'Replaced Application Service', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00137', 'Multiple', 'Unlimited', 'Association', 'Replaces', '1', NULL, '2022-02-02 11:53:03'),
(225, 'Application_Service', 'Relationship', 'N/A', 'Application_Service', 'ATT_063', 'Replaced by Application Service', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00137', 'Multiple', 'Unlimited', 'Association', 'Replaced by', '1', NULL, '2022-02-02 11:53:03'),
(226, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_064', 'Remarks on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '11.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(227, 'Application_Service', 'Relationship', 'Technology_Node', 'N/A', 'ATT_065', 'Deployed On Technology Node', 'Yes', 'Shared', 'Deployment Environment', 'Object', '12.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00122', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-02-02 11:53:03'),
(228, 'Application_Service', 'Relationship', 'Technology_Product', 'N/A', 'ATT_066', 'Deployed On Technology Product', 'Yes', 'Shared', 'Deployment Environment', 'Object', '12.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00123', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-02-02 11:53:03'),
(229, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_067', 'Remarks on Deployment', 'No', 'N/A', 'N/A', 'Rich Text', '12.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(230, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_068', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(231, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_069', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(232, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_070', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(233, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_071', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(234, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_072', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(235, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_073', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(236, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_074', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(237, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_075', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(238, 'Application_Service', 'System', 'N/A', 'N/A', 'ATT_076', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(239, 'Application_Service', 'Primary', 'N/A', 'N/A', 'ATT_077', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(240, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(241, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(242, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(243, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;Corporate;Operational;IT', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(244, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(245, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Automation Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Manual;Semi Automated;Fully Automated;Needs Improvement;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(246, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Number of Process Instances', 'Yes', 'Simple', 'Process Execution Summary', 'Number', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(247, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Number of Completed Transactions ', 'Yes', 'Simple', 'Process Execution Summary', 'Number', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(248, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Average Execution Time', 'No', 'N/A', 'N/A', 'Time', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(249, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Process Fees', 'No', 'N/A', 'N/A', 'Currency', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(250, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Escalation Method', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(251, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(252, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(253, 'Business_Process', 'Relationship', 'N/A', 'Actor', 'ATT_014', 'Process Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00031', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(254, 'Business_Process', 'Relationship', 'N/A', 'Actor', 'ATT_015', 'Process Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00032', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(255, 'Business_Process', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_016', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00033', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(256, 'Business_Process', 'Relationship', 'N/A', 'Role', 'ATT_017', 'Process Participant Roles', 'Yes', 'Shared', 'Process Participants', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00034', 'Multiple', 'Unlimited', 'Assignment', 'is Participated/Executed by', '1', NULL, '2022-02-02 11:53:03'),
(257, 'Business_Process', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_018', 'Process Participant Organization Units', 'Yes', 'Shared', 'Process Participants', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00089', 'Multiple', 'Unlimited', 'Assignment', 'is Participated/Executed by', '1', NULL, '2022-02-02 11:53:03'),
(258, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_019', 'Subordinate Processes', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00035', 'Multiple', 'Unlimited', 'Association', 'Is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(259, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_020', 'Superior Processes', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00035', 'Multiple', 'Unlimited', 'Association', 'Is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(260, 'Business_Process', 'Relationship', 'Domain', 'N/A', 'ATT_021', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00048', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(261, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(262, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_023', 'Composed of Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00036', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(263, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_024', 'Part of Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00036', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(264, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Remarks on Process Composition', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(265, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_026', 'Aggregates Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00037', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(266, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_027', 'Aggregated by Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00037', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(267, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Process Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(268, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_029', 'Specialized Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00038', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(269, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_030', 'Specialized by Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00038', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(270, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Remarks on Process Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Process Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(271, 'Business_Process', 'Relationship', 'N/A', 'Application_Service', 'ATT_032', 'Supporting Application Service', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Process Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00120', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(272, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Remarks on Process Support', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Process Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(273, 'Business_Process', 'Relationship', 'N/A', 'Goal', 'ATT_034', 'Process Performance Goals/Objectives', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00047', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(274, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Remarks on Process Goals/Objectives', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(275, 'Business_Process', 'Relationship', 'N/A', 'Principle', 'ATT_036', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00039', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(276, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(277, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(278, 'Business_Process', 'Relationship', 'N/A', 'Standard', 'ATT_039', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00040', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(279, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(280, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(281, 'Business_Process', 'Relationship', 'N/A', 'Risk', 'ATT_042', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00041', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(282, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(283, 'Business_Process', 'Relationship', 'Capability', 'N/A', 'ATT_044', 'Realized Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00042', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(284, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Additional Note on Capabilities', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(285, 'Business_Process', 'Relationship', 'Business_Service', 'N/A', 'ATT_046', 'Realized Business Services', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00043', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(286, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Additional Note on Business Services', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(287, 'Business_Process', 'Relationship', 'Value_Stream', 'N/A', 'ATT_048', 'Realized Value Streams', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00044', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(288, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Additional Note on Value Streams', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(289, 'Business_Process', 'Relationship', 'Data_Object', 'N/A', 'ATT_050', 'Input Data', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Inputs & Outputs', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00045', 'Multiple', 'Unlimited', 'Access', 'as Input', '1', NULL, '2022-02-02 11:53:03'),
(290, 'Business_Process', 'Relationship', 'Data_Object', 'N/A', 'ATT_051', 'Output Data', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Inputs & Outputs', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00046', 'Multiple', 'Unlimited', 'Access', 'as Output', '1', NULL, '2022-02-02 11:53:03'),
(291, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Remarks on Input and Output', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Inputs & Outputs', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(292, 'Business_Process', 'Relationship', 'N/A', 'Gap', 'ATT_053', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00183', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(293, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(294, 'Business_Process', 'Relationship', 'N/A', 'Architecture_State', 'ATT_055', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00184', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(295, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_056', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(296, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_057', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(297, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_058', 'Strategic Importance', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Very Low;Low;Medium;High;Very High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(298, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_059', 'IT Support', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;No Support;Pathetic Support;Satisfactory Support;Excellent Support', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(299, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_060', 'Current Maturity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Initial;Adhoc;Defined;Managed;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(300, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_061', 'Target Maturity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Initial;Adhoc;Defined;Managed;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(301, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_062', 'Remarks on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(302, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_063', 'Validity Start From', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(303, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_064', 'Validity Ends At', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(304, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_065', 'Additional Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(305, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_066', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(306, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_067', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(307, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_068', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(308, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_069', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(309, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_070', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(310, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_071', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(311, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_072', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(312, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_073', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(313, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_074', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(314, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_075', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(315, 'Business_Process', 'System', 'N/A', 'N/A', 'ATT_076', 'Serial Number', 'Yes', 'Tabular', 'Attachment(s)', 'Number', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(316, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_077', 'File Name', 'Yes', 'Tabular', 'Attachment(s)', 'Text', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(317, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_078', 'Attachment Title', 'Yes', 'Tabular', 'Attachment(s)', 'Text', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(318, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_079', 'Remarks on Attachment', 'No', 'N/A', 'N/A', 'Rich Text', '12.0', 'Attachment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(319, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_080', 'Display as Icon', 'No', 'N/A', 'N/A', 'CheckBox', '13.0', 'Appearance', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(320, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(321, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(322, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(323, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;Corporate;Operational;IT', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(324, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(325, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(326, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(327, 'Business_Function', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00169', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(328, 'Business_Function', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00170', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(329, 'Business_Function', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Part of Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00102', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(330, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_011', 'Subordinate Business Functions', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00172', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(331, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_012', 'Superior Business Functions', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00172', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(332, 'Business_Function', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00173', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(333, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(334, 'Business_Function', 'Relationship', 'Actor', 'N/A', 'ATT_015', 'Serves Actors', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00174', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(335, 'Business_Function', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_016', 'Serves Organization Units', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00175', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(336, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Remarks on Customers', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(337, 'Business_Function', 'Relationship', 'Business_Capability', 'N/A', 'ATT_018', 'Realized Business Capabilities', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Business Capabilities/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00178', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(338, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Capabilities Realization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Business Capabilities/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(339, 'Business_Function', 'Relationship', 'Service', 'N/A', 'ATT_020', 'Realized Services', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Business Capabilities/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00179', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(340, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Remarks on Services Realization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Business Capabilities/Services', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(341, 'Business_Function', 'Relationship', 'N/A', 'Application_Service', 'ATT_022', 'Served by Application Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Application Service', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00182', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(342, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Remarks on Application Services', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Application Service', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(343, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_024', 'Composed of Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00171', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(344, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_025', 'Part of Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00171', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(345, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(346, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_027', 'Aggregates Business Function', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00176', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(347, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_028', 'Aggregated by Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00176', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(348, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Remarks on Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(349, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_030', 'Specializes Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00177', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(350, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_031', 'Specialized by Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00177', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(351, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(352, 'Business_Function', 'Relationship', 'N/A', 'Gap', 'ATT_033', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00180', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(353, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(354, 'Business_Function', 'Relationship', 'N/A', 'Architecture_State', 'ATT_035', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00181', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(355, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(356, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(357, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_038', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(358, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_039', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(359, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_040', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(360, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_041', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(361, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_042', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(362, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_043', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(363, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_044', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(364, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_045', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(365, 'Business_Function', 'System', 'N/A', 'N/A', 'ATT_046', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(366, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(367, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(368, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(369, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(370, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;Corporate;Operational;IT', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(371, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(372, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(373, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(374, 'Service', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Service Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00057', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(375, 'Service', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Service Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00058', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(376, 'Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00059', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(377, 'Service', 'Relationship', 'Service', 'N/A', 'ATT_011', 'Subordinate Services', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00060', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(378, 'Service', 'Relationship', 'N/A', 'Service', 'ATT_012', 'Superior Services', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00060', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(379, 'Service', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00061', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(380, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(381, 'Service', 'Relationship', 'Actor', 'N/A', 'ATT_015', 'Serves Actors', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00051', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(382, 'Service', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_016', 'Serves Organization Units', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00063', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(383, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Remarks on Customers', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(384, 'Service', 'Relationship', 'N/A', 'Business_Process', 'ATT_018', 'Realized by Business Processes', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00043', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(385, 'Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_019', 'Realized by Technology Services', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00072', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(386, 'Service', 'Relationship', 'N/A', 'Business_Function', 'ATT_020', 'Realized by Business Functions', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00179', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(387, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Remarks on Service Realization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(388, 'Service', 'Relationship', 'Service', 'N/A', 'ATT_022', 'Composed of Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00064', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(389, 'Service', 'Relationship', 'N/A', 'Service', 'ATT_023', 'Part of Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00064', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(390, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Service Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(391, 'Service', 'Relationship', 'Service', 'N/A', 'ATT_025', 'Aggregates Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00065', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(392, 'Service', 'Relationship', 'N/A', 'Service', 'ATT_026', 'Aggregated by Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00065', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(393, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Remarks on Service Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(394, 'Service', 'Relationship', 'Service', 'N/A', 'ATT_028', 'Specializes Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00066', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(395, 'Service', 'Relationship', 'N/A', 'Service', 'ATT_029', 'Specialized by Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00066', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(396, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Remarks on Service Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(397, 'Service', 'Relationship', 'Service_Contract', 'N/A', 'ATT_031', 'Service Contracts', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00067', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(398, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Service Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(399, 'Service', 'Relationship', 'N/A', 'Goal', 'ATT_033', 'Service Performance Goals/Objectives', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00068', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(400, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Service Goals/Objectives', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(401, 'Service', 'Relationship', 'N/A', 'Principle', 'ATT_035', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00069', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(402, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(403, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(404, 'Service', 'Relationship', 'N/A', 'Standard', 'ATT_038', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00070', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(405, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(406, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(407, 'Service', 'Relationship', 'N/A', 'Risk', 'ATT_041', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00071', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(408, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(409, 'Service', 'Relationship', 'N/A', 'Gap', 'ATT_043', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00185', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(410, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(411, 'Service', 'Relationship', 'N/A', 'Architecture_State', 'ATT_045', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00186', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(412, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(413, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(414, 'Service', 'System', 'N/A', 'N/A', 'ATT_048', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(415, 'Service', 'System', 'N/A', 'N/A', 'ATT_049', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(416, 'Service', 'System', 'N/A', 'N/A', 'ATT_050', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(417, 'Service', 'System', 'N/A', 'N/A', 'ATT_051', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(418, 'Service', 'System', 'N/A', 'N/A', 'ATT_052', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(419, 'Service', 'System', 'N/A', 'N/A', 'ATT_053', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(420, 'Service', 'System', 'N/A', 'N/A', 'ATT_054', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(421, 'Service', 'System', 'N/A', 'N/A', 'ATT_055', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(422, 'Service', 'System', 'N/A', 'N/A', 'ATT_056', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(423, 'Service', 'Primary', 'N/A', 'N/A', 'ATT_057', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(424, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(425, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(426, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(427, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;SLA;OLA;Underpinning Contract (UC);License;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(428, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(429, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(430, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(431, 'Service_Contract', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Contract Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00145', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(432, 'Service_Contract', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Contract Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00200', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(433, 'Service_Contract', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00201', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(434, 'Service_Contract', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Contract Organizations', 'Yes', 'Shared', 'Contract Partners/Vendors', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00209', 'Multiple', 'N/A', 'Association', 'is Partnered by', '1', NULL, '2022-02-02 11:53:03'),
(435, 'Service_Contract', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Contract Individuals', 'Yes', 'Shared', 'Contract Partners/Vendors', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00210', 'Multiple', 'N/A', 'Association', 'is Partnered by', '1', NULL, '2022-02-02 11:53:03'),
(436, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(437, 'Service_Contract', 'Relationship', 'N/A', 'Service', 'ATT_014', 'Impacted Service', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00067', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(438, 'Service_Contract', 'Relationship', 'N/A', 'Application_Component', 'ATT_015', 'Impacted Application Component', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00202', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(439, 'Service_Contract', 'Relationship', 'N/A', 'Application_Service', 'ATT_016', 'Impacted Application Service', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00203', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(440, 'Service_Contract', 'Relationship', 'N/A', 'Technology_Product', 'ATT_017', 'Impacted Technology Product', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00204', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(441, 'Service_Contract', 'Relationship', 'N/A', 'Technology_Service', 'ATT_018', 'Impacted Technology Service', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00205', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(442, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Impacted Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(443, 'Service_Contract', 'Relationship', 'Service_Contract', 'N/A', 'ATT_020', 'Composed of Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00206', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(444, 'Service_Contract', 'Relationship', 'N/A', 'Service_Contract', 'ATT_021', 'Part of Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00206', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(445, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Contract Composition', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(446, 'Service_Contract', 'Relationship', 'Service_Contract', 'N/A', 'ATT_023', 'Aggregates Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00207', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(447, 'Service_Contract', 'Relationship', 'N/A', 'Service_Contract', 'ATT_024', 'Aggregated by Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00207', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(448, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Remarks on Contract Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(449, 'Service_Contract', 'Relationship', 'Service_Contract', 'N/A', 'ATT_026', 'Specializes Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00208', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(450, 'Service_Contract', 'Relationship', 'N/A', 'Service_Contract', 'ATT_027', 'Specialized by Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00208', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(451, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Contract Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(452, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_029', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(453, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_030', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(454, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_031', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(455, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_032', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(456, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_033', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(457, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_034', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(458, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_035', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(459, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_036', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(460, 'Service_Contract', 'System', 'N/A', 'N/A', 'ATT_037', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(461, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(462, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(463, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(464, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(465, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(466, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(467, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(468, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(469, 'Business_Capability', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Capability Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00189', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(470, 'Business_Capability', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Capability Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00190', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(471, 'Business_Capability', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Supported by Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00103', 'Multiple', 'Unlimited', 'Association', 'Supported by', '1', NULL, '2022-02-02 11:53:03'),
(472, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_011', 'Subordinate Capabilities', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00191', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(473, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_012', 'Superior Capabilities', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00191', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(474, 'Business_Capability', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00192', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(475, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(476, 'Business_Capability', 'Relationship', 'N/A', 'Business_Process', 'ATT_015', 'Realized by Business Processes', 'Yes', 'Shared', 'Realized by Business Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00042', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(477, 'Business_Capability', 'Relationship', 'N/A', 'Business_Function', 'ATT_016', 'Realized by Business Functions', 'Yes', 'Shared', 'Realized by Business Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00178', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(478, 'Business_Capability', 'Relationship', 'Course_of_Action', 'N/A', 'ATT_017', 'Realizes Course of Actions', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00196', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(479, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(480, 'Business_Capability', 'Relationship', 'N/A', 'Application_Service', 'ATT_019', 'Served by Application Services', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Application Service', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00121', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(481, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Application Services', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Application Service', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(482, 'Business_Capability', 'Relationship', 'Value_Stream', 'N/A', 'ATT_021', 'Served Value Streams', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Value Stream', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00197', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(483, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Value Stream', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Value Stream', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(484, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_023', 'Composed of Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00193', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(485, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_024', 'Part of Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00193', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(486, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Remarks on Capability Composition', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(487, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_026', 'Aggregates Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00194', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(488, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_027', 'Aggregated by Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00194', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(489, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Capability Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(490, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_029', 'Specializes Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00195', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(491, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_030', 'Specialized by Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00195', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(492, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Remarks on Capability Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(493, 'Business_Capability', 'Relationship', 'N/A', 'Standard', 'ATT_032', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00198', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(494, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(495, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(496, 'Business_Capability', 'Relationship', 'N/A', 'Risk', 'ATT_035', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00199', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(497, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(498, 'Business_Capability', 'Relationship', 'N/A', 'Gap', 'ATT_037', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00187', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(499, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(500, 'Business_Capability', 'Relationship', 'N/A', 'Architecture_State', 'ATT_039', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00188', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(501, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(502, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(503, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_042', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(504, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_043', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(505, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_044', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(506, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_045', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(507, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_046', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(508, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_047', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(509, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_048', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(510, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_049', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(511, 'Business_Capability', 'System', 'N/A', 'N/A', 'ATT_050', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(512, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(513, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(514, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(515, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(516, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(517, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(518, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(519, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(520, 'Value_Stream', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00299', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(521, 'Value_Stream', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00300', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(522, 'Value_Stream', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Supported by Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00301', 'Multiple', 'Unlimited', 'Association', 'Supported by', '1', NULL, '2022-02-02 11:53:03'),
(523, 'Value_Stream', 'Relationship', 'Value_Stream', 'N/A', 'ATT_011', 'Composed of Value Streams', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(524, 'Value_Stream', 'Relationship', 'N/A', 'Value_Stream', 'ATT_012', 'Part of Value Streams', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(525, 'Value_Stream', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00303', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(526, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(527, 'Value_Stream', 'Relationship', 'N/A', 'Business_Process', 'ATT_015', 'Realized by Business Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00044', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(528, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(529, 'Value_Stream', 'Relationship', 'N/A', 'Business_Capability', 'ATT_017', 'Served by Business Capabilities', 'Yes', 'Shared', 'Served by', 'Object', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00197', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(530, 'Value_Stream', 'Relationship', 'N/A', 'Course_of_Action', 'ATT_018', 'Served by Course of Actions', 'Yes', 'Shared', 'Served by', 'Object', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00298', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(531, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Serving', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(532, 'Value_Stream', 'Relationship', 'Value_Stream', 'N/A', 'ATT_020', 'Composed of Value Streams', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(533, 'Value_Stream', 'Relationship', 'N/A', 'Value_Stream', 'ATT_021', 'Part of Value Streams', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(534, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Value Stream Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(535, 'Value_Stream', 'Relationship', 'N/A', 'Gap', 'ATT_023', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00304', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(536, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(537, 'Value_Stream', 'Relationship', 'N/A', 'Architecture_State', 'ATT_025', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00305', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(538, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(539, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(540, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_028', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(541, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_029', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(542, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_030', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(543, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_031', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(544, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_032', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(545, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_033', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(546, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_034', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(547, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_035', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(548, 'Value_Stream', 'System', 'N/A', 'N/A', 'ATT_036', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(549, 'Value_Stream', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(550, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(551, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(552, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(553, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Strategic;Tactical;Operational', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(554, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(555, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(556, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(557, 'Course_of_Action', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00293', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(558, 'Course_of_Action', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00294', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(559, 'Course_of_Action', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Supported by Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00295', 'Multiple', 'Unlimited', 'Association', 'Supported by', '1', NULL, '2022-02-02 11:53:03'),
(560, 'Course_of_Action', 'Relationship', 'Course_of_Action', 'N/A', 'ATT_011', 'Subordinate Course of Actions', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00296', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(561, 'Course_of_Action', 'Relationship', 'N/A', 'Course_of_Action', 'ATT_012', 'Superior Course of Actions', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00296', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(562, 'Course_of_Action', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00297', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(563, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(564, 'Course_of_Action', 'Relationship', 'N/A', 'Business_Capability', 'ATT_015', 'Realized by', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00196', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(565, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(566, 'Course_of_Action', 'Relationship', 'Value_Stream', 'N/A', 'ATT_017', 'Serves Value Streams', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00298', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(567, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Value Stream', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Serving', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(568, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_019', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(569, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_020', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(570, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_021', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(571, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_022', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(572, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_023', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(573, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_024', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(574, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_025', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(575, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_026', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(576, 'Course_of_Action', 'System', 'N/A', 'N/A', 'ATT_027', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(577, 'Course_of_Action', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(578, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(579, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(580, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(581, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Master;Inventory;Transaction;Audit;Regulatory;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(582, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Is Structured?', 'No', 'N/A', 'N/A', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(583, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(584, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(585, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(586, 'Data_Object', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Data Object Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00092', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(587, 'Data_Object', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Data Object Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00093', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(588, 'Data_Object', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00212', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(589, 'Data_Object', 'Relationship', 'Domain', 'N/A', 'ATT_012', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00211', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(590, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(591, 'Data_Object', 'Relationship', 'N/A', 'Application_Component', 'ATT_014', 'Accessed by Application Components', 'Yes', 'Shared', 'Accessed by Application Objects', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00016', 'Multiple', 'Unlimited', 'Access', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(592, 'Data_Object', 'Relationship', 'N/A', 'Application_Service', 'ATT_015', 'Accessed by Application Services', 'Yes', 'Shared', 'Accessed by Application Objects', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00138', 'Multiple', 'Unlimited', 'Access', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(593, 'Data_Object', 'Relationship', 'N/A', 'Business_Process', 'ATT_016', 'Input into', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00045', 'Multiple', 'Unlimited', 'Access', 'Input into', '1', NULL, '2022-02-02 11:53:03'),
(594, 'Data_Object', 'Relationship', 'N/A', 'Business_Process', 'ATT_017', 'Output From', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00046', 'Multiple', 'Unlimited', 'Access', 'Output from', '1', NULL, '2022-02-02 11:53:03'),
(595, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Access', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(596, 'Data_Object', 'Relationship', 'Data_Component', 'N/A', 'ATT_019', 'Assigned to Data Components', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Data Component', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00222', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(597, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Data Components', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Data Component', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(598, 'Data_Object', 'Relationship', 'N/A', 'Application_Interface', 'ATT_021', 'Exchanged by Interfaces', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00155', 'Multiple', 'Unlimited', 'Association', 'Exchanged by', '1', NULL, '2022-02-02 11:53:03'),
(599, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Interfaces', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(600, 'Data_Object', 'Relationship', 'N/A', 'Principle', 'ATT_023', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00213', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(601, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(602, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(603, 'Data_Object', 'Relationship', 'N/A', 'Standard', 'ATT_026', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00214', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(604, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(605, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(606, 'Data_Object', 'Relationship', 'N/A', 'Risk', 'ATT_029', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00215', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(607, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(608, 'Data_Object', 'Relationship', 'Data_Object', 'N/A', 'ATT_031', 'Referenced to Data Objects', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Data Reference', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00221', 'Multiple', 'Unlimited', 'Association', 'Referenced to', '1', NULL, '2022-02-02 11:53:03'),
(609, 'Data_Object', 'Relationship', 'N/A', 'Data_Object', 'ATT_032', 'Referenced from Data Objects', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Data Reference', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00221', 'Multiple', 'Unlimited', 'Association', 'Referenced from', '1', NULL, '2022-02-02 11:53:03'),
(610, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Remarks on Data Reference', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Data Reference', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(611, 'Data_Object', 'Relationship', 'Data_Object', 'N/A', 'ATT_034', 'Composed of Data Objects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00218', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(612, 'Data_Object', 'Relationship', 'N/A', 'Data_Object', 'ATT_035', 'Part of Data Objects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00218', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(613, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Remarks on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(614, 'Data_Object', 'Relationship', 'Data_Object', 'N/A', 'ATT_037', 'Aggregates Data Objects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00219', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(615, 'Data_Object', 'Relationship', 'N/A', 'Data_Object', 'ATT_038', 'Aggregated by Data Objects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00219', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(616, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Remarks on Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(617, 'Data_Object', 'Relationship', 'Data_Object', 'N/A', 'ATT_040', 'Specializes Data Objects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00220', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(618, 'Data_Object', 'Relationship', 'N/A', 'Data_Object', 'ATT_041', 'Specialized by Data Objects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00220', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(619, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Remarks on Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(620, 'Data_Object', 'Relationship', 'N/A', 'Gap', 'ATT_043', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00216', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(621, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(622, 'Data_Object', 'Relationship', 'N/A', 'Architecture_State', 'ATT_045', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00217', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(623, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(624, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(625, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_048', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(626, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_049', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(627, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_050', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(628, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_051', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(629, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_052', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(630, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_053', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(631, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_054', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(632, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_055', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(633, 'Data_Object', 'System', 'N/A', 'N/A', 'ATT_056', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(634, 'Data_Object', 'Primary', 'N/A', 'N/A', 'ATT_057', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(635, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(636, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(637, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(638, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Operational;Analytical/Decision Support;Data Warehouse;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(639, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Location', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Centralized;Distributed', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(640, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(641, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(642, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(643, 'Data_Component', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00223', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(644, 'Data_Component', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00224', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-02-02 11:53:03'),
(645, 'Data_Component', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00225', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-02-02 11:53:03'),
(646, 'Data_Component', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00226', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(647, 'Data_Component', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00227', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(648, 'Data_Component', 'Relationship', 'Domain', 'N/A', 'ATT_014', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00228', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(649, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(650, 'Data_Component', 'Relationship', 'N/A', 'Data_Object', 'ATT_016', 'Assigned Data Objects', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00222', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(651, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Remarks on Data Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Data Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(652, 'Data_Component', 'Relationship', 'N/A', 'Principle', 'ATT_018', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00229', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(653, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(654, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(655, 'Data_Component', 'Relationship', 'N/A', 'Standard', 'ATT_021', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00230', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(656, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(657, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(658, 'Data_Component', 'Relationship', 'N/A', 'Risk', 'ATT_024', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00231', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(659, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(660, 'Data_Component', 'Relationship', 'N/A', 'Technology_Product', 'ATT_026', 'Utilized Technologies', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00234', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(661, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Additional Note on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(662, 'Data_Component', 'Relationship', 'Technology_Node', 'N/A', 'ATT_028', 'Deployed Environment', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00235', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-02-02 11:53:03'),
(663, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Additional Note on Deployment', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(664, 'Data_Component', 'Relationship', 'N/A', 'Gap', 'ATT_030', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00232', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(665, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(666, 'Data_Component', 'Relationship', 'N/A', 'Architecture_State', 'ATT_032', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00233', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(667, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(668, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(669, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_035', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(670, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_036', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(671, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_037', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(672, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_038', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(673, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_039', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(674, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_040', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(675, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_041', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(676, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_042', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(677, 'Data_Component', 'System', 'N/A', 'N/A', 'ATT_043', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(678, 'Data_Component', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(679, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(680, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(681, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(682, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Business Driver;Technology Driver;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(683, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(684, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(685, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(686, 'Driver', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00309', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(687, 'Driver', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00310', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(688, 'Driver', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00311', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(689, 'Driver', 'Relationship', 'Domain', 'N/A', 'ATT_011', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00312', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(690, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(691, 'Driver', 'Relationship', 'N/A', 'Goal', 'ATT_013', 'Associated Goals', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Goals', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00306', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(692, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Goals', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Goals', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(693, 'Driver', 'System', 'N/A', 'N/A', 'ATT_015', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(694, 'Driver', 'System', 'N/A', 'N/A', 'ATT_016', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(695, 'Driver', 'System', 'N/A', 'N/A', 'ATT_017', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(696, 'Driver', 'System', 'N/A', 'N/A', 'ATT_018', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(697, 'Driver', 'System', 'N/A', 'N/A', 'ATT_019', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(698, 'Driver', 'System', 'N/A', 'N/A', 'ATT_020', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(699, 'Driver', 'System', 'N/A', 'N/A', 'ATT_021', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(700, 'Driver', 'System', 'N/A', 'N/A', 'ATT_022', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(701, 'Driver', 'System', 'N/A', 'N/A', 'ATT_023', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(702, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(703, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(704, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(705, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(706, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Business Goal;Technology Goal;Objective', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(707, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(708, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(709, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(710, 'Goal', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Goal Owner Actor', 'Yes', 'Shared', 'Goal Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00094', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(711, 'Goal', 'Relationship', 'N/A', 'Role', 'ATT_09', 'Goal Owner Role', 'Yes', 'Shared', 'Goal Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00109', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(712, 'Goal', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Goal Manager Actor', 'Yes', 'Shared', 'Goal Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00095', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(713, 'Goal', 'Relationship', 'N/A', 'Role', 'ATT_011', 'Goal Manager Role', 'Yes', 'Shared', 'Goal Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00113', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(714, 'Goal', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00096', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(715, 'Goal', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00097', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(716, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(717, 'Goal', 'Relationship', 'N/A', 'Indicator', 'ATT_015', 'Associated Indicator(s)', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Goal Indicators', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00026', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(718, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Indicators', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Goal Indicators', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(719, 'Goal', 'Relationship', 'Goal', 'N/A', 'ATT_017', 'Composed of Goals', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00313', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(720, 'Goal', 'Relationship', 'N/A', 'Goal', 'ATT_018', 'Part of Goals', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00313', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(721, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Goal Composition', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(722, 'Goal', 'Relationship', 'Business_Process', 'N/A', 'ATT_020', 'Associated Business Processes', 'Yes', 'Shared', 'Associated Business Objects', 'Object', '5.0', 'Business Association', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00047', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(723, 'Goal', 'Relationship', 'Service', 'N/A', 'ATT_021', 'Associated Services', 'Yes', 'Shared', 'Associated Business Objects', 'Object', '5.0', 'Business Association', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00068', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(724, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Business Association', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Business Association', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(725, 'Goal', 'Relationship', 'Driver', 'N/A', 'ATT_023', 'Associated Drivers', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00306', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(726, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Drivers', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(727, 'Goal', 'Relationship', 'N/A', 'Principle', 'ATT_025', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00307', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(728, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(729, 'Goal', 'Relationship', 'N/A', 'Risk', 'ATT_027', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00308', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(730, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(731, 'Goal', 'System', 'N/A', 'N/A', 'ATT_029', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(732, 'Goal', 'System', 'N/A', 'N/A', 'ATT_030', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(733, 'Goal', 'System', 'N/A', 'N/A', 'ATT_031', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(734, 'Goal', 'System', 'N/A', 'N/A', 'ATT_032', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(735, 'Goal', 'System', 'N/A', 'N/A', 'ATT_033', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(736, 'Goal', 'System', 'N/A', 'N/A', 'ATT_034', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(737, 'Goal', 'System', 'N/A', 'N/A', 'ATT_035', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(738, 'Goal', 'System', 'N/A', 'N/A', 'ATT_036', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(739, 'Goal', 'System', 'N/A', 'N/A', 'ATT_037', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(740, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(741, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(742, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(743, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(744, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Quantitative Indicator:Qualitative Indicator', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(745, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(746, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(747, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(748, 'Indicator', 'Relationship', 'Goal', 'N/A', 'ATT_08', 'Associated to Goal', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00026', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(749, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Measurement Unit', 'No', 'N/A', 'N/A', 'Text', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(750, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Allowed Values', 'No', 'N/A', 'N/A', 'Text', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'High;Medium;Low;Very Low', 'The allowed values must be separated by semicolon.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(751, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Measurement Frequency', 'No', 'N/A', 'N/A', 'List', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'Null;Once;Weekly;Monthly;Quarterly;Annually', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(752, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Remarks on Indicator Definition', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(753, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Measurement for', 'Yes', 'Simple', 'Measurement Period', 'List', '3.0', 'Measurement', 'No', 'N/A', 'N/A', 'Null:Null:Null;Week1;Week2;Week3;Week4:Null;January;February;March;April;May;June;July;August;September;October;November;December:Null;Q1;Q2;Q3;Q4:Null;[2000:2050]', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(754, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Of', 'Yes', 'Simple', 'Measurement Period', 'List', '3.0', 'Measurement', 'No', 'N/A', 'N/A', 'Null:Null:Null;January;February;March;April;May;June;July;August;September;October;November;December:Null;[2000:2050]:Null;[2000:2050]:Null', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(755, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Target Value', 'No', 'N/A', 'N/A', 'Number;List', '3.0', 'Measurement', 'No', 'N/A', 'N/A', 'Indicator.Allowed Values\'', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(756, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Achieved Value', 'No', 'N/A', 'N/A', 'Number;List', '3.0', 'Measurement', 'No', 'N/A', 'N/A', 'Indicator.Allowed Values\'', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(757, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Remarks on Measurement', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Measurement', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(758, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_018', 'Serial Number', 'Yes', 'Tabular', 'Measurement History', 'Number', '4.0', 'Measurement History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(759, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Measurement for', 'Yes', 'Tabular', 'Measurement History', 'Text', '4.0', 'Measurement History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(760, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Of', 'Yes', 'Tabular', 'Measurement History', 'Text', '4.0', 'Measurement History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(761, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Target Value', 'Yes', 'Tabular', 'Measurement History', 'Number;Text', '4.0', 'Measurement History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(762, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Achieved Value', 'Yes', 'Tabular', 'Measurement History', 'Number;Text', '4.0', 'Measurement History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(763, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Remarks on Measurement History', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Measurement History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(764, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_024', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(765, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_025', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(766, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_026', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(767, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_027', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(768, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_028', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(769, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_029', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(770, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_030', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(771, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_031', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(772, 'Indicator', 'System', 'N/A', 'N/A', 'ATT_032', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(773, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(774, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(775, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(776, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Business;Data;Application;Technology;Information Security;Interoperability;Governance;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(777, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(778, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Statement', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(779, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Rationale', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(780, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Implication(s)', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(781, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(782, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(783, 'Principle', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Principle Owner Actor', 'Yes', 'Shared', 'Principle Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00076', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(784, 'Principle', 'Relationship', 'N/A', 'Role', 'ATT_011', 'Principle Owner Role', 'Yes', 'Shared', 'Principle Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00108', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(785, 'Principle', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Principle Manager Actor', 'Yes', 'Shared', 'Principle Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00077', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(786, 'Principle', 'Relationship', 'N/A', 'Role', 'ATT_013', 'Principle Manager Role', 'Yes', 'Shared', 'Principle Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00112', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(787, 'Principle', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_014', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00078', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(788, 'Principle', 'Relationship', 'Domain', 'N/A', 'ATT_015', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00079', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(789, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(790, 'Principle', 'Relationship', 'Application_Component', 'N/A', 'ATT_017', 'Applied to Application Component', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00008', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(791, 'Principle', 'Relationship', 'Business_Process', 'N/A', 'ATT_018', 'Applied to Business Processes', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00039', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(792, 'Principle', 'Relationship', 'Service', 'N/A', 'ATT_019', 'Applied to Services', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00069', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(793, 'Principle', 'Relationship', 'Data_Object', 'N/A', 'ATT_020', 'Applied to Data Objects', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00213', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(794, 'Principle', 'Relationship', 'Requirement', 'N/A', 'ATT_021', 'Applied to Requirements', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00292', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(795, 'Principle', 'Relationship', 'Work_Package', 'N/A', 'ATT_022', 'Applied to Work Packages', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00321', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(796, 'Principle', 'Relationship', 'Technology_Product', 'N/A', 'ATT_023', 'Applied to Technology Products', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00236', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(797, 'Principle', 'Relationship', 'Technology_Service', 'N/A', 'ATT_024', 'Applied to Technology Services', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00268', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(798, 'Principle', 'Relationship', 'Application_Service', 'N/A', 'ATT_025', 'Applied to Application Services', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00130', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(799, 'Principle', 'Relationship', 'Application_Interface', 'N/A', 'ATT_026', 'Applied to Application Interfaces', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00153', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(800, 'Principle', 'Relationship', 'Data_Component', 'N/A', 'ATT_027', 'Applied to Data Components', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00229', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(801, 'Principle', 'Relationship', 'Goal', 'N/A', 'ATT_028', 'Applied to Goals', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00307', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(802, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Remarks on Principle Application', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Application/Conformance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'null', '1', NULL, '2022-02-02 11:53:03'),
(803, 'Principle', 'Relationship', 'N/A', 'Risk', 'ATT_030', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00083', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(804, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(805, 'Principle', 'Relationship', 'Principle', 'N/A', 'ATT_032', 'Composed of Principles', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00080', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(806, 'Principle', 'Relationship', 'N/A', 'Principle', 'ATT_033', 'Part of Principles', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00080', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(807, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(808, 'Principle', 'Relationship', 'N/A', 'Gap', 'ATT_035', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00323', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(809, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(810, 'Principle', 'Relationship', 'N/A', 'Architecture_State', 'ATT_037', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00085', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(811, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(812, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(813, 'Principle', 'System', 'N/A', 'N/A', 'ATT_040', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(814, 'Principle', 'System', 'N/A', 'N/A', 'ATT_041', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(815, 'Principle', 'System', 'N/A', 'N/A', 'ATT_042', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(816, 'Principle', 'System', 'N/A', 'N/A', 'ATT_043', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(817, 'Principle', 'System', 'N/A', 'N/A', 'ATT_044', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(818, 'Principle', 'System', 'N/A', 'N/A', 'ATT_045', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(819, 'Principle', 'System', 'N/A', 'N/A', 'ATT_046', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(820, 'Principle', 'System', 'N/A', 'N/A', 'ATT_047', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(821, 'Principle', 'System', 'N/A', 'N/A', 'ATT_048', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(822, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(823, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(824, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(825, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(826, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Process Standard;Application Standard;Data Standard;Technology Standard', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(827, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(828, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(829, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(830, 'Standard', 'Relationship', 'Application_Component', 'N/A', 'ATT_08', 'The', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(831, 'Standard', 'Relationship', 'Application_Service', 'N/A', 'ATT_09', 'is Standard for Application Service', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(832, 'Standard', 'Relationship', 'Application_Service', 'N/A', 'ATT_010', 'Scoped by Application Service', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Scoped by', '1', NULL, '2022-02-02 11:53:03'),
(833, 'Standard', 'Relationship', 'Data_Component', 'N/A', 'ATT_011', 'The', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(834, 'Standard', 'Relationship', 'Data_Object', 'N/A', 'ATT_012', 'is Standard for Data', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(835, 'Standard', 'Relationship', 'Application_Service', 'N/A', 'ATT_013', 'Scoped by Application Service', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Scoped by', '1', NULL, '2022-02-02 11:53:03'),
(836, 'Standard', 'Relationship', 'Business_Process', 'N/A', 'ATT_014', 'The', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(837, 'Standard', 'Relationship', 'Business_Capability', 'N/A', 'ATT_015', 'is Standard for Business Capability', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(838, 'Standard', 'Relationship', 'Service', 'N/A', 'ATT_016', 'Scoped by Service', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Scoped by', '1', NULL, '2022-02-02 11:53:03'),
(839, 'Standard', 'Relationship', 'Technology_Product', 'N/A', 'ATT_017', 'The', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(840, 'Standard', 'Relationship', 'Technology_Component', 'N/A', 'ATT_018', 'is Standard for Technology Component', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(841, 'Standard', 'Relationship', 'Technology_Service', 'N/A', 'ATT_019', 'Scoped by Technology Service', 'Yes', 'Simple', 'N/A', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'Scoped by', '1', NULL, '2022-02-02 11:53:03'),
(842, 'Standard', 'Relationship', 'N/A', 'Actor', 'ATT_020', 'Standard Owner Actor', 'Yes', 'Shared', 'Standard Owner', 'Object', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00098', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(843, 'Standard', 'Relationship', 'N/A', 'Role', 'ATT_021', 'Standard Owner Role', 'Yes', 'Shared', 'Standard Owner', 'Object', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00107', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(844, 'Standard', 'Relationship', 'N/A', 'Actor', 'ATT_022', 'Standard Manager Actor', 'Yes', 'Shared', 'Standard Manager', 'Object', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00099', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(845, 'Standard', 'Relationship', 'N/A', 'Role', 'ATT_023', 'Standard Manager Role', 'Yes', 'Shared', 'Standard Manager', 'Object', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00111', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(846, 'Standard', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_024', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00100', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(847, 'Standard', 'Relationship', 'Domain', 'N/A', 'ATT_025', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00101', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(848, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(849, 'Standard', 'Relationship', 'Service', 'N/A', 'ATT_027', 'Applied to Services', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00070', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(850, 'Standard', 'Relationship', 'Application_Component', 'N/A', 'ATT_028', 'Applied to Application Components', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00009', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(851, 'Standard', 'Relationship', 'Application_Service', 'N/A', 'ATT_029', 'Applied to Application Services', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00131', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(852, 'Standard', 'Relationship', 'Business_Process', 'N/A', 'ATT_030', 'Applied to Business Processes', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00040', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(853, 'Standard', 'Relationship', 'Business_Capability', 'N/A', 'ATT_031', 'Applied to Business Capabilities', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00198', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(854, 'Standard', 'Relationship', 'Data_Object', 'N/A', 'ATT_032', 'Applied to Data Objects', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00214', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(855, 'Standard', 'Relationship', 'Data_Component', 'N/A', 'ATT_033', 'Applied to Data Components', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00230', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(856, 'Standard', 'Relationship', 'Technology_Product', 'N/A', 'ATT_034', 'Applied to Technology Products', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00237', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(857, 'Standard', 'Relationship', 'Technology_Service', 'N/A', 'ATT_035', 'Applied to Technology Services', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00269', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(858, 'Standard', 'Relationship', 'Work_Package', 'N/A', 'ATT_036', 'Applied to Work Packages', 'Yes', 'Shared', 'Applied to Architecture Objects', 'Object', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00322', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-02-02 11:53:03'),
(859, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Application', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Standards Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(860, 'Standard', 'Relationship', 'Standard', 'N/A', 'ATT_038', 'Composed of Standards', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00274', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(861, 'Standard', 'Relationship', 'N/A', 'Standard', 'ATT_039', 'Part of Standards', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00274', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(862, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Remarks on Standards Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(863, 'Standard', 'Relationship', 'Standard', 'N/A', 'ATT_041', 'Aggregates Standards', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00275', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(864, 'Standard', 'Relationship', 'N/A', 'Standard', 'ATT_042', 'Aggregated by Standards', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00275', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(865, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Remarks on Standards Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(866, 'Standard', 'Relationship', 'Standard', 'N/A', 'ATT_044', 'Specializes Standards', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00276', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(867, 'Standard', 'Relationship', 'N/A', 'Standard', 'ATT_045', 'Specialized by Standards', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00276', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(868, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Remarks on Standards Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(869, 'Standard', 'Relationship', 'N/A', 'Gap', 'ATT_047', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00324', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(870, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(871, 'Standard', 'Relationship', 'N/A', 'Architecture_State', 'ATT_049', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00325', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(872, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_050', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(873, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(874, 'Standard', 'System', 'N/A', 'N/A', 'ATT_052', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(875, 'Standard', 'System', 'N/A', 'N/A', 'ATT_053', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(876, 'Standard', 'System', 'N/A', 'N/A', 'ATT_054', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(877, 'Standard', 'System', 'N/A', 'N/A', 'ATT_055', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(878, 'Standard', 'System', 'N/A', 'N/A', 'ATT_056', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(879, 'Standard', 'System', 'N/A', 'N/A', 'ATT_057', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(880, 'Standard', 'System', 'N/A', 'N/A', 'ATT_058', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(881, 'Standard', 'System', 'N/A', 'N/A', 'ATT_059', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(882, 'Standard', 'System', 'N/A', 'N/A', 'ATT_060', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(883, 'Standard', 'Primary', 'N/A', 'N/A', 'ATT_061', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(884, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(885, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(886, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(887, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Strategic;Legal & Regulatory;Political & Social;Security & Fraud;Financial;Reputation;Liquidity;Business;Operational;Market;Systems;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(888, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(889, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Risk Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Candidate;Identified;Analyzed;Planned;Responded;Monitired;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(890, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Risk Source', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Internal;External;Internal & External', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(891, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Risk Probability', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Very Low;Low;Medium;High;Very High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(892, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Risk Impact', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Low;Medium;High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(893, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Impact Start Date', 'No', 'N/A', 'N/A', 'Date', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(894, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Impact End Date', 'No', 'N/A', 'N/A', 'Date', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(895, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(896, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(897, 'Risk', 'Relationship', 'N/A', 'Actor', 'ATT_014', 'Risk Owner Actor', 'Yes', 'Shared', 'Risk Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00053', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(898, 'Risk', 'Relationship', 'N/A', 'Role', 'ATT_015', 'Risk Owner Role', 'Yes', 'Shared', 'Risk Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00106', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(899, 'Risk', 'Relationship', 'N/A', 'Actor', 'ATT_016', 'Risk Manager Actor', 'Yes', 'Shared', 'Risk Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00081', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(900, 'Risk', 'Relationship', 'N/A', 'Role', 'ATT_017', 'Risk Manager Role', 'Yes', 'Shared', 'Risk Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00110', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(901, 'Risk', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_018', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00082', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(902, 'Risk', 'Relationship', 'Domain', 'N/A', 'ATT_019', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00084', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(903, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(904, 'Risk', 'Relationship', 'Application_Component', 'N/A', 'ATT_021', 'Risked Application Components', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00010', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(905, 'Risk', 'Relationship', 'Service', 'N/A', 'ATT_022', 'Risked Services', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00071', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(906, 'Risk', 'Relationship', 'Application_Interface', 'N/A', 'ATT_023', 'Risked Application Interfaces', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00154', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(907, 'Risk', 'Relationship', 'Application_Function', 'N/A', 'ATT_024', 'Risked Application Functions', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00335', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(908, 'Risk', 'Relationship', 'Application_Service', 'N/A', 'ATT_025', 'Risked Application Services', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00132', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(909, 'Risk', 'Relationship', 'Business_Process', 'N/A', 'ATT_026', 'Risked Business Processes', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00041', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(910, 'Risk', 'Relationship', 'Data_Object', 'N/A', 'ATT_027', 'Risked Data Objects', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00215', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(911, 'Risk', 'Relationship', 'Data_Component', 'N/A', 'ATT_028', 'Risked Data Components', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00231', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(912, 'Risk', 'Relationship', 'Goal', 'N/A', 'ATT_029', 'Risked Goals', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00308', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(913, 'Risk', 'Relationship', 'Principle', 'N/A', 'ATT_030', 'Risked Principles', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00083', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(914, 'Risk', 'Relationship', 'Work_Package', 'N/A', 'ATT_031', 'Risked Work Packages', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00320', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(915, 'Risk', 'Relationship', 'Technology_Node', 'N/A', 'ATT_032', 'Risked Technology Nodes', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00255', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(916, 'Risk', 'Relationship', 'Technology_Product', 'N/A', 'ATT_033', 'Risked Technology Products', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00238', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(917, 'Risk', 'Relationship', 'Technology_Service', 'N/A', 'ATT_034', 'Risked Technology Services', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00270', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(918, 'Risk', 'Relationship', 'Communication_Network', 'N/A', 'ATT_035', 'Risked Communication Networks', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00283', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(919, 'Risk', 'Relationship', 'Location', 'N/A', 'ATT_036', 'Risked Locations', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00118', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(920, 'Risk', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_037', 'Risked Organization Units', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00119', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(921, 'Risk', 'Relationship', 'Business_Capability', 'N/A', 'ATT_038', 'Risked Business Capabilities', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00199', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(922, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Risk Response', 'No', 'N/A', 'N/A', 'List', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'Null;Accept;Mitigate;Transfer;Avoid', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(923, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Risk Mitigation Plan', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(924, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Remarks on Risked Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(925, 'Risk', 'System', 'N/A', 'N/A', 'ATT_042', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(926, 'Risk', 'System', 'N/A', 'N/A', 'ATT_043', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(927, 'Risk', 'System', 'N/A', 'N/A', 'ATT_044', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(928, 'Risk', 'System', 'N/A', 'N/A', 'ATT_045', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(929, 'Risk', 'System', 'N/A', 'N/A', 'ATT_046', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(930, 'Risk', 'System', 'N/A', 'N/A', 'ATT_047', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(931, 'Risk', 'System', 'N/A', 'N/A', 'ATT_048', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(932, 'Risk', 'System', 'N/A', 'N/A', 'ATT_049', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(933, 'Risk', 'System', 'N/A', 'N/A', 'ATT_050', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(934, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(935, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(936, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(937, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(938, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Program;Project;Initiative;Work Stream;Change', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(939, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(940, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Lifecycle Phase', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Initiation;Planning;Execution;Monitoring & Control;Closure', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(941, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Lifecycle Subphase', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null:Null;RFP Draft;RFP Approved;RFP Published;Vendor Selected:Null;Plan Approved;Resources Assigned;Kicked-Off:Null;Requirements Gathering;Design;Develop;Test:Null;Review;Verify;Report;Advisory:Null;Post Go-Live Assessment;Sign-Off', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(942, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(943, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(944, 'Work_Package', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00314', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(945, 'Work_Package', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00315', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(946, 'Work_Package', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00316', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(947, 'Work_Package', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00317', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(948, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(949, 'Work_Package', 'Relationship', 'N/A', 'Actor', 'ATT_015', 'Assigned Team', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Team', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00055', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(950, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Team', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Team', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(951, 'Work_Package', 'Relationship', 'Requirement', 'N/A', 'ATT_017', 'Addressed Requirements', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Requirements & Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00334', 'Multiple', 'N/A', 'Association', 'Addresses', '1', NULL, '2022-02-02 11:53:03'),
(952, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Requirements & Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(953, 'Work_Package', 'Relationship', 'Gap', 'N/A', 'ATT_019', 'Addressed Gaps', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Requirements & Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00146', 'Multiple', 'N/A', 'Aggregation', 'Addresses', '1', NULL, '2022-02-02 11:53:03'),
(954, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Requirements & Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(955, 'Work_Package', 'Relationship', 'Work_Package', 'N/A', 'ATT_021', 'Composed of Work Packages', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00318', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(956, 'Work_Package', 'Relationship', 'N/A', 'Work_Package', 'ATT_022', 'Part of Work Packages', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00318', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(957, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Remarks on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(958, 'Work_Package', 'Relationship', 'Work_Package', 'N/A', 'ATT_024', 'Depends on Work Packages', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Dependancy', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00319', 'Multiple', 'Unlimited', 'Association', 'Depends on', '1', NULL, '2022-02-02 11:53:03'),
(959, 'Work_Package', 'Relationship', 'N/A', 'Work_Package', 'ATT_025', 'Dependent Work Packages', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Dependancy', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00319', 'Multiple', 'Unlimited', 'Association', 'Dependent', '1', NULL, '2022-02-02 11:53:03'),
(960, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Dependancy', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Dependancy', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(961, 'Work_Package', 'Relationship', 'N/A', 'Principle', 'ATT_027', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00321', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(962, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(963, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(964, 'Work_Package', 'Relationship', 'N/A', 'Standard', 'ATT_030', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00322', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(965, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(966, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(967, 'Work_Package', 'Relationship', 'N/A', 'Risk', 'ATT_033', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00320', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(968, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(969, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_035', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(970, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_036', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(971, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_037', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(972, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_038', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(973, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_039', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(974, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_040', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(975, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_041', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(976, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_042', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(977, 'Work_Package', 'System', 'N/A', 'N/A', 'ATT_043', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(978, 'Work_Package', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(979, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(980, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(981, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(982, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(983, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(984, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(985, 'Architecture_State', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_07', 'Associated to Organization Units', 'Yes', 'Shared', 'Associated to Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00329', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(986, 'Architecture_State', 'Relationship', 'Role', 'N/A', 'ATT_08', 'Associated to Roles', 'Yes', 'Shared', 'Associated to Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00331', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(987, 'Architecture_State', 'Relationship', 'Domain', 'N/A', 'ATT_09', 'Associated to Domains', 'Yes', 'Shared', 'Associated to Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00333', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(988, 'Architecture_State', 'Relationship', 'Location', 'N/A', 'ATT_010', 'Associated to Locations', 'Yes', 'Shared', 'Associated to Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00327', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(989, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Remarks on Organization Association', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(990, 'Architecture_State', 'Relationship', 'Application_Component', 'N/A', 'ATT_012', 'Associated to Application Components', 'Yes', 'Shared', 'Associated to Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00024', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(991, 'Architecture_State', 'Relationship', 'Application_Interface', 'N/A', 'ATT_013', 'Associated to Application Interfaces', 'Yes', 'Shared', 'Associated to Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00158', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(992, 'Architecture_State', 'Relationship', 'Application_Function', 'N/A', 'ATT_014', 'Associated to Application Functions', 'Yes', 'Shared', 'Associated to Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00163', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(993, 'Architecture_State', 'Relationship', 'Application_Service', 'N/A', 'ATT_015', 'Associated to Application Services', 'Yes', 'Shared', 'Associated to Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00144', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(994, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Remarks on Application Association', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(995, 'Architecture_State', 'Relationship', 'Business_Process', 'N/A', 'ATT_017', 'Associated to Business Processes', 'Yes', 'Shared', 'Associated to Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00184', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(996, 'Architecture_State', 'Relationship', 'Business_Function', 'N/A', 'ATT_018', 'Associated to Business Functions', 'Yes', 'Shared', 'Associated to Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00181', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(997, 'Architecture_State', 'Relationship', 'Service', 'N/A', 'ATT_019', 'Associated to Services', 'Yes', 'Shared', 'Associated to Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00186', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(998, 'Architecture_State', 'Relationship', 'Business_Capability', 'N/A', 'ATT_020', 'Associated to Business Capabilities', 'Yes', 'Shared', 'Associated to Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00188', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(999, 'Architecture_State', 'Relationship', 'Value_Stream', 'N/A', 'ATT_021', 'Associated to Value Streams', 'Yes', 'Shared', 'Associated to Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00305', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1000, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Business Association', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1001, 'Architecture_State', 'Relationship', 'Data_Object', 'N/A', 'ATT_023', 'Associated to Data Objects', 'Yes', 'Shared', 'Associated to Data Objects', 'Object', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00217', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1002, 'Architecture_State', 'Relationship', 'Data_Component', 'N/A', 'ATT_024', 'Associated to Data Components', 'Yes', 'Shared', 'Associated to Data Objects', 'Object', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00233', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1003, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Remarks on Data Association', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1004, 'Architecture_State', 'Relationship', 'Principle', 'N/A', 'ATT_026', 'Associated to Principles', 'Yes', 'Shared', 'Associated to Governance Objects', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00085', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1005, 'Architecture_State', 'Relationship', 'Standard', 'N/A', 'ATT_027', 'Associated to Standards', 'Yes', 'Shared', 'Associated to Governance Objects', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00325', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1006, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Remarks on Governance Association', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1007, 'Architecture_State', 'Relationship', 'Technology_Node', 'N/A', 'ATT_029', 'Associated to Technology Nodes', 'Yes', 'Shared', 'Associated to Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00257', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1008, 'Architecture_State', 'Relationship', 'Technology_Product', 'N/A', 'ATT_030', 'Associated to Technology Products', 'Yes', 'Shared', 'Associated to Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00240', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1009, 'Architecture_State', 'Relationship', 'Technology_Service', 'N/A', 'ATT_031', 'Associated to Technology Services', 'Yes', 'Shared', 'Associated to Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00273', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1010, 'Architecture_State', 'Relationship', 'Communication_Network', 'N/A', 'ATT_032', 'Associated to Communication Networks', 'Yes', 'Shared', 'Associated to Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00285', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1011, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Remarks on Technology Association', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1012, 'Architecture_State', 'Relationship', 'N/A', 'Gap', 'ATT_034', 'Associated with Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00027', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1013, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1014, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_036', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1015, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_037', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1016, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_038', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1017, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_039', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1018, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_040', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1019, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_041', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1020, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_042', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1021, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_043', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1022, 'Architecture_State', 'System', 'N/A', 'N/A', 'ATT_044', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1023, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1024, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1025, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1026, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1027, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Business;Application;Data;Technology;Governance;Organization', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1028, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1029, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1030, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1031, 'Gap', 'Relationship', 'Application_Component', 'N/A', 'ATT_08', 'Associated Application Component', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00023', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1032, 'Gap', 'Relationship', 'Application_Interface', 'N/A', 'ATT_09', 'Associated Application Interface', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00157', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1033, 'Gap', 'Relationship', 'Application_Function', 'N/A', 'ATT_010', 'Associated Application Function', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00162', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1034, 'Gap', 'Relationship', 'Application_Service', 'N/A', 'ATT_011', 'Associated Application Service', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00143', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1035, 'Gap', 'Relationship', 'Business_Process', 'N/A', 'ATT_012', 'Associated Business Process', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00183', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1036, 'Gap', 'Relationship', 'Business_Function', 'N/A', 'ATT_013', 'Associated Business Function', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00180', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1037, 'Gap', 'Relationship', 'Service', 'N/A', 'ATT_014', 'Associated Service', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00185', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1038, 'Gap', 'Relationship', 'Business_Capability', 'N/A', 'ATT_015', 'Associated Business Capability', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00187', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1039, 'Gap', 'Relationship', 'Value_Stream', 'N/A', 'ATT_016', 'Associated Value Stream', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00304', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1040, 'Gap', 'Relationship', 'Data_Object', 'N/A', 'ATT_017', 'Associated Data Object', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00216', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1041, 'Gap', 'Relationship', 'Data_Component', 'N/A', 'ATT_018', 'Associated Data Component', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00232', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1042, 'Gap', 'Relationship', 'Principle', 'N/A', 'ATT_019', 'Associated Principle', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00323', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1043, 'Gap', 'Relationship', 'Standard', 'N/A', 'ATT_020', 'Associated Standard', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00324', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1044, 'Gap', 'Relationship', 'Domain', 'N/A', 'ATT_021', 'Associated Domain', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00332', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1045, 'Gap', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_022', 'Associated Organization Unit', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00328', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1046, 'Gap', 'Relationship', 'Role', 'N/A', 'ATT_023', 'Associated Role', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00330', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1047, 'Gap', 'Relationship', 'Location', 'N/A', 'ATT_024', 'Associated Location', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00326', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1048, 'Gap', 'Relationship', 'Technology_Node', 'N/A', 'ATT_025', 'Associated Technology Node', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00256', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1049, 'Gap', 'Relationship', 'Technology_Product', 'N/A', 'ATT_026', 'Associated Technology Product', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00239', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1050, 'Gap', 'Relationship', 'Technology_Service', 'N/A', 'ATT_027', 'Associated Technology Service', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00272', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1051, 'Gap', 'Relationship', 'Communication_Network', 'N/A', 'ATT_028', 'Associated Communication Network', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00284', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1052, 'Gap', 'Relationship', 'Architecture_State', 'N/A', 'ATT_029', 'Gap Between Architecture States', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00027', 'Multiple', '2.0', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1053, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Gap Status', 'No', 'N/A', 'N/A', 'List', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'Null;New Object;Deleted Object;Changed Object', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1054, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Remarks on Gap Definition', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1055, 'Gap', 'Relationship', 'Gap', 'N/A', 'ATT_032', 'Composed of Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00028', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1056, 'Gap', 'Relationship', 'N/A', 'Gap', 'ATT_033', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00028', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1057, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Gaps Composition', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1058, 'Gap', 'Relationship', 'Gap', 'N/A', 'ATT_035', 'Aggregates Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00029', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1059, 'Gap', 'Relationship', 'N/A', 'Gap', 'ATT_036', 'Aggregated by Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00029', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1060, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Gaps Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1061, 'Gap', 'Relationship', 'Gap', 'N/A', 'ATT_038', 'Specialized Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00030', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1062, 'Gap', 'Relationship', 'N/A', 'Gap', 'ATT_039', 'Specialized by Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00030', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1063, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Remarks on Gaps Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Gap Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1064, 'Gap', 'Relationship', 'N/A', 'Work_Package', 'ATT_041', 'Addressed by Work Package', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Gap Planning', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00146', 'Single', 'N/A', 'Aggregation', 'Addressed by', '1', NULL, '2022-02-02 11:53:03'),
(1065, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Remarks on Gap Planning', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Gap Planning', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1066, 'Gap', 'System', 'N/A', 'N/A', 'ATT_043', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1067, 'Gap', 'System', 'N/A', 'N/A', 'ATT_044', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1068, 'Gap', 'System', 'N/A', 'N/A', 'ATT_045', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1069, 'Gap', 'System', 'N/A', 'N/A', 'ATT_046', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1070, 'Gap', 'System', 'N/A', 'N/A', 'ATT_047', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1071, 'Gap', 'System', 'N/A', 'N/A', 'ATT_048', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1072, 'Gap', 'System', 'N/A', 'N/A', 'ATT_049', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1073, 'Gap', 'System', 'N/A', 'N/A', 'ATT_050', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1074, 'Gap', 'System', 'N/A', 'N/A', 'ATT_051', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1075, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1076, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1077, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1078, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1079, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Business Requirement;Stakeholder Requirement;Solution Requirement;Transition Requirement;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1080, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1081, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1082, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1083, 'Requirement', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Requester', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00287', 'Single', 'N/A', 'Association', 'is Requested by', '1', NULL, '2022-02-02 11:53:03'),
(1084, 'Requirement', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_09', 'Requesting Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00288', 'Single', 'N/A', 'Association', 'is Requested by', '1', NULL, '2022-02-02 11:53:03'),
(1085, 'Requirement', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Responder', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00289', 'Single', 'N/A', 'Association', 'is Responded by', '1', NULL, '2022-02-02 11:53:03'),
(1086, 'Requirement', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Responding Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00290', 'Single', 'N/A', 'Association', 'is Responded by', '1', NULL, '2022-02-02 11:53:03'),
(1087, 'Requirement', 'Relationship', 'Domain', 'N/A', 'ATT_012', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00291', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1088, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1089, 'Requirement', 'Relationship', 'N/A', 'Application_Component', 'ATT_014', 'Realized by Application Components', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00022', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1090, 'Requirement', 'Relationship', 'N/A', 'Application_Service', 'ATT_015', 'Realized by Application Services', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00142', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1091, 'Requirement', 'Relationship', 'N/A', 'Application_Interface', 'ATT_016', 'Realized by Application Interfaces', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00156', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1092, 'Requirement', 'Relationship', 'N/A', 'Technology_Service', 'ATT_017', 'Realized by Technology Services', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00271', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1093, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1094, 'Requirement', 'Relationship', 'N/A', 'Principle', 'ATT_019', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Principles', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00292', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1095, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Principles', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1096, 'Requirement', 'Relationship', 'N/A', 'Work_Package', 'ATT_021', 'Addressed by Work Packages', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Work Package', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00334', 'Multiple', 'Unlimited', 'Association', 'Addressed by', '1', NULL, '2022-02-02 11:53:03'),
(1097, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Work Packages', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Work Package', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1098, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_023', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1099, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_024', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1100, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_025', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1101, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_026', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1102, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_027', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1103, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_028', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1104, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_029', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1105, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_030', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1106, 'Requirement', 'System', 'N/A', 'N/A', 'ATT_031', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1107, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1108, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1109, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1110, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1111, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Business;IT', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1112, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1113, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1114, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1115, 'Domain', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Domain Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00073', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1116, 'Domain', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Domain Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00074', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1117, 'Domain', 'Relationship', 'Domain', 'N/A', 'ATT_010', 'Subordinate Domains', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00075', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(1118, 'Domain', 'Relationship', 'N/A', 'Domain', 'ATT_011', 'Superior Domains', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00075', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(1119, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1120, 'Domain', 'Relationship', 'N/A', 'Application_Component', 'ATT_013', 'Assigned Application Components', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00007', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1121, 'Domain', 'Relationship', 'N/A', 'Application_Interface', 'ATT_014', 'Assigned Application Interfaces', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00152', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1122, 'Domain', 'Relationship', 'N/A', 'Application_Function', 'ATT_015', 'Assigned Application Functions', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00168', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1123, 'Domain', 'Relationship', 'N/A', 'Application_Service', 'ATT_016', 'Assigned Application Services', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00129', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1124, 'Domain', 'Relationship', 'N/A', 'Business_Process', 'ATT_017', 'Assigned Business Processes', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00048', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1125, 'Domain', 'Relationship', 'N/A', 'Business_Function', 'ATT_018', 'Assigned Business Functions', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00173', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1126, 'Domain', 'Relationship', 'N/A', 'Service', 'ATT_019', 'Assigned Services', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00061', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1127, 'Domain', 'Relationship', 'N/A', 'Business_Capability', 'ATT_020', 'Assigned Business Capabilities', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00192', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1128, 'Domain', 'Relationship', 'N/A', 'Value_Stream', 'ATT_021', 'Assigned Value Streams', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00303', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1129, 'Domain', 'Relationship', 'N/A', 'Course_of_Action', 'ATT_022', 'Assigned Course of Actions', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00297', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1130, 'Domain', 'Relationship', 'N/A', 'Data_Object', 'ATT_023', 'Assigned Data Objects', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00211', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1131, 'Domain', 'Relationship', 'N/A', 'Data_Component', 'ATT_024', 'Assigned Data Components', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00228', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1132, 'Domain', 'Relationship', 'N/A', 'Driver', 'ATT_025', 'Assigned Drivers', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00312', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1133, 'Domain', 'Relationship', 'N/A', 'Goal', 'ATT_026', 'Assigned Goals', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00097', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1134, 'Domain', 'Relationship', 'N/A', 'Principle', 'ATT_027', 'Assigned Principles', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00079', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1135, 'Domain', 'Relationship', 'N/A', 'Standard', 'ATT_028', 'Assigned Standards', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00101', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1136, 'Domain', 'Relationship', 'N/A', 'Risk', 'ATT_029', 'Assigned Risks', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00084', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1137, 'Domain', 'Relationship', 'N/A', 'Work_Package', 'ATT_030', 'Assigned Work Packages', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00317', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1138, 'Domain', 'Relationship', 'N/A', 'Requirement', 'ATT_031', 'Assigned Requirements', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00291', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1139, 'Domain', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_032', 'Assigned Organization Units', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00087', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1140, 'Domain', 'Relationship', 'N/A', 'Actor', 'ATT_033', 'Assigned Actors', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00052', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1141, 'Domain', 'Relationship', 'N/A', 'Role', 'ATT_034', 'Assigned Roles', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00104', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1142, 'Domain', 'Relationship', 'N/A', 'Location', 'ATT_035', 'Assigned Locations', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00116', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1143, 'Domain', 'Relationship', 'N/A', 'Technology_Node', 'ATT_036', 'Assigned Technology Nodes', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00251', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1144, 'Domain', 'Relationship', 'N/A', 'Technology_Product', 'ATT_037', 'Assigned Technology Products', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00244', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1145, 'Domain', 'Relationship', 'N/A', 'Technology_Service', 'ATT_038', 'Assigned Technology Services', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00264', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1146, 'Domain', 'Relationship', 'N/A', 'Communication_Network', 'ATT_039', 'Assigned Communication Networks', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00282', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1147, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Remarks on Objects Assignment', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1148, 'Domain', 'Relationship', 'N/A', 'Gap', 'ATT_041', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00332', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1149, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1150, 'Domain', 'Relationship', 'N/A', 'Architecture_State', 'ATT_043', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '4.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00333', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1151, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '4.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1152, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1153, 'Domain', 'System', 'N/A', 'N/A', 'ATT_046', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1154, 'Domain', 'System', 'N/A', 'N/A', 'ATT_047', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1155, 'Domain', 'System', 'N/A', 'N/A', 'ATT_048', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1156, 'Domain', 'System', 'N/A', 'N/A', 'ATT_049', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1157, 'Domain', 'System', 'N/A', 'N/A', 'ATT_050', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1158, 'Domain', 'System', 'N/A', 'N/A', 'ATT_051', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1159, 'Domain', 'System', 'N/A', 'N/A', 'ATT_052', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1160, 'Domain', 'System', 'N/A', 'N/A', 'ATT_053', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1161, 'Domain', 'System', 'N/A', 'N/A', 'ATT_054', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1162, 'Domain', 'Primary', 'N/A', 'N/A', 'ATT_055', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1163, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1164, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1165, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1166, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Branch;Sector;Division;General Department;Department;Section;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1167, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1168, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1169, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1170, 'Organization_Unit', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Unit Head/Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00088', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1171, 'Organization_Unit', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_09', 'Subordinate Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00086', 'Multiple', 'Unlimited', 'Association', 'Is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(1172, 'Organization_Unit', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Superior Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00086', 'Multiple', 'Unlimited', 'Association', 'Is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(1173, 'Organization_Unit', 'Relationship', 'Domain', 'N/A', 'ATT_011', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00087', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1174, 'Organization_Unit', 'Relationship', 'Application_Component', 'N/A', 'ATT_012', 'Owns Application Components', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00004', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1175, 'Organization_Unit', 'Relationship', 'Business_Process', 'N/A', 'ATT_013', 'Owns Business Processes', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00033', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1176, 'Organization_Unit', 'Relationship', 'Service', 'N/A', 'ATT_014', 'Owns Service', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00059', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1177, 'Organization_Unit', 'Relationship', 'Principle', 'N/A', 'ATT_015', 'Owns Principles', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00078', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1178, 'Organization_Unit', 'Relationship', 'Risk', 'N/A', 'ATT_016', 'Owns Risks', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00082', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1179, 'Organization_Unit', 'Relationship', 'Goal', 'N/A', 'ATT_017', 'Owns Goals', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00096', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1180, 'Organization_Unit', 'Relationship', 'Standard', 'N/A', 'ATT_018', 'Owns Standards', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00100', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1181, 'Organization_Unit', 'Relationship', 'Application_Service', 'N/A', 'ATT_019', 'Owns Application Services', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00126', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1182, 'Organization_Unit', 'Relationship', 'Application_Interface', 'N/A', 'ATT_020', 'Owns Application Interfaces', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00150', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1183, 'Organization_Unit', 'Relationship', 'Application_Function', 'N/A', 'ATT_021', 'Owns Application Functions', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00166', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1184, 'Organization_Unit', 'Relationship', 'Service_Contract', 'N/A', 'ATT_022', 'Owns Service Contracts', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00201', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1185, 'Organization_Unit', 'Relationship', 'Data_Object', 'N/A', 'ATT_023', 'Owns Data Objects', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00212', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1186, 'Organization_Unit', 'Relationship', 'Data_Component', 'N/A', 'ATT_024', 'Owns Data Components', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00226', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1187, 'Organization_Unit', 'Relationship', 'Technology_Product', 'N/A', 'ATT_025', 'Owns Technology Products', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00243', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1188, 'Organization_Unit', 'Relationship', 'Technology_Node', 'N/A', 'ATT_026', 'Owns Technology Nodes', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00249', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1189, 'Organization_Unit', 'Relationship', 'Technology_Service', 'N/A', 'ATT_027', 'Owns Technology Service', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00262', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1190, 'Organization_Unit', 'Relationship', 'Communication_Network', 'N/A', 'ATT_028', 'Owns Communication Networks', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00280', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1191, 'Organization_Unit', 'Relationship', 'Driver', 'N/A', 'ATT_029', 'Owns Drivers', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00311', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1192, 'Organization_Unit', 'Relationship', 'Work_Package', 'N/A', 'ATT_030', 'Owns Work Packages', 'Yes', 'Shared', 'Objects Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00316', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1193, 'Organization_Unit', 'Relationship', 'Application_Component', 'N/A', 'ATT_031', 'Manages Application Components', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00005', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1194, 'Organization_Unit', 'Relationship', 'Application_Service', 'N/A', 'ATT_032', 'Manages Application Services', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00127', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1195, 'Organization_Unit', 'Relationship', 'Application_Interface', 'N/A', 'ATT_033', 'Manages Application Interfaces', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00151', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1196, 'Organization_Unit', 'Relationship', 'Application_Function', 'N/A', 'ATT_034', 'Manages Application Functions', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00167', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1197, 'Organization_Unit', 'Relationship', 'Data_Component', 'N/A', 'ATT_035', 'Manages Data Components', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00227', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1198, 'Organization_Unit', 'Relationship', 'Technology_Node', 'N/A', 'ATT_036', 'Manages Technology Nodes', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00250', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1199, 'Organization_Unit', 'Relationship', 'Technology_Service', 'N/A', 'ATT_037', 'Manages Technology Services', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00263', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1200, 'Organization_Unit', 'Relationship', 'Communication_Network', 'N/A', 'ATT_038', 'Manages Communication Networks', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00281', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1201, 'Organization_Unit', 'Relationship', 'N/A', 'Service', 'ATT_039', 'Served by Services', 'Yes', 'Shared', 'Served by', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00063', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1202, 'Organization_Unit', 'Relationship', 'N/A', 'Application_Component', 'ATT_040', 'Served by Application Components', 'Yes', 'Shared', 'Served by', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00006', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1203, 'Organization_Unit', 'Relationship', 'N/A', 'Application_Service', 'ATT_041', 'Served by Application Services', 'Yes', 'Shared', 'Served by', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00128', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1204, 'Organization_Unit', 'Relationship', 'N/A', 'Business_Function', 'ATT_042', 'Served by Business Functions', 'Yes', 'Shared', 'Served by', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00175', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1205, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1206, 'Organization_Unit', 'Relationship', 'N/A', 'Actor', 'ATT_044', 'Assigned Actors', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00056', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1207, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Remarks on Actors Assignment', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1208, 'Organization_Unit', 'Relationship', 'Role', 'N/A', 'ATT_046', 'Aggregated Roles', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00091', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1209, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Roles Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1210, 'Organization_Unit', 'Relationship', 'Business_Function', 'N/A', 'ATT_048', 'Composed of Business Function', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00102', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1211, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Remarks on Business Function Composition', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1212, 'Organization_Unit', 'Relationship', 'Requirement', 'N/A', 'ATT_050', 'Requested Requirements', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00288', 'Multiple', 'Unlimited', 'Association', 'Requests', '1', NULL, '2022-02-02 11:53:03'),
(1213, 'Organization_Unit', 'Relationship', 'Requirement', 'N/A', 'ATT_051', 'Responded Requirements', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00290', 'Multiple', 'Unlimited', 'Association', 'Responds', '1', NULL, '2022-02-02 11:53:03'),
(1214, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1215, 'Organization_Unit', 'Relationship', 'Business_Capability', 'N/A', 'ATT_053', 'Supported Capabilities', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00103', 'Multiple', 'Unlimited', 'Association', 'Supports', '1', NULL, '2022-02-02 11:53:03'),
(1216, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Remarks on Capability Support', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1217, 'Organization_Unit', 'Relationship', 'Business_Process', 'N/A', 'ATT_055', 'Supported Processes', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00089', 'Multiple', 'Unlimited', 'Assignment', 'Supports', '1', NULL, '2022-02-02 11:53:03'),
(1218, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_056', 'Remarks on Process Support', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1219, 'Organization_Unit', 'Relationship', 'Course_of_Action', 'N/A', 'ATT_057', 'Supported Course of Actions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00295', 'Multiple', 'Unlimited', 'Assignment', 'Supports', '1', NULL, '2022-02-02 11:53:03'),
(1220, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_058', 'Remarks on Course of Actions', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1221, 'Organization_Unit', 'Relationship', 'Value_Stream', 'N/A', 'ATT_059', 'Supported Value Streams', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00301', 'Multiple', 'Unlimited', 'Assignment', 'Supports', '1', NULL, '2022-02-02 11:53:03'),
(1222, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_060', 'Remarks on Value Streams', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1223, 'Organization_Unit', 'Relationship', 'Service_Contract', 'N/A', 'ATT_061', 'Contracts/Licenses Partnership', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Partnership', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00209', 'Multiple', 'Unlimited', 'Association', 'Partner in', '1', NULL, '2022-02-02 11:53:03'),
(1224, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_062', 'Remarks on Partnership', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Partnership', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1225, 'Organization_Unit', 'Relationship', 'Location', 'N/A', 'ATT_063', 'Location', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00090', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1226, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_064', 'Remarks on Location', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1227, 'Organization_Unit', 'Relationship', 'N/A', 'Risk', 'ATT_065', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00119', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1228, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_066', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1229, 'Organization_Unit', 'Relationship', 'N/A', 'Gap', 'ATT_067', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00328', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1230, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_068', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1231, 'Organization_Unit', 'Relationship', 'N/A', 'Architecture_State', 'ATT_069', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00329', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1232, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_070', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1233, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_071', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1234, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_072', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1235, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_073', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1236, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_074', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1237, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_075', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1238, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_076', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1239, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_077', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1240, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_078', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1241, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_079', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1242, 'Organization_Unit', 'System', 'N/A', 'N/A', 'ATT_080', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1243, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_081', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1244, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1245, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1246, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1247, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Committee;Working Group;Employee;Vendor;Customer;Supplier;Partner;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1248, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1249, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Internal/External', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Internal;External', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1250, 'Actor', 'Relationship', 'N/A', 'Actor', 'ATT_07', 'Superior', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00049', 'Single', 'N/A', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(1251, 'Actor', 'Relationship', 'Actor', 'N/A', 'ATT_08', 'Subordinates', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00049', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(1252, 'Actor', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_09', 'Assigned to Organization Unit', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00056', 'Single', 'N/A', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1253, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1254, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1255, 'Actor', 'Relationship', 'N/A', 'Role', 'ATT_012', 'Assigned Roles', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00050', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1256, 'Actor', 'Relationship', 'Application_Component', 'N/A', 'ATT_013', 'Owns Application Components', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00001', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1257, 'Actor', 'Relationship', 'Business_Process', 'N/A', 'ATT_014', 'Owns Business Processes', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00031', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1258, 'Actor', 'Relationship', 'Service', 'N/A', 'ATT_015', 'Owns Services', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00057', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1259, 'Actor', 'Relationship', 'Data_Object', 'N/A', 'ATT_016', 'Owns Data Objects', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00092', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1260, 'Actor', 'Relationship', 'Domain', 'N/A', 'ATT_017', 'Owns Domains', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00073', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1261, 'Actor', 'Relationship', 'Location', 'N/A', 'ATT_018', 'Owns Locations', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00114', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1262, 'Actor', 'Relationship', 'Application_Service', 'N/A', 'ATT_019', 'Owns Application Services', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00124', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1263, 'Actor', 'Relationship', 'Service_Contract', 'N/A', 'ATT_020', 'Owns Service Contracts', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00145', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1264, 'Actor', 'Relationship', 'Application_Interface', 'N/A', 'ATT_021', 'Owns Application Interfaces', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00147', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1265, 'Actor', 'Relationship', 'Application_Function', 'N/A', 'ATT_022', 'Owns Application Functions', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00164', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1266, 'Actor', 'Relationship', 'Business_Function', 'N/A', 'ATT_023', 'Owns Business Functions', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00169', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1267, 'Actor', 'Relationship', 'Data_Component', 'N/A', 'ATT_024', 'Owns Data Components', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00223', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1268, 'Actor', 'Relationship', 'Technology_Product', 'N/A', 'ATT_025', 'Owns Technology Products', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00241', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1269, 'Actor', 'Relationship', 'Technology_Node', 'N/A', 'ATT_026', 'Owns Technology Nodes', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00247', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1270, 'Actor', 'Relationship', 'Technology_Service', 'N/A', 'ATT_027', 'Owns Technology Service', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00259', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1271, 'Actor', 'Relationship', 'Communication_Network', 'N/A', 'ATT_028', 'Owns Communication Networks', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00278', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1272, 'Actor', 'Relationship', 'Course_of_Action', 'N/A', 'ATT_029', 'Owns Course of Actions', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00293', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1273, 'Actor', 'Relationship', 'Value_Stream', 'N/A', 'ATT_030', 'Owns Value Streams', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00299', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1274, 'Actor', 'Relationship', 'Driver', 'N/A', 'ATT_031', 'Owns Drivers', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00309', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1275, 'Actor', 'Relationship', 'Work_Package', 'N/A', 'ATT_032', 'Owns Work Packages', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00314', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1276, 'Actor', 'Relationship', 'Business_Capability', 'N/A', 'ATT_033', 'Owns Business Capabilities', 'Yes', 'Shared', 'Ownership', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00189', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1277, 'Actor', 'Relationship', 'Business_Process', 'N/A', 'ATT_034', 'Manages Business Processes', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00032', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1278, 'Actor', 'Relationship', 'Service', 'N/A', 'ATT_035', 'Manages Services', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00058', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1279, 'Actor', 'Relationship', 'Domain', 'N/A', 'ATT_036', 'Manages Domains', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00074', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1280, 'Actor', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_037', 'Manages Organization Units', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00088', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1281, 'Actor', 'Relationship', 'Data_Object', 'N/A', 'ATT_038', 'Manages Data Objects', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00093', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1282, 'Actor', 'Relationship', 'Location', 'N/A', 'ATT_039', 'Manages Locations', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00115', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1283, 'Actor', 'Relationship', 'Application_Function', 'N/A', 'ATT_040', 'Manages Application Functions', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00165', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1284, 'Actor', 'Relationship', 'Business_Function', 'N/A', 'ATT_041', 'Manages Business Functions', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00170', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1285, 'Actor', 'Relationship', 'Service_Contract', 'N/A', 'ATT_042', 'Manages Service Contracts', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00200', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1286, 'Actor', 'Relationship', 'Technology_Product', 'N/A', 'ATT_043', 'Manages Technology Products', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00242', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1287, 'Actor', 'Relationship', 'Communication_Network', 'N/A', 'ATT_044', 'Manages Communication Networks', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00279', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1288, 'Actor', 'Relationship', 'Course_of_Action', 'N/A', 'ATT_045', 'Manages Course of Actions', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00294', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1289, 'Actor', 'Relationship', 'Value_Stream', 'N/A', 'ATT_046', 'Manages Value Streams', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00300', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1290, 'Actor', 'Relationship', 'Driver', 'N/A', 'ATT_047', 'Manages Drivers', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00310', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1291, 'Actor', 'Relationship', 'Work_Package', 'N/A', 'ATT_048', 'Manages Work Packages', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00315', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1292, 'Actor', 'Relationship', 'Business_Capability', 'N/A', 'ATT_049', 'Manages Business Capabilities', 'Yes', 'Shared', 'Objects Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00190', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-02-02 11:53:03'),
(1293, 'Actor', 'Relationship', 'Application_Component', 'N/A', 'ATT_050', 'Manages Development of Application Components', 'Yes', 'Shared', 'Development Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00002', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-02-02 11:53:03'),
(1294, 'Actor', 'Relationship', 'Application_Interface', 'N/A', 'ATT_051', 'Manages Development of Application Interfaces', 'Yes', 'Shared', 'Development Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00148', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-02-02 11:53:03'),
(1295, 'Actor', 'Relationship', 'Data_Component', 'N/A', 'ATT_052', 'Manages Development of Data Components', 'Yes', 'Shared', 'Development Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00224', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-02-02 11:53:03'),
(1296, 'Actor', 'Relationship', 'Technology_Node', 'N/A', 'ATT_053', 'Manages Development of Technology Nodes', 'Yes', 'Shared', 'Development Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00248', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-02-02 11:53:03'),
(1297, 'Actor', 'Relationship', 'Technology_Service', 'N/A', 'ATT_054', 'Manages Development of Technology Services', 'Yes', 'Shared', 'Development Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00260', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-02-02 11:53:03'),
(1298, 'Actor', 'Relationship', 'Application_Component', 'N/A', 'ATT_055', 'Manages Operation of Application Components', 'Yes', 'Shared', 'Operation Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00003', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-02-02 11:53:03'),
(1299, 'Actor', 'Relationship', 'Application_Service', 'N/A', 'ATT_056', 'Manages Operation of Application Services', 'Yes', 'Shared', 'Operation Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00125', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-02-02 11:53:03'),
(1300, 'Actor', 'Relationship', 'Application_Interface', 'N/A', 'ATT_057', 'Manages Operation of Application Interfaces', 'Yes', 'Shared', 'Operation Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00149', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-02-02 11:53:03'),
(1301, 'Actor', 'Relationship', 'Data_Component', 'N/A', 'ATT_058', 'Manages Operation of Data Components', 'Yes', 'Shared', 'Operation Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00225', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-02-02 11:53:03'),
(1302, 'Actor', 'Relationship', 'Technology_Node', 'N/A', 'ATT_059', 'Manages Operation of Technology Nodes', 'Yes', 'Shared', 'Operation Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00254', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-02-02 11:53:03'),
(1303, 'Actor', 'Relationship', 'Technology_Service', 'N/A', 'ATT_060', 'Manages Operation of Technology Services', 'Yes', 'Shared', 'Operation Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00261', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-02-02 11:53:03'),
(1304, 'Actor', 'Relationship', 'N/A', 'Service', 'ATT_061', 'Served by Services', 'Yes', 'Shared', 'Served by', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00051', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1305, 'Actor', 'Relationship', 'N/A', 'Business_Function', 'ATT_062', 'Served by Business Functions', 'Yes', 'Shared', 'Served by', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00174', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1306, 'Actor', 'Relationship', 'Domain', 'N/A', 'ATT_063', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00052', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1307, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_064', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1308, 'Actor', 'Relationship', 'Actor', 'N/A', 'ATT_065', 'Composed of Actor(s)', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00054', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1309, 'Actor', 'Relationship', 'N/A', 'Actor', 'ATT_066', 'Part of Actor(s)', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00054', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1310, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_067', 'Remarks on Actor Composition', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1311, 'Actor', 'Relationship', 'Requirement', 'N/A', 'ATT_068', 'Requested Requirements', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00287', 'Multiple', 'Unlimited', 'Association', 'Requests', '1', NULL, '2022-02-02 11:53:03'),
(1312, 'Actor', 'Relationship', 'Requirement', 'N/A', 'ATT_069', 'Responded Requirements', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00289', 'Multiple', 'Unlimited', 'Association', 'Responds', '1', NULL, '2022-02-02 11:53:03'),
(1313, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_070', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1314, 'Actor', 'Relationship', 'Work_Package', 'N/A', 'ATT_071', 'Assigned Work Packages', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00055', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1315, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_072', 'Remarks on Assignment', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Request & Support', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1316, 'Actor', 'Relationship', 'Risk', 'N/A', 'ATT_073', 'Owns Risks', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00053', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1317, 'Actor', 'Relationship', 'Goal', 'N/A', 'ATT_074', 'Owns Goals', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00094', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1318, 'Actor', 'Relationship', 'Principle', 'N/A', 'ATT_075', 'Owns Principles', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00076', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1319, 'Actor', 'Relationship', 'Standard', 'N/A', 'ATT_076', 'Owns Standards', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00098', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1320, 'Actor', 'Relationship', 'Risk', 'N/A', 'ATT_077', 'Manages Risks', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00081', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1321, 'Actor', 'Relationship', 'Goal', 'N/A', 'ATT_078', 'Manages Goals', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00095', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1322, 'Actor', 'Relationship', 'Principle', 'N/A', 'ATT_079', 'Manages Principles', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00077', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1323, 'Actor', 'Relationship', 'Standard', 'N/A', 'ATT_080', 'Manages Standards', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00099', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1324, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_081', 'Remarks on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1325, 'Actor', 'Relationship', 'Service_Contract', 'N/A', 'ATT_082', 'Contracts/Licenses Partnership', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Partnership', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00210', 'Multiple', 'Unlimited', 'Association', 'Partner in', '1', NULL, '2022-02-02 11:53:03'),
(1326, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_083', 'Remarks on Partnership', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Partnership', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1327, 'Actor', 'System', 'N/A', 'N/A', 'ATT_084', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1328, 'Actor', 'System', 'N/A', 'N/A', 'ATT_085', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1329, 'Actor', 'System', 'N/A', 'N/A', 'ATT_086', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1330, 'Actor', 'System', 'N/A', 'N/A', 'ATT_087', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1331, 'Actor', 'System', 'N/A', 'N/A', 'ATT_088', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1332, 'Actor', 'System', 'N/A', 'N/A', 'ATT_089', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1333, 'Actor', 'System', 'N/A', 'N/A', 'ATT_090', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1334, 'Actor', 'System', 'N/A', 'N/A', 'ATT_091', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1335, 'Actor', 'System', 'N/A', 'N/A', 'ATT_092', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1336, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_093', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1337, 'Actor', 'System', 'N/A', 'N/A', 'ATT_094', 'Serial Number', 'Yes', 'Tabular', 'Attachments', 'Number', '8.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1338, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_095', 'File Name', 'Yes', 'Tabular', 'Attachments', 'Text', '8.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1339, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_096', 'Note', 'Yes', 'Tabular', 'Attachments', 'Rich Text', '8.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1340, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_097', 'Display as Icon', 'No', 'N/A', 'N/A', 'CheckBox', '9.0', 'Appearance', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1341, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1342, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1343, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1344, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1345, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1346, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1347, 'Role', 'Relationship', 'Role', 'N/A', 'ATT_07', 'Subordinate Roles', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00105', 'Multiple', 'Unlimited', 'Association', 'Is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(1348, 'Role', 'Relationship', 'N/A', 'Role', 'ATT_08', 'Superior Roles', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00105', 'Multiple', 'Unlimited', 'Association', 'Is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(1349, 'Role', 'Relationship', 'Actor', 'N/A', 'ATT_09', 'Actors Assignment', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00050', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1350, 'Role', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Organization Unit(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00091', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1351, 'Role', 'Relationship', 'Domain', 'N/A', 'ATT_011', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00104', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1352, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1353, 'Role', 'Relationship', 'Business_Process', 'N/A', 'ATT_013', 'Process', 'Yes', 'Tabular', 'Process Assignment', 'Object', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00034', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1354, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Responsible', 'Yes', 'Tabular', 'Process Assignment', 'CheckBox', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1355, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Accountable', 'Yes', 'Tabular', 'Process Assignment', 'CheckBox', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1356, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Consulted', 'Yes', 'Tabular', 'Process Assignment', 'CheckBox', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1357, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Informed', 'Yes', 'Tabular', 'Process Assignment', 'CheckBox', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1358, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Process Assignment', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1359, 'Role', 'Relationship', 'Risk', 'N/A', 'ATT_019', 'Owns Risks', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00106', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1360, 'Role', 'Relationship', 'Goal', 'N/A', 'ATT_020', 'Owns Goals', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00109', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1361, 'Role', 'Relationship', 'Principle', 'N/A', 'ATT_021', 'Owns Principles', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00108', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1362, 'Role', 'Relationship', 'Standard', 'N/A', 'ATT_022', 'Owns Standards', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00107', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-02-02 11:53:03'),
(1363, 'Role', 'Relationship', 'Risk', 'N/A', 'ATT_023', 'Manages Risks', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00110', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1364, 'Role', 'Relationship', 'Goal', 'N/A', 'ATT_024', 'Manages Goals', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00113', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1365, 'Role', 'Relationship', 'Principle', 'N/A', 'ATT_025', 'Manages Principles', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00112', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1366, 'Role', 'Relationship', 'Standard', 'N/A', 'ATT_026', 'Manages Standards', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00111', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1367, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Remarks on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1368, 'Role', 'Relationship', 'N/A', 'Gap', 'ATT_028', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00330', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1369, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1370, 'Role', 'Relationship', 'N/A', 'Architecture_State', 'ATT_030', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00331', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1371, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1372, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1373, 'Role', 'System', 'N/A', 'N/A', 'ATT_033', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1374, 'Role', 'System', 'N/A', 'N/A', 'ATT_034', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1375, 'Role', 'System', 'N/A', 'N/A', 'ATT_035', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1376, 'Role', 'System', 'N/A', 'N/A', 'ATT_036', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1377, 'Role', 'System', 'N/A', 'N/A', 'ATT_037', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1378, 'Role', 'System', 'N/A', 'N/A', 'ATT_038', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1379, 'Role', 'System', 'N/A', 'N/A', 'ATT_039', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1380, 'Role', 'System', 'N/A', 'N/A', 'ATT_040', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1381, 'Role', 'System', 'N/A', 'N/A', 'ATT_041', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1382, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1383, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1384, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1385, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1386, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Country;Region;State;Province;City;Complex;Building;Data Center;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1387, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1388, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1389, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1390, 'Location', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Location Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00114', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1391, 'Location', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Location Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00115', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1392, 'Location', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Organization Unit(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00090', 'Multiple', 'N/A', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1393, 'Location', 'Relationship', 'Location', 'N/A', 'ATT_011', 'Composed of Locations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00117', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1394, 'Location', 'Relationship', 'N/A', 'Location', 'ATT_012', 'Part of Locations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00117', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1395, 'Location', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00116', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1396, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1397, 'Location', 'Relationship', 'N/A', 'Technology_Node', 'ATT_015', 'Located Technology Nodes', 'Yes', 'Shared', 'Located Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00252', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1398, 'Location', 'Relationship', 'N/A', 'Communication_Network', 'ATT_016', 'Located Communication Networks', 'Yes', 'Shared', 'Located Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00286', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1399, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Remarks on Architecture Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1400, 'Location', 'Relationship', 'N/A', 'Risk', 'ATT_018', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00118', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1401, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1402, 'Location', 'Relationship', 'N/A', 'Gap', 'ATT_020', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00326', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1403, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1404, 'Location', 'Relationship', 'N/A', 'Architecture_State', 'ATT_022', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00327', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1405, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1406, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1407, 'Location', 'System', 'N/A', 'N/A', 'ATT_025', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1408, 'Location', 'System', 'N/A', 'N/A', 'ATT_026', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1409, 'Location', 'System', 'N/A', 'N/A', 'ATT_027', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1410, 'Location', 'System', 'N/A', 'N/A', 'ATT_028', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1411, 'Location', 'System', 'N/A', 'N/A', 'ATT_029', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1412, 'Location', 'System', 'N/A', 'N/A', 'ATT_030', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1413, 'Location', 'System', 'N/A', 'N/A', 'ATT_031', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1414, 'Location', 'System', 'N/A', 'N/A', 'ATT_032', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1415, 'Location', 'System', 'N/A', 'N/A', 'ATT_033', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1416, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1417, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1418, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1419, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1420, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Infrastructure Node;Network Node;Storage Node;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1421, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1422, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1423, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1424, 'Technology_Node', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00247', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1425, 'Technology_Node', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00248', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1426, 'Technology_Node', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00254', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1427, 'Technology_Node', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00249', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1428, 'Technology_Node', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00250', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1429, 'Technology_Node', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00251', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1430, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1431, 'Technology_Node', 'Relationship', 'Technology_Product', 'N/A', 'ATT_015', 'Composed of Technologies', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00253', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1432, 'Technology_Node', 'Relationship', 'Technology_Node', 'N/A', 'ATT_016', 'Assigned to Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00258', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1433, 'Technology_Node', 'Relationship', 'N/A', 'Technology_Node', 'ATT_017', 'Assigned from Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00258', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1434, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1435, 'Technology_Node', 'Relationship', 'Application_Component', 'N/A', 'ATT_019', 'Utilized by Application Components', 'Yes', 'Shared', 'Utilized by Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00021', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1436, 'Technology_Node', 'Relationship', 'Application_Service', 'N/A', 'ATT_020', 'Utilized by Application Services', 'Yes', 'Shared', 'Utilized by Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00140', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1437, 'Technology_Node', 'Relationship', 'N/A', 'Application_Component', 'ATT_021', 'Deployed Application Components', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00336', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-02-02 11:53:03'),
(1438, 'Technology_Node', 'Relationship', 'N/A', 'Application_Service', 'ATT_022', 'Deployed Application Services', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00122', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-02-02 11:53:03'),
(1439, 'Technology_Node', 'Relationship', 'N/A', 'Data_Component', 'ATT_023', 'Deployed Data Components', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00235', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-02-02 11:53:03'),
(1440, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Utilization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1441, 'Technology_Node', 'Relationship', 'Location', 'N/A', 'ATT_025', 'Locations', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00252', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1442, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Remarks on Location', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1443, 'Technology_Node', 'Relationship', 'N/A', 'Risk', 'ATT_027', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00255', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1444, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1445, 'Technology_Node', 'Relationship', 'N/A', 'Gap', 'ATT_029', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00256', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1446, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1447, 'Technology_Node', 'Relationship', 'N/A', 'Architecture_State', 'ATT_031', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00257', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1448, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1449, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1450, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_034', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1451, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_035', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1452, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_036', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1453, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_037', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1454, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_038', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1455, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_039', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1456, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_040', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1457, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_041', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1458, 'Technology_Node', 'System', 'N/A', 'N/A', 'ATT_042', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1459, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1460, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1461, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1462, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1463, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Software;Hardware;Hybrid', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1464, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1465, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1466, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1467, 'Technology_Product', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00241', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1468, 'Technology_Product', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00242', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1469, 'Technology_Product', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00243', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1470, 'Technology_Product', 'Relationship', 'Domain', 'N/A', 'ATT_011', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00244', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1471, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1472, 'Technology_Product', 'Relationship', 'Application_Component', 'N/A', 'ATT_013', 'Utilized by Application Components', 'Yes', 'Shared', 'Utilized by Architecture Objects', 'Object', '3.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00020', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1473, 'Technology_Product', 'Relationship', 'Application_Service', 'N/A', 'ATT_014', 'Utilized by Application Services', 'Yes', 'Shared', 'Utilized by Architecture Objects', 'Object', '3.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00139', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1474, 'Technology_Product', 'Relationship', 'Data_Component', 'N/A', 'ATT_015', 'Utilized by Data Components', 'Yes', 'Shared', 'Utilized by Architecture Objects', 'Object', '3.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00234', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1475, 'Technology_Product', 'Relationship', 'Technology_Service', 'N/A', 'ATT_016', 'Utilized by Technology Services', 'Yes', 'Shared', 'Utilized by Architecture Objects', 'Object', '3.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00246', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1476, 'Technology_Product', 'Relationship', 'N/A', 'Application_Service', 'ATT_017', 'Deployed Architecture Objects', 'No', 'N/A', 'Utilized by Architecture Objects', 'Object', '3.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00123', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-02-02 11:53:03'),
(1477, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Remarks on Utilization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1478, 'Technology_Product', 'Relationship', 'Technology_Component', 'N/A', 'ATT_019', 'Realized Technology Components', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00245', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1479, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Technology Component', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1480, 'Technology_Product', 'Relationship', 'N/A', 'Technology_Node', 'ATT_021', 'Part of Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00253', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1481, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Technology Nodes', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1482, 'Technology_Product', 'Relationship', 'Service_Contract', 'N/A', 'ATT_023', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '5.0', 'License/Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00204', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1483, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Remarks on Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'License/Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1484, 'Technology_Product', 'Relationship', 'N/A', 'Principle', 'ATT_025', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00236', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1485, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1486, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1487, 'Technology_Product', 'Relationship', 'N/A', 'Standard', 'ATT_028', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00237', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(1488, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1489, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1490, 'Technology_Product', 'Relationship', 'N/A', 'Risk', 'ATT_031', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00238', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1491, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1492, 'Technology_Product', 'Relationship', 'N/A', 'Gap', 'ATT_033', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00239', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1493, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1494, 'Technology_Product', 'Relationship', 'N/A', 'Architecture_State', 'ATT_035', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00240', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1495, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1496, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1497, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_038', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1498, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_039', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1499, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_040', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1500, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_041', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1501, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_042', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1502, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_043', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1503, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_044', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1504, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_045', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1505, 'Technology_Product', 'System', 'N/A', 'N/A', 'ATT_046', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1506, 'Technology_Product', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1507, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1508, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1509, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1510, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Infrastructure Component;Systems Component;Network Component;Database Component;Communication Component;Datacenter Component;Information Security Component', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1511, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1512, 'Technology_Component', 'Relationship', 'N/A', 'Technology_Component', 'ATT_06', 'Superior', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00277', 'Single', 'N/A', 'Association', 'is Subordinate of', '1', NULL, '2022-02-02 11:53:03'),
(1513, 'Technology_Component', 'Relationship', 'Technology_Component', 'N/A', 'ATT_07', 'Subordinates', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00277', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-02-02 11:53:03'),
(1514, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1515, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1516, 'Technology_Component', 'Relationship', 'N/A', 'Technology_Product', 'ATT_010', 'Realized by Technology Products', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00245', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1517, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1518, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_012', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1519, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_013', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1520, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_014', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1521, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_015', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1522, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_016', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1523, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_017', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1524, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_018', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1525, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_019', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1526, 'Technology_Component', 'System', 'N/A', 'N/A', 'ATT_020', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1527, 'Technology_Component', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1528, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1529, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1530, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1531, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Infrastructure Service;Systems Service;Network Service;Data Service;Communication Service;Datacenter Service;Information Security Service', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1532, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1533, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1534, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1535, 'Technology_Service', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00259', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1536, 'Technology_Service', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00260', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1537, 'Technology_Service', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00261', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1538, 'Technology_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00262', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1539, 'Technology_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00263', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1540, 'Technology_Service', 'Relationship', 'Domain', 'N/A', 'ATT_013', 'Assigned to Domain', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00264', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1541, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Remarks on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1542, 'Technology_Service', 'Relationship', 'Technology_Service', 'N/A', 'ATT_015', 'Composed of Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00265', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1543, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_016', 'Part of Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00265', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1544, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Remarks on Service Composition', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1545, 'Technology_Service', 'Relationship', 'Technology_Service', 'N/A', 'ATT_018', 'Aggregates Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00266', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1546, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_019', 'Aggregated by Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00266', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1547, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Remarks on Service Aggregation', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1548, 'Technology_Service', 'Relationship', 'Technology_Service', 'N/A', 'ATT_021', 'Specializes Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00267', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1549, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_022', 'Specialized by Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00267', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1550, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Remarks on Service Specialization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1551, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Product', 'ATT_024', 'Utilized Technologies', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00246', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1552, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Remarks on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1553, 'Technology_Service', 'Relationship', 'Service', 'N/A', 'ATT_026', 'Realized Service(s)', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00072', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1554, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Remarks on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1555, 'Technology_Service', 'Relationship', 'N/A', 'Principle', 'ATT_028', 'Associated Principles', 'Yes', 'Tabular', 'Architecture Principles', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00268', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1556, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Principles', 'List', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1557, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Additional Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1558, 'Technology_Service', 'Relationship', 'N/A', 'Standard', 'ATT_031', 'Applicable Standards', 'Yes', 'Tabular', 'Architecture Standards', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00269', 'Multiple', 'Unlimited', 'Association', 'applied Standard', '1', NULL, '2022-02-02 11:53:03'),
(1559, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Compliance Level', 'Yes', 'Tabular', 'Architecture Standards', 'List', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'Null;No Compliance;Weak Compliance;Strong Compliance;Full Compliance', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1560, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Additional Note on Standards', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1561, 'Technology_Service', 'Relationship', 'N/A', 'Risk', 'ATT_034', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00270', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1562, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1563, 'Technology_Service', 'Relationship', 'Requirement', 'N/A', 'ATT_036', 'Realized Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00271', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1564, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Remarks on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1565, 'Technology_Service', 'Relationship', 'N/A', 'Gap', 'ATT_038', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00272', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1566, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1567, 'Technology_Service', 'Relationship', 'N/A', 'Architecture_State', 'ATT_040', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00273', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1568, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1569, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1570, 'Technology_Service', 'Relationship', 'Service_Contract', 'N/A', 'ATT_043', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Service Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00205', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1571, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Remarks on Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Service Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1572, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_045', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1573, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_046', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1574, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_047', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1575, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_048', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1576, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_049', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1577, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_050', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1578, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_051', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1579, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_052', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1580, 'Technology_Service', 'System', 'N/A', 'N/A', 'ATT_053', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1581, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1582, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1583, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_02', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1584, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_03', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1585, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'LAN;MAN;WAN;VLAN;Extranet;Wireless;Internet;DMZ;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1586, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Repository Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Proposed;Active;Phasing Out;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1587, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1588, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1589, 'Communication_Network', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00278', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1590, 'Communication_Network', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00279', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-02-02 11:53:03'),
(1591, 'Communication_Network', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00280', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-02-02 11:53:03'),
(1592, 'Communication_Network', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00281', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-02-02 11:53:03'),
(1593, 'Communication_Network', 'Relationship', 'Domain', 'N/A', 'ATT_012', 'Assigned to Domain(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00282', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1594, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Remarks on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1595, 'Communication_Network', 'Relationship', 'Location', 'N/A', 'ATT_014', 'Location', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00286', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1596, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Remarks on Location', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1597, 'Communication_Network', 'Relationship', 'N/A', 'Risk', 'ATT_016', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00283', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1598, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Additional Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1599, 'Communication_Network', 'Relationship', 'N/A', 'Gap', 'ATT_018', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00284', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1600, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Remarks on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1601, 'Communication_Network', 'Relationship', 'N/A', 'Architecture_State', 'ATT_020', 'Architecture States', 'Yes', 'Tabular', 'Present in Architecture States', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00285', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-02-02 11:53:03'),
(1602, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Undergo Change ?', 'Yes', 'Tabular', 'Present in Architecture States', 'CheckBox', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1603, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Remarks on Architecture States', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1604, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_023', 'Serial Number', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1605, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_024', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1606, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_025', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1607, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_026', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1608, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_027', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1609, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_028', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1610, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_029', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1611, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_030', 'Language', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1612, 'Communication_Network', 'System', 'N/A', 'N/A', 'ATT_031', 'Date of Last Import', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1613, 'Communication_Network', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Remarks on Change History', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1614, 'Composition', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1615, 'Composition', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1616, 'Composition', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1617, 'Composition', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1618, 'Composition', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1619, 'Aggregation', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1620, 'Aggregation', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1621, 'Aggregation', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1622, 'Aggregation', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1623, 'Aggregation', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1624, 'Assignment', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1625, 'Assignment', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1626, 'Assignment', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1627, 'Assignment', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1628, 'Assignment', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1629, 'Realization', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1630, 'Realization', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1631, 'Realization', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1632, 'Realization', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1633, 'Realization', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1634, 'Serving', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1635, 'Serving', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1636, 'Serving', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1637, 'Serving', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1638, 'Serving', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1639, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1640, 'Access', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1641, 'Access', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1642, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1643, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1644, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Create', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1645, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Read', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1646, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Update', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1647, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Delete', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1648, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1649, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1650, 'Association', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1651, 'Association', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1652, 'Association', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1653, 'Association', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1654, 'Association', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1655, 'Flow', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1656, 'Flow', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1657, 'Flow', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1658, 'Flow', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1659, 'Flow', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1660, 'Specialization', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1661, 'Specialization', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1662, 'Specialization', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1663, 'Specialization', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03'),
(1664, 'Specialization', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'Basic Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-02-02 11:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `business_capability`
--

CREATE TABLE `business_capability` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_025` text,
  `ATT_028` text,
  `ATT_031` text,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_036` text,
  `ATT_038` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` text,
  `ATT_043` text,
  `ATT_044` date DEFAULT NULL,
  `ATT_045` time DEFAULT NULL,
  `ATT_046` text,
  `ATT_047` text,
  `ATT_048` text,
  `ATT_049` text,
  `ATT_050` date DEFAULT NULL,
  `ATT_051` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_function`
--

CREATE TABLE `business_function` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_017` text,
  `ATT_019` text,
  `ATT_021` text,
  `ATT_023` text,
  `ATT_026` text,
  `ATT_029` text,
  `ATT_032` text,
  `ATT_034` text,
  `ATT_036` text,
  `ATT_037` text,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` date DEFAULT NULL,
  `ATT_041` time DEFAULT NULL,
  `ATT_042` text,
  `ATT_043` text,
  `ATT_044` text,
  `ATT_045` text,
  `ATT_046` date DEFAULT NULL,
  `ATT_047` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_process`
--

CREATE TABLE `business_process` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` time DEFAULT NULL,
  `ATT_010` text,
  `ATT_011` text,
  `ATT_012` text,
  `ATT_013` text,
  `ATT_022` text,
  `ATT_025` text,
  `ATT_028` text,
  `ATT_031` text,
  `ATT_033` text,
  `ATT_035` text,
  `ATT_037` text,
  `ATT_038` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_043` text,
  `ATT_045` text,
  `ATT_047` text,
  `ATT_049` text,
  `ATT_052` text,
  `ATT_054` text,
  `ATT_056` text,
  `ATT_057` text,
  `ATT_058` text,
  `ATT_059` text,
  `ATT_060` text,
  `ATT_061` text,
  `ATT_062` text,
  `ATT_063` date DEFAULT NULL,
  `ATT_064` date DEFAULT NULL,
  `ATT_065` text,
  `ATT_066` text,
  `ATT_067` text,
  `ATT_068` date DEFAULT NULL,
  `ATT_069` time DEFAULT NULL,
  `ATT_070` text,
  `ATT_071` text,
  `ATT_072` text,
  `ATT_073` text,
  `ATT_074` date DEFAULT NULL,
  `ATT_075` text,
  `ATT_076` text,
  `ATT_077` text,
  `ATT_078` text,
  `ATT_079` text,
  `ATT_080` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `communication_network`
--

CREATE TABLE `communication_network` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_013` text,
  `ATT_015` text,
  `ATT_017` text,
  `ATT_019` text,
  `ATT_021` text,
  `ATT_022` text,
  `ATT_023` text,
  `ATT_024` text,
  `ATT_025` date DEFAULT NULL,
  `ATT_026` time DEFAULT NULL,
  `ATT_027` text,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_031` date DEFAULT NULL,
  `ATT_032` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `composition`
--

CREATE TABLE `composition` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_of_action`
--

CREATE TABLE `course_of_action` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_016` text,
  `ATT_018` text,
  `ATT_019` text,
  `ATT_020` text,
  `ATT_021` date DEFAULT NULL,
  `ATT_022` time DEFAULT NULL,
  `ATT_023` text,
  `ATT_024` text,
  `ATT_025` text,
  `ATT_026` text,
  `ATT_027` date DEFAULT NULL,
  `ATT_028` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_component`
--

CREATE TABLE `data_component` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_015` text,
  `ATT_017` text,
  `ATT_019` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_023` text,
  `ATT_025` text,
  `ATT_027` text,
  `ATT_029` text,
  `ATT_031` text,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` text,
  `ATT_036` text,
  `ATT_037` date DEFAULT NULL,
  `ATT_038` time DEFAULT NULL,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` text,
  `ATT_043` date DEFAULT NULL,
  `ATT_044` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_object`
--

CREATE TABLE `data_object` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_013` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_025` text,
  `ATT_027` text,
  `ATT_028` text,
  `ATT_030` text,
  `ATT_033` text,
  `ATT_036` text,
  `ATT_039` text,
  `ATT_042` text,
  `ATT_044` text,
  `ATT_046` text,
  `ATT_047` text,
  `ATT_048` text,
  `ATT_049` text,
  `ATT_050` date DEFAULT NULL,
  `ATT_051` time DEFAULT NULL,
  `ATT_052` text,
  `ATT_053` text,
  `ATT_054` text,
  `ATT_055` text,
  `ATT_056` date DEFAULT NULL,
  `ATT_057` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_012` text,
  `ATT_040` text,
  `ATT_042` text,
  `ATT_044` text,
  `ATT_045` text,
  `ATT_046` text,
  `ATT_047` text,
  `ATT_048` date DEFAULT NULL,
  `ATT_049` time DEFAULT NULL,
  `ATT_050` text,
  `ATT_051` text,
  `ATT_052` text,
  `ATT_053` text,
  `ATT_054` date DEFAULT NULL,
  `ATT_055` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_012` text,
  `ATT_014` text,
  `ATT_015` text,
  `ATT_016` text,
  `ATT_017` date DEFAULT NULL,
  `ATT_018` time DEFAULT NULL,
  `ATT_019` text,
  `ATT_020` text,
  `ATT_021` text,
  `ATT_022` text,
  `ATT_023` date DEFAULT NULL,
  `ATT_024` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flow`
--

CREATE TABLE `flow` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gap`
--

CREATE TABLE `gap` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_030` text,
  `ATT_031` text,
  `ATT_034` text,
  `ATT_037` text,
  `ATT_040` text,
  `ATT_042` text,
  `ATT_043` text,
  `ATT_044` text,
  `ATT_045` date DEFAULT NULL,
  `ATT_046` time DEFAULT NULL,
  `ATT_047` text,
  `ATT_048` text,
  `ATT_049` text,
  `ATT_050` text,
  `ATT_051` date DEFAULT NULL,
  `ATT_052` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_016` text,
  `ATT_019` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_031` date DEFAULT NULL,
  `ATT_032` time DEFAULT NULL,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` text,
  `ATT_036` text,
  `ATT_037` date DEFAULT NULL,
  `ATT_038` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indicator`
--

CREATE TABLE `indicator` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_09` text,
  `ATT_010` text,
  `ATT_011` text,
  `ATT_012` text,
  `ATT_013` text,
  `ATT_014` text,
  `ATT_015` text,
  `ATT_016` text,
  `ATT_017` text,
  `ATT_018` text,
  `ATT_019` text,
  `ATT_020` text,
  `ATT_021` text,
  `ATT_022` text,
  `ATT_023` text,
  `ATT_024` text,
  `ATT_025` text,
  `ATT_026` date DEFAULT NULL,
  `ATT_027` time DEFAULT NULL,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_031` text,
  `ATT_032` date DEFAULT NULL,
  `ATT_033` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_017` text,
  `ATT_019` text,
  `ATT_021` text,
  `ATT_023` text,
  `ATT_024` text,
  `ATT_025` text,
  `ATT_026` text,
  `ATT_027` date DEFAULT NULL,
  `ATT_028` time DEFAULT NULL,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_031` text,
  `ATT_032` text,
  `ATT_033` date DEFAULT NULL,
  `ATT_034` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization_unit`
--

CREATE TABLE `organization_unit` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_043` text,
  `ATT_045` text,
  `ATT_047` text,
  `ATT_049` text,
  `ATT_052` text,
  `ATT_054` text,
  `ATT_056` text,
  `ATT_058` text,
  `ATT_060` text,
  `ATT_062` text,
  `ATT_064` text,
  `ATT_066` text,
  `ATT_068` text,
  `ATT_070` text,
  `ATT_071` text,
  `ATT_072` text,
  `ATT_073` text,
  `ATT_074` date DEFAULT NULL,
  `ATT_075` time DEFAULT NULL,
  `ATT_076` text,
  `ATT_077` text,
  `ATT_078` text,
  `ATT_079` text,
  `ATT_080` date DEFAULT NULL,
  `ATT_081` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `principle`
--

CREATE TABLE `principle` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_016` text,
  `ATT_029` text,
  `ATT_031` text,
  `ATT_034` text,
  `ATT_036` text,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` date DEFAULT NULL,
  `ATT_043` time DEFAULT NULL,
  `ATT_044` text,
  `ATT_045` text,
  `ATT_046` text,
  `ATT_047` text,
  `ATT_048` date DEFAULT NULL,
  `ATT_049` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `realization`
--

CREATE TABLE `realization` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(10) NOT NULL,
  `Source` text,
  `Destination` text,
  `Source_P_Key` text,
  `Destination_P_Key` text,
  `Source_Attribute_Name` text,
  `Destination_Attribute_Name` text,
  `Source_Attribute_Value` text,
  `Destination_Attribute_Value` text,
  `Relationship_Type` text,
  `Bidirection_Relationship_Pair` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_013` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_023` text,
  `ATT_024` text,
  `ATT_025` date DEFAULT NULL,
  `ATT_026` time DEFAULT NULL,
  `ATT_027` text,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_031` date DEFAULT NULL,
  `ATT_032` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk`
--

CREATE TABLE `risk` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_010` date DEFAULT NULL,
  `ATT_011` date DEFAULT NULL,
  `ATT_012` text,
  `ATT_013` text,
  `ATT_020` text,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` text,
  `ATT_043` text,
  `ATT_044` date DEFAULT NULL,
  `ATT_045` time DEFAULT NULL,
  `ATT_046` text,
  `ATT_047` text,
  `ATT_048` text,
  `ATT_049` text,
  `ATT_050` date DEFAULT NULL,
  `ATT_051` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_012` text,
  `ATT_014` text,
  `ATT_015` text,
  `ATT_016` text,
  `ATT_017` text,
  `ATT_018` text,
  `ATT_027` text,
  `ATT_029` text,
  `ATT_031` text,
  `ATT_032` text,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` date DEFAULT NULL,
  `ATT_036` time DEFAULT NULL,
  `ATT_037` text,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` date DEFAULT NULL,
  `ATT_042` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_017` text,
  `ATT_021` text,
  `ATT_024` text,
  `ATT_027` text,
  `ATT_030` text,
  `ATT_032` text,
  `ATT_034` text,
  `ATT_036` text,
  `ATT_037` text,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_042` text,
  `ATT_044` text,
  `ATT_046` text,
  `ATT_047` text,
  `ATT_048` text,
  `ATT_049` text,
  `ATT_050` date DEFAULT NULL,
  `ATT_051` time DEFAULT NULL,
  `ATT_052` text,
  `ATT_053` text,
  `ATT_054` text,
  `ATT_055` text,
  `ATT_056` date DEFAULT NULL,
  `ATT_057` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_contract`
--

CREATE TABLE `service_contract` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_013` text,
  `ATT_019` text,
  `ATT_022` text,
  `ATT_025` text,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_031` date DEFAULT NULL,
  `ATT_032` time DEFAULT NULL,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` text,
  `ATT_036` text,
  `ATT_037` date DEFAULT NULL,
  `ATT_038` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serving`
--

CREATE TABLE `serving` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard`
--

CREATE TABLE `standard` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_026` text,
  `ATT_037` text,
  `ATT_040` text,
  `ATT_043` text,
  `ATT_046` text,
  `ATT_048` text,
  `ATT_050` text,
  `ATT_051` text,
  `ATT_052` text,
  `ATT_053` text,
  `ATT_054` date DEFAULT NULL,
  `ATT_055` time DEFAULT NULL,
  `ATT_056` text,
  `ATT_057` text,
  `ATT_058` text,
  `ATT_059` text,
  `ATT_060` date DEFAULT NULL,
  `ATT_061` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technology_component`
--

CREATE TABLE `technology_component` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_011` text,
  `ATT_012` text,
  `ATT_013` text,
  `ATT_014` date DEFAULT NULL,
  `ATT_015` time DEFAULT NULL,
  `ATT_016` text,
  `ATT_017` text,
  `ATT_018` text,
  `ATT_019` text,
  `ATT_020` date DEFAULT NULL,
  `ATT_021` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technology_node`
--

CREATE TABLE `technology_node` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_018` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_028` text,
  `ATT_030` text,
  `ATT_032` text,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` text,
  `ATT_036` date DEFAULT NULL,
  `ATT_037` time DEFAULT NULL,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` date DEFAULT NULL,
  `ATT_043` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technology_product`
--

CREATE TABLE `technology_product` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_012` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_027` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_032` text,
  `ATT_034` text,
  `ATT_036` text,
  `ATT_037` text,
  `ATT_038` text,
  `ATT_039` text,
  `ATT_040` date DEFAULT NULL,
  `ATT_041` time DEFAULT NULL,
  `ATT_042` text,
  `ATT_043` text,
  `ATT_044` text,
  `ATT_045` text,
  `ATT_046` date DEFAULT NULL,
  `ATT_047` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technology_service`
--

CREATE TABLE `technology_service` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_017` text,
  `ATT_020` text,
  `ATT_023` text,
  `ATT_025` text,
  `ATT_027` text,
  `ATT_029` text,
  `ATT_030` text,
  `ATT_032` text,
  `ATT_033` text,
  `ATT_035` text,
  `ATT_037` text,
  `ATT_039` text,
  `ATT_041` text,
  `ATT_042` text,
  `ATT_044` text,
  `ATT_045` text,
  `ATT_046` text,
  `ATT_047` date DEFAULT NULL,
  `ATT_048` time DEFAULT NULL,
  `ATT_049` text,
  `ATT_050` text,
  `ATT_051` text,
  `ATT_052` text,
  `ATT_053` date DEFAULT NULL,
  `ATT_054` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `value_stream`
--

CREATE TABLE `value_stream` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_014` text,
  `ATT_016` text,
  `ATT_019` text,
  `ATT_022` text,
  `ATT_024` text,
  `ATT_026` text,
  `ATT_027` text,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_030` date DEFAULT NULL,
  `ATT_031` time DEFAULT NULL,
  `ATT_032` text,
  `ATT_033` text,
  `ATT_034` text,
  `ATT_035` text,
  `ATT_036` date DEFAULT NULL,
  `ATT_037` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_package`
--

CREATE TABLE `work_package` (
  `id` int(10) NOT NULL,
  `ATT_01` text,
  `ATT_02` text,
  `ATT_03` text,
  `ATT_04` text,
  `ATT_05` text,
  `ATT_06` text,
  `ATT_07` text,
  `ATT_08` text,
  `ATT_09` text,
  `ATT_014` text,
  `ATT_016` text,
  `ATT_018` text,
  `ATT_020` text,
  `ATT_023` text,
  `ATT_026` text,
  `ATT_028` text,
  `ATT_029` text,
  `ATT_031` text,
  `ATT_032` text,
  `ATT_034` text,
  `ATT_035` text,
  `ATT_036` text,
  `ATT_037` date DEFAULT NULL,
  `ATT_038` time DEFAULT NULL,
  `ATT_039` text,
  `ATT_040` text,
  `ATT_041` text,
  `ATT_042` text,
  `ATT_043` date DEFAULT NULL,
  `ATT_044` text,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aggregation`
--
ALTER TABLE `aggregation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_component`
--
ALTER TABLE `application_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_function`
--
ALTER TABLE `application_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_interface`
--
ALTER TABLE `application_interface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_service`
--
ALTER TABLE `application_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `architecture_state`
--
ALTER TABLE `architecture_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_information`
--
ALTER TABLE `attributes_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_capability`
--
ALTER TABLE `business_capability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_function`
--
ALTER TABLE `business_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_process`
--
ALTER TABLE `business_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_network`
--
ALTER TABLE `communication_network`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_of_action`
--
ALTER TABLE `course_of_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_component`
--
ALTER TABLE `data_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_object`
--
ALTER TABLE `data_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gap`
--
ALTER TABLE `gap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicator`
--
ALTER TABLE `indicator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_unit`
--
ALTER TABLE `organization_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principle`
--
ALTER TABLE `principle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realization`
--
ALTER TABLE `realization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk`
--
ALTER TABLE `risk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_contract`
--
ALTER TABLE `service_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serving`
--
ALTER TABLE `serving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard`
--
ALTER TABLE `standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_component`
--
ALTER TABLE `technology_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_node`
--
ALTER TABLE `technology_node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_product`
--
ALTER TABLE `technology_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_service`
--
ALTER TABLE `technology_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_stream`
--
ALTER TABLE `value_stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_package`
--
ALTER TABLE `work_package`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aggregation`
--
ALTER TABLE `aggregation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_component`
--
ALTER TABLE `application_component`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_function`
--
ALTER TABLE `application_function`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_interface`
--
ALTER TABLE `application_interface`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_service`
--
ALTER TABLE `application_service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `architecture_state`
--
ALTER TABLE `architecture_state`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `association`
--
ALTER TABLE `association`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes_information`
--
ALTER TABLE `attributes_information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;

--
-- AUTO_INCREMENT for table `business_capability`
--
ALTER TABLE `business_capability`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_function`
--
ALTER TABLE `business_function`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_process`
--
ALTER TABLE `business_process`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_network`
--
ALTER TABLE `communication_network`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_of_action`
--
ALTER TABLE `course_of_action`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_component`
--
ALTER TABLE `data_component`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_object`
--
ALTER TABLE `data_object`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flow`
--
ALTER TABLE `flow`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gap`
--
ALTER TABLE `gap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicator`
--
ALTER TABLE `indicator`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organization_unit`
--
ALTER TABLE `organization_unit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `principle`
--
ALTER TABLE `principle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `realization`
--
ALTER TABLE `realization`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risk`
--
ALTER TABLE `risk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_contract`
--
ALTER TABLE `service_contract`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serving`
--
ALTER TABLE `serving`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard`
--
ALTER TABLE `standard`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology_component`
--
ALTER TABLE `technology_component`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology_node`
--
ALTER TABLE `technology_node`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology_product`
--
ALTER TABLE `technology_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology_service`
--
ALTER TABLE `technology_service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_stream`
--
ALTER TABLE `value_stream`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_package`
--
ALTER TABLE `work_package`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
