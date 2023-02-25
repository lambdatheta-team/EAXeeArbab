-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 03:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graphs`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog_files`
--

CREATE TABLE `catalog_files` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `catalog_name` varchar(256) NOT NULL,
  `element_name` varchar(256) NOT NULL,
  `xml_link` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(256) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chart_details`
--

CREATE TABLE `chart_details` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `chart_title` varchar(255) DEFAULT NULL,
  `chart_title_in_arabic` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chart_name` varchar(255) DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `chart_type` varchar(50) DEFAULT NULL,
  `chart_operation` varchar(255) DEFAULT NULL,
  `y_axis_data` text DEFAULT NULL,
  `y_axis_label` text DEFAULT NULL,
  `x_axis_label` text DEFAULT NULL,
  `y_axis_title` text NOT NULL,
  `categories_array` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `modelName` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `graph_json` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `username`, `company_name`, `modelName`, `graph_json`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'MIM', 'sc', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Actor_BKvhjX1\" style=\"shape=label;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/actor.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"255.390625\" y=\"333\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Actor_z3P7I02\" style=\"shape=label;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/actor.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"182.390625\" y=\"228\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Actor_Td4Jhx3\" style=\"shape=label;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/actor.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"573.390625\" y=\"426\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Business&#10;Application_PVA8cN1\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"390.390625\" y=\"101\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Helpdesk_بلاغات&#10;المرافق&#10;والصيانة\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"340\" y=\"620\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Composed of\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"3\" target=\"2\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"GSB_83mCLE0s\" style=\"shape=label;strokeColor=;fillColor=#f5d9d9;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/gsb.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"658.390625\" y=\"236\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'admin', '2022-08-02 13:27:13'),
