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

--
-- Dumping data for table `catalog_files`
--

INSERT INTO `catalog_files` (`id`, `username`, `company_name`, `catalog_name`, `element_name`, `xml_link`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'MIM', 'newCatalog', 'Business Application', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/newCatalog.xml', 1, '1', NULL, '2022-10-06 12:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_scripts`
--

CREATE TABLE `catalog_scripts` (
  `id` int(11) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `scriptName` varchar(255) NOT NULL,
  `scriptColumns` text NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_scripts`
--

INSERT INTO `catalog_scripts` (`id`, `catalog_name`, `scriptName`, `scriptColumns`, `company_name`) VALUES
(1, 'newCatalog', 'ahsan', 'اسم قصير', 'MIM'),
(2, 'newCatalog', 'BBB', 'اسم قصير;هوية', 'MIM'),
(3, 'newCatalog', 'cccc', 'اسم;اسم قصير;هوية', 'MIM');

-- --------------------------------------------------------

--
-- Table structure for table `chart_details`
--

CREATE TABLE `chart_details` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `element_name` varchar(255) DEFAULT NULL,
  `chart_title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chart_title_in_arabic` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chart_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `chart_type` varchar(50) DEFAULT NULL,
  `chart_operation` varchar(255) DEFAULT NULL,
  `y_axis_data` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `y_axis_label` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `x_axis_label` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `y_axis_title` text CHARACTER SET utf8mb4 NOT NULL,
  `categories_array` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `operation_value` varchar(255) DEFAULT NULL,
  `attributesTextArea` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_details`
--

INSERT INTO `chart_details` (`id`, `tab_id`, `tab_name`, `element_name`, `chart_title`, `chart_title_in_arabic`, `chart_name`, `div_id`, `chart_type`, `chart_operation`, `y_axis_data`, `y_axis_label`, `x_axis_label`, `y_axis_title`, `categories_array`, `operation_value`, `attributesTextArea`, `username`, `company_name`) VALUES
(94, 'tabs-2', 'Chart_tabs-2', 'Business Process', 'Business Process Strategic Importance\n', 'الأهمية الاستراتيجية طريقة العمل', 'bar1', 'tabs-2chartContainer1', 'bar', 'Count', '[3,1,2,2,1]', '[]', 'Strategic Importance\n', 'Business Process', '[\"Very High\",\"High\",\"Medium\",\"Low\",\"Very Low\"]', 'Element', 'Strategic Importance\n', 'admin', 'MIM'),
(95, 'tabs-2', 'Chart_tabs-2', 'Business Process', 'Business Process Strategic Importance', 'الأهمية الاستراتيجية طريقة العمل', 'bar1', 'tabs-2chartContainer2', 'bar', 'null', '[5,4,3,5,1,2,3,2,5]', '[{\"y\":5,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Very High\"}},{\"y\":4,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"High\"}},{\"y\":3,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Medium\"}},{\"y\":5,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Very High\"}},{\"y\":1,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Very Low\"}},{\"y\":2,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Low\"}},{\"y\":3,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Medium\"}},{\"y\":2,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Low\"}},{\"y\":5,\"label\":{\"borderColor\":\"#FFFFFF\",\"style\":{\"color\":\"#000000\"},\"position\":\"left\",\"offsetY\":5.5,\"offsetX\":-5,\"text\":\"Very High\"}}]', 'Business Process', 'Strategic Importance', '[\"إعداد مشروع\",\"إعداد ميثاق مشروع\",\"طرح مشروع\",\"إعداد خطة شاملة لمشروع\",\"متابعة تنفيذ مشروع\",\"إدارة مخرج مشروع\",\"إدارة عوائق ومراقبة مخاطر مشروع\",\"إدارة طلب تغيير\",\"Business_Process_nphSqj102\"]', 'Element', 'Strategic Importance', 'admin', 'MIM'),
(96, 'tabs-2', 'Chart_tabs-2', 'Business Application', 'Business Application Criticality', 'الحرجة تطبيقات الأعمال', 'bar1', 'tabs-2chartContainer4', 'bar', 'Average', '[{\"name\":\"Optimized\",\"data\":[0,0,0,0,5,6]},{\"name\":\"Managed\",\"data\":[0,0,0,4,0,0]},{\"name\":\"Functional\",\"data\":[0,0,3,0,0,0]},{\"name\":\"Challenged\",\"data\":[0,2,0,0,0,0]},{\"name\":\"Initial\",\"data\":[1,0,0,0,0,0]},{\"name\":\"None\",\"data\":[0,0,0,0,0,0]}]', 'null', 'Business Application', 'Maturity Score', '[\"Oracle_HR\",\"Oracle_Finance\",\"Oracle_Budget\",\"Oracle_Procurement\",\"Oracle_Warehouses\",\"Oracle_Assets\"]', 'Attribute', '[\"Functional Adequacy\"]', 'admin', 'MIM'),
(97, 'tabs-2', 'Chart_tabs-2', 'Business Application', 'null', 'null', 'bar1', 'tabs-2chartContainer5', 'pie', 'Distribution', '[500000,254762,1609235,34562,981727,135467]', '[\"Oracle_HR\",\"Oracle_Finance\",\"Oracle_Budget\",\"Oracle_Procurement\",\"Oracle_Warehouses\",\"Oracle_Assets\"]', 'Short Name', 'null', '[]', 'Attribute', 'Functional Adequacy\n', 'admin', 'MIM'),
(98, 'tabs-2', 'Chart_tabs-2', 'Business Application', 'Budget Utilization', 'Budget Utilization', 'bar1', 'tabs-2chartContainer6', 'clusteredBar', 'null', '[{\"name\":\"Functional Adequacy\",\"data\":[\"0.5\",\"0.3\",\"1.6\",\"0.0\",\"1.0\",\"0.1\"]},{\"name\":\"Speed to Market\",\"data\":[\"0.5\",\"0.3\",\"1.7\",\"0.0\",\"1.0\",\"0.2\"]}]', 'null', 'null', 'Millions', '[\"Oracle_HR\",\"Oracle_Finance\",\"Oracle_Budget\",\"Oracle_Procurement\",\"Oracle_Warehouses\",\"Oracle_Assets\"]', 'null', '[\"Functional Adequacy\",\"Speed to Market\"]', 'admin', 'MIM'),
(99, 'tabs-2', 'Chart_tabs-2', 'Business Process', 'Business Process Maturity', 'نضج طريقة العمل', 'bar1', 'tabs-2chartContainer3', 'clusteredBar', 'Count', '[{\"name\":\"Initial\",\"data\":[1,1]},{\"name\":\"Optimized\",\"data\":[1,1]},{\"name\":\"Managed\",\"data\":[1,1]},{\"name\":\"Adhoc\",\"data\":[1,1]},{\"name\":\"Defined\",\"data\":[2,1]}]', 'null', 'Business Process Characteristics', 'null', '[\"Current Maturity\",\"Target Maturity\"]', 'Element', '[\"Current Maturity\",\"Target Maturity\"]', 'admin', 'MIM'),
(100, 'tabs-3', 'Chart_tabs-3', 'Business Process', 'Business Process Strategic Importance\n', 'الأهمية الاستراتيجية طريقة العمل', 'bar1', 'tabs-3chartContainer1', 'bar', 'Count', '[3,1,2,2,1]', '[]', 'Strategic Importance\n', 'Business Process', '[\"Very High\",\"High\",\"Medium\",\"Low\",\"Very Low\"]', 'Element', 'Strategic Importance\n', 'admin', 'MIM');

-- --------------------------------------------------------

--
-- Table structure for table `chart_details_copy`
--

CREATE TABLE `chart_details_copy` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chart_title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chart_title_in_arabic` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chart_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `chart_type` varchar(50) DEFAULT NULL,
  `chart_operation` varchar(255) DEFAULT NULL,
  `y_axis_data` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `y_axis_label` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `x_axis_label` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `y_axis_title` text CHARACTER SET utf8mb4 NOT NULL,
  `categories_array` text CHARACTER SET utf8mb4 DEFAULT NULL,
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
  `modelName` text DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `filtered` text NOT NULL DEFAULT 'false',
  `filtered_details` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `username`, `company_name`, `modelName`, `graph_json`, `parent_id`, `status`, `filtered`, `filtered_details`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'MIM', 'a', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Application_eZb5qs101\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"428.5\" y=\"67\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Business&#10;Application_edpGm9102\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"510.5\" y=\"220\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Composed of\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'false', NULL, 'admin', '2022-10-19 06:26:17'),
(2, 'admin', 'MIM', 'aFilteredq', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Application_eZb5qs101\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"428.5\" y=\"67\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Business&#10;Application_edpGm9102\" style=\"shape=label;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"510.5\" y=\"220\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"\" style=\"shape=ellipse;strokeColor=#9e10ee;fillColor=#9e10ee;rounded=50;shadow=0;strokeWidth=0;\" vertex=\"1\" parent=\"3\"><mxGeometry x=\"0.5\" y=\"1\" width=\"15\" height=\"15\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Composed of\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"2\" target=\"3\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'true', '{\"Business Application_eZb5qs101\":{\"color\":\"#9e10ee\"}}', 'admin', '2022-10-19 06:27:17');

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
(1, 'admin', 'MIM', 'MIM', '0', '1', 'admin', '2022-07-03 10:20:30'),
(3, 'eaxee', 'EAXee', 'EAXee', '0', '1', 'admin', '2022-05-23 06:35:09');

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
(1, 'new---Matrix', 'Business Application', 'Data', 'Access', 1, 'admin', 'MIM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_files`
--

CREATE TABLE `navigation_files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `navigationName` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `graph_json` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navigation_files`
--

INSERT INTO `navigation_files` (`id`, `username`, `company_name`, `navigationName`, `graph_json`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'MIM', 'new', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Oracle_HR\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"522.5\" y=\"258\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"HR_Staff\" style=\"shape=image;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/organization-unit.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"625.7\" y=\"258\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Employees\" style=\"shape=image;strokeColor=;fillColor=#cd9cff;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/data.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"586.8441475518213\" y=\"338.6850089907007\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Access\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"HR Staff\" style=\"shape=image;strokeColor=;fillColor=#b388b3;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/organization-unit.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"499.53583961570837\" y=\"358.6125605371642\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"7\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"SMS Gateway\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"429.52001283247034\" y=\"302.77680187693204\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"9\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\".Net\" style=\"shape=image;strokeColor=;fillColor=#fae1bb;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/software.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"429.52001283247034\" y=\"213.22319812306802\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"12\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"11\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Oracle_10g\" style=\"shape=image;strokeColor=;fillColor=#fae1bb;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/software.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"499.5358396157083\" y=\"157.3874394628358\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"13\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"15\" value=\"Oracle 10g\" style=\"shape=image;strokeColor=;fillColor=#fae1bb;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/software.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"586.8441475518213\" y=\"177.31499100929932\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"16\" value=\"Serving\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"15\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'admin', '2022-10-19 13:11:08'),
(2, 'admin', 'MIM', 'abc', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"SMS&#10;Gateway\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"522.5\" y=\"394.5\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Oracle_HR\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"680.3\" y=\"394.5\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Oracle_Finance\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"601.4\" y=\"531.1588087171845\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Oracle_Budget\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"443.6\" y=\"531.1588087171845\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"7\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Oracle_Procurement\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"364.7\" y=\"394.5\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"9\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\"Oracle_Warehouses\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"443.5999999999999\" y=\"257.8411912828156\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"12\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"11\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Correspondence تراسل\" style=\"shape=image;strokeColor=;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"601.3999999999999\" y=\"257.84119128281554\" width=\"50\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"Flow\" style=\";rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"13\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1', 'admin', '2022-10-19 13:35:54');

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
(48, 'tabs-2', 'Tab1', 'admin', 'MIM'),
(49, 'tabs-3', 'Tab2', 'admin', 'MIM'),
(50, 'tabs-4', 'Tab3', 'admin', 'MIM'),
(51, 'tabs-5', 'Tab4', 'admin', 'MIM');

-- --------------------------------------------------------

--
-- Table structure for table `organizational_tabs_copy`
--

CREATE TABLE `organizational_tabs_copy` (
  `id` int(10) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'newRoadmap', 'Business_Application', 'ATT_081', 'ATT_082', 'ATT_05', 1, 'MIM', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog_files`
--
ALTER TABLE `catalog_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_scripts`
--
ALTER TABLE `catalog_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_details`
--
ALTER TABLE `chart_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_details_copy`
--
ALTER TABLE `chart_details_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
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
-- Indexes for table `organizational_tabs_copy`
--
ALTER TABLE `organizational_tabs_copy`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog_scripts`
--
ALTER TABLE `catalog_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chart_details`
--
ALTER TABLE `chart_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `chart_details_copy`
--
ALTER TABLE `chart_details_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `json_graph`
--
ALTER TABLE `json_graph`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matrix_files`
--
ALTER TABLE `matrix_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navigation_files`
--
ALTER TABLE `navigation_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organizational_tabs`
--
ALTER TABLE `organizational_tabs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `organizational_tabs_copy`
--
ALTER TABLE `organizational_tabs_copy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