(2, 'admin', 'MIM', 'hjhj', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 1, '0', 'admin', '2022-07-19 20:06:40'),
(3, 'admin', 'MIM', 'مركز إدارة', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"GSB_PP1wI\" style=\"shape=label;strokeColor=;fillColor=#f5d9d9;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/gsb.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"476.390625\" y=\"426\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'admin', '2022-07-19 20:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `files1`
--

CREATE TABLE `files1` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `modelName` text DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files_copy`
--

CREATE TABLE `files_copy` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `modelName` text DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` text DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'MIM', 'MIM', '0', '1', 'admin', '2022-05-24 07:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `json_graph`
--

CREATE TABLE `json_graph` (
  `id` int(10) NOT NULL,
  `username` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `graphname` text DEFAULT NULL,
  `Graph_json` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matrix_files`
--

CREATE TABLE `matrix_files` (
  `id` int(11) NOT NULL,
  `matrix_name` varchar(255) NOT NULL,
  `matrix_element1` varchar(255) NOT NULL,
  `matrix_element2` varchar(255) NOT NULL,
  `matrix_relation` varchar(255) NOT NULL,
  `parentID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matrix_files`
--

INSERT INTO `matrix_files` (`id`, `matrix_name`, `matrix_element1`, `matrix_element2`, `matrix_relation`, `parentID`, `username`, `company_name`, `status`) VALUES
(1, 'rfdf', 'Business Application', 'Organization Unit', 'Serving', 1, 'admin', 'MIM', 1),
(2, 'dfef_ooi', 'Business Application', 'Organization Unit', 'Serving', 1, 'admin', 'MIM', 1),
(3, 'sasre_efvcv', 'Business Application', 'Organization Unit', 'Serving', 1, 'admin', 'MIM', 1),
(4, 'mmhmh', 'Gap', 'Business Application', 'Association', 1, 'admin', 'MIM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_files`
--

CREATE TABLE `navigation_files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `navigationName` text CHARACTER SET latin1 DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text CHARACTER SET latin1 DEFAULT NULL,
  `owner_of_the_object` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation_files`
--

INSERT INTO `navigation_files` (`id`, `username`, `company_name`, `navigationName`, `graph_json`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'MIM', 'rtrt', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business_Application_p2pI7Q0\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"522.5\" y=\"394.5\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Actor_OyTHpO0\" style=\"shape=label;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/actor.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"680.3\" y=\"394.5\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Association\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Portal&#10;ابتداء_Investor&#10;Services_\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"522.5\" y=\"394.5\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"External Parties_Individuals_Business_\" style=\"shape=label;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/organization-unit.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"680.3\" y=\"394.5\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"6\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"Investors\" style=\"shape=label;strokeColor=;fillColor=#cd9cff;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/data.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"634.0814500712372\" y=\"506.0814500712372\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Access\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"8\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Support Tickets\" style=\"shape=label;strokeColor=;fillColor=#cd9cff;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/data.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"522.5\" y=\"552.3\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\"Access\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"10\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"12\" value=\"Investors\" style=\"shape=label;strokeColor=;fillColor=#cd9cff;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/data.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"410.9185499287628\" y=\"506.0814500712372\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Access\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"12\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"Support Tickets\" style=\"shape=label;strokeColor=;fillColor=#cd9cff;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/data.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"364.7\" y=\"394.5\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"15\" value=\"Access\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"14\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"16\" value=\"External Parties_Individuals_Business_\" style=\"shape=label;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/organization-unit.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"410.9185499287628\" y=\"282.9185499287628\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"17\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"16\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"18\" value=\"PHP Laravel\" style=\"shape=label;strokeColor=;fillColor=#fae1bb;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/software.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"522.5\" y=\"236.7\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"19\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"18\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"20\" value=\"PHP Laravel\" style=\"shape=label;strokeColor=;fillColor=#fae1bb;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/software.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"634.0814500712372\" y=\"282.9185499287628\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"21\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"20\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'admin', '2022-07-18 20:22:27'),
(2, 'admin', 'MIM', 'vbb', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 1, '1', 'admin', '2022-07-21 11:06:03'),
(3, 'admin', 'MIM', 'dcre', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 1, '1', 'admin', '2022-07-25 11:47:03'),
(4, 'admin', 'MIM', 'bnhn', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 1, '1', 'admin', '2022-08-04 07:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `organizational_tabs`
--

CREATE TABLE `organizational_tabs` (
  `id` int(10) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizational_tabs`
--

INSERT INTO `organizational_tabs` (`id`, `tab_id`, `tab_name`, `username`, `company_name`) VALUES
(2, 'tabs-2', 'tt', 'admin', 'MIM');

-- --------------------------------------------------------

--
-- Table structure for table `roadmap`
--

CREATE TABLE `roadmap` (
  `id` int(100) NOT NULL,
  `RoadMap_Name` varchar(255) DEFAULT NULL,
  `Element_Name` varchar(255) DEFAULT NULL,
  `Start_Date` varchar(255) DEFAULT NULL,
  `End_Date` varchar(255) DEFAULT NULL,
  `Legend` varchar(255) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roadmap`
--

INSERT INTO `roadmap` (`id`, `RoadMap_Name`, `Element_Name`, `Start_Date`, `End_Date`, `Legend`, `parentID`, `company_name`, `status`) VALUES
(1, 'eefef', 'Business_Application', 'ATT_081', 'ATT_082', 'ATT_05', 1, 'MIM', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog_files`
--
ALTER TABLE `catalog_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_details`
--
ALTER TABLE `chart_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files1`
--
ALTER TABLE `files1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files_copy`
--
ALTER TABLE `files_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `json_graph`
--
ALTER TABLE `json_graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrix_files`
--
ALTER TABLE `matrix_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_files`
--
ALTER TABLE `navigation_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizational_tabs`
--
ALTER TABLE `organizational_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roadmap`
--
ALTER TABLE `roadmap`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog_files`
--
ALTER TABLE `catalog_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_details`
--
ALTER TABLE `chart_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `files1`
--
ALTER TABLE `files1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_copy`
--
ALTER TABLE `files_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `json_graph`
--
ALTER TABLE `json_graph`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matrix_files`
--
ALTER TABLE `matrix_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `navigation_files`
--
ALTER TABLE `navigation_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `organizational_tabs`
--
ALTER TABLE `organizational_tabs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
