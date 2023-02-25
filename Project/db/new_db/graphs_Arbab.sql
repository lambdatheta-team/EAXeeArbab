-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 03:56 PM
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
  `status` text,
  `owner_of_the_object` varchar(256) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_files`
--

INSERT INTO `catalog_files` (`id`, `username`, `company_name`, `catalog_name`, `element_name`, `xml_link`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'Lambda Theta', '22', 'Application Collaboration', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/22.xml', 12, '1', 'admin', '2021-09-06 12:08:29'),
(2, 'admin', 'Lambda Theta', 'sdsd', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/sdsd.xml', 12, '1', 'admin', '2021-09-06 12:08:29'),
(3, 'admin', 'Lambda Theta', 'Arbabbb', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/Arbabbb.xml', 12, '1', 'admin', '2021-09-06 12:08:29'),
(4, 'admin', 'Lambda Theta', 'dd', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/dd.xml', NULL, NULL, NULL, '2021-09-08 13:07:38'),
(5, 'admin', 'Lambda Theta', 'sadsaddsad', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/sadsaddsad.xml', NULL, NULL, NULL, '2021-09-09 05:29:43'),
(6, 'admin', 'Lambda Theta', 'qqqqqqqq', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/qqqqqqqq.xml', NULL, NULL, NULL, '2021-09-09 06:04:45'),
(7, 'admin', 'Lambda Theta', '3333', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/3333.xml', 21, NULL, NULL, '2021-09-09 10:27:31'),
(8, 'admin', 'Lambda Theta', 'xczxczxczczc', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/xczxczxczczc.xml', 12, NULL, NULL, '2021-09-09 10:31:05'),
(9, 'admin', 'Lambda Theta', 'asas', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/asas.xml', 12, NULL, NULL, '2021-09-09 10:44:52'),
(10, 'admin', 'Lambda Theta', 'bvcx', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/bvcx.xml', 12, '1', NULL, '2021-09-09 10:47:34'),
(11, 'admin', 'Lambda Theta', '522', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/522.xml', 21, '1', NULL, '2021-09-09 10:48:45'),
(12, 'admin', 'Lambda Theta', '55', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/55.xml', 12, '1', NULL, '2021-09-09 10:49:27'),
(13, 'admin', 'Lambda Theta', 'zzz', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/zzz.xml', 21, '1', NULL, '2021-09-09 12:12:57'),
(14, 'admin', 'Lambda Theta', 'www', 'Business Actor', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/www.xml', 20, '1', NULL, '2021-09-09 12:13:55'),
(15, 'admin', 'Lambda Theta', 'jhk', 'Application Component', 'C:\\Users\\Welcome\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/jhk.xml', 12, '1', NULL, '2021-09-18 12:58:14'),
(16, 'admin', 'Lambda Theta', 'oiu', 'Application Component', 'C:\\Users\\Welcome\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/oiu.xml', 20, '1', NULL, '2021-09-18 12:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `modelName` text,
  `graph_json` longtext,
  `parent_id` int(11) DEFAULT NULL,
  `status` text,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `username`, `company_name`, `modelName`, `graph_json`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(14, 'ahsan1', 'Ahsan_Company', 'ahsan1file1', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Actor_HdkGeH10\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"245.875\" y=\"101.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Business&#10;Role_3ZseIv5\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-role1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"457.875\" y=\"185.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Business&#10;Collaboration_vyggr81\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-collaboration1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"227.875\" y=\"247.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Business&#10;Interface_BbRhQz0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-interface1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"40.004999999999995\" y=\"170\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Business&#10;Process_lgBrVz0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-process1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"140.875\" y=\"351.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Application&#10;Collaboration_LkF2LU2\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-collaboration1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"343.328125\" y=\"418.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"Contract_3Dc63X0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/contract1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"201.328125\" y=\"35.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 11, '1', 'ahsan1', '2021-08-04 10:00:07'),
(15, 'ahsan1', 'Ahsan_Company', 'ahsan1file2', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 11, '1', 'ahsan1', '2021-08-04 05:56:19'),
(16, 'ahsan1', 'Ahsan_Company', 'ahsan2file1', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"12\" value=\"Business&#10;Actor_CC5vUw3\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;strokeColor=;fillColor=#e4cb68;rounded=1;imageHeight=14;imageWidth=22;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"310\" y=\"160\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Business&#10;Actor_gE7ztO13\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"278.4375\" y=\"330.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"Business&#10;Actor_hA7KDC14\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"172.4375\" y=\"193.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"15\" value=\"Application&#10;Interaction_mdfcyW0\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-interaction1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"418.4375\" y=\"279.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"16\" value=\"Device_SQbzie0\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/device1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"253.4375\" y=\"449.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"17\" value=\"Application&#10;Service_4pfryw0\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-service1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"202.4375\" y=\"104.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"18\" value=\"Application&#10;Component_EczQxq11\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"146.4375\" y=\"300.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"19\" value=\"Application&#10;Component_8ovSvY12\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"445.4375\" y=\"126.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"20\" value=\"Business&#10;Actor_LMJUAv15\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"510.4375\" y=\"429.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"21\" value=\"Technology&#10;Process_p7kCnu0\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/technology-process1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"180.4375\" y=\"418.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"22\" value=\"Node_oaW3kY0\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/node1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"142.4375\" y=\"477.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"23\" value=\"Device_2ZUqEF1\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/device1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"469.4375\" y=\"503.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"24\" value=\"Device_3AT1DO2\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/device1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"512.4375\" y=\"219.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 13, '1', 'ahsan1', '2021-08-04 11:51:04'),
(17, 'ahsan1', 'Ahsan_Company', 'ahsan1file3', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 11, '1', 'ahsan1', '2021-08-04 05:56:22'),
(18, 'ahsan', 'Ahsan_Company', 'ahsan2file2', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 13, '1', 'ahsan', '2021-08-04 10:37:07'),
(20, 'Arifsultan', 'DHAkiCompany', '54', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Actor_z3ACk20\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"275.875\" y=\"148.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 16, '1', 'Arifsultan', '2021-08-10 10:15:17'),
(21, 'SahiNaam', 'DHAkiCompany', 'mnbv', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 16, '1', 'SahiNaam', '2021-08-04 05:57:05'),
(23, 'ahsan1', 'Ahsan_Company', 'ahsan1file4', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 13, '1', 'ahsan1', '2021-08-04 10:37:07'),
(24, 'Arifsultan', 'DHAkiCompany', 'arifsultan1', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 16, '1', 'Arifsultan', '2021-08-04 06:09:09'),
(25, 'admin', 'Lambda Theta', 'aa', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2021-09-08 11:15:49'),
(27, 'admin', 'Lambda Theta', 'cc', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Service_m7INZa3\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-service1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"296.875\" y=\"208.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Business&#10;Role_VprsLY0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-role1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"260.005\" y=\"370.005\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Business&#10;Function_fKhwJI3\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-function1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"131.875\" y=\"183.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Application&#10;Component_fmuaVM5\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"10.004999999999995\" y=\"450.005\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Application&#10;Component_HcF5iu6\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"199.875\" y=\"526.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Serves\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"5\" target=\"6\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"Business&#10;Function_1unTvD4\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-function1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"647.875\" y=\"64.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Application&#10;Component_Uvg7je7\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"750.875\" y=\"195.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Associated to\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"8\" target=\"9\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\"Node_saG22Y2\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/node1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"30.004999999999995\" y=\"330.005\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"12\" value=\"Triggers\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"11\" target=\"4\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Business&#10;Function_XZsNwn13\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-function1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"373.875\" y=\"63.578125\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 12, '1', 'admin', '2021-09-18 07:04:52'),
(28, 'admin', 'Lambda Theta', 'dd', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Product_vHQyIU2\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/product1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"264.53125\" y=\"79.796875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 12, '1', 'admin', '2021-09-13 06:26:43'),
(29, 'admin', 'Lambda Theta', 'ee', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Service_9T4ItX0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-service1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"591.875\" y=\"391.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Collaboration_f7rvB30\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-collaboration1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"451.875\" y=\"332.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 20, '1', 'admin', '2021-08-10 09:44:10'),
(30, 'admin', 'Lambda Theta', 'ff', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2021-08-09 10:57:30'),
(31, 'admin', 'Lambda Theta', 'jj', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2021-08-09 10:58:26'),
(33, 'admin', 'Lambda Theta', '987', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Business&#10;Interaction_VvWyrC0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-interaction1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"268.875\" y=\"101.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Business&#10;Event_72I3qR0\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-event1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"337.875\" y=\"317.5\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 20, '1', 'admin', '2021-08-10 10:15:48'),
(34, 'admin', 'Lambda Theta', 'asa', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 21, '1', 'admin', '2021-09-06 12:24:25'),
(35, 'admin', 'Lambda Theta', 'ttt', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component_OZtowK0\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"360\" y=\"210\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Component_xlu8tk2\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"280\" y=\"360\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Composed of\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"2\" target=\"3\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Business&#10;Function_cQRuan6\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-function1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"83.875\" y=\"80.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Business&#10;Interaction_MAq7fl3\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-interaction1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"292.875\" y=\"72.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Business&#10;Collaboration_7GJqax2\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-collaboration1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"238.875\" y=\"259.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"Contract_SktqMe1\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/contract1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"159.875\" y=\"270.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Business&#10;Object_yu4HFX1\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-object1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"61.875\" y=\"205.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Application&#10;Component_ANOOPr10\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"130\" y=\"490\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\"Application&#10;Component_VCHgxD9\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"480\" y=\"500\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"12\" value=\"Business&#10;Service_m146iu8\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-service1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"833.875\" y=\"83.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Application&#10;Collaboration_c5sDCZ2\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-collaboration1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"621.875\" y=\"219.875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"Application&#10;Component_YLu21z8\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"560\" y=\"410\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"15\" value=\"Application&#10;Collaboration_X9movF3\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-collaboration1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"876.875\" y=\"215.75\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"16\" value=\"Business&#10;Function_nDSXcL8\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-function1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"287.875\" y=\"25.671875\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 12, '1', 'admin', '2021-09-13 07:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `files_copy`
--

CREATE TABLE `files_copy` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `modelName` text,
  `graph_json` longtext,
  `parent_id` int(11) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files_copy`
--

INSERT INTO `files_copy` (`id`, `username`, `company_name`, `modelName`, `graph_json`, `parent_id`, `status`) VALUES
(1, 'admin', 'Lambda---Theta', 'mdl1', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 1, '0'),
(2, 'admin', 'Lambda---Theta', 'new_graph', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component-21\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-component.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"318\" y=\"68.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Interface-7\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-interface.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"376\" y=\"211.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Realization\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 2, '1'),
(3, 'admin', 'Lambda---Theta', 'model2', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component-22\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-component.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"180\" y=\"44.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Function-2\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-function.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"253\" y=\"214.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Realization\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Application&#10;Service-0\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-service.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"392\" y=\"62.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Realization\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"3\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 3, '1'),
(4, 'admin', 'Lambda---Theta', 'root_file', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component-23\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-component.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"276\" y=\"80.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Interface-8\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-interface.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"244\" y=\"251.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Application&#10;Function-3\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-function.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"699\" y=\"211.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Application&#10;Service-1\" style=\"shape=label;strokeColor=#63f7f0;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2;image=https://eaxee.com/EAZee/resources/js/examples/editors/images/images1/application-service.svg;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"599\" y=\"63.5\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Realization\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Realization\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"4\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Serving\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"3\" target=\"2\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 1, '1'),
(5, 'ahsan1', 'Ahsan_Company', 'ahsan1', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 4, '1'),
(6, 'ahsan2', 'Ahsan_Company', 'ahsan2', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 5, '1'),
(10, 'ahsan2', 'Ahsan_Company', 'ahsan2_new', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 5, '1'),
(12, 'ahsan1', 'Ahsan_Company', 'ahsan1_new_file', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 4, '1'),
(13, 'ahsan1', 'Ahsan_Company', 'ahsan1asd', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `username` text,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` text,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` text,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(11, 'ahsan', 'Ahsan_Company', 'Ahsan_Company', '0', '1', 'ahsan', '2021-08-04 05:57:15'),
(12, 'admin', 'Lambda Theta', 'Lambda Theta', '0', '1', 'admin', '2021-08-09 10:38:29'),
(13, 'ahsan1', 'Ahsan_Company', 'Ahsan2Folder', '11', '1', 'ahsan1', '2021-08-04 10:37:07'),
(14, 'SahiNaam', 'DHAkiCompany', 'DHAkiCompany', '0', '1', 'SahiNaam', '2021-08-04 05:57:27'),
(16, 'Arifsultan', 'DHAkiCompany', 'hh', '14', '1', 'Arifsultan', '2021-08-04 05:57:30'),
(18, 'Arifsultan', 'DHAkiCompany', 'arif_folder', '14', '1', 'Arifsultan', '2021-08-04 06:09:35'),
(19, 'ahsan1', 'Ahsan_Company', 'ahsan1folder', '11', '1', 'ahsan1', '2021-08-04 06:10:12'),
(20, 'admin', 'Lambda Theta', 'LT Folder1', '12', '1', 'admin', '2021-08-09 10:39:10'),
(21, 'admin', 'Lambda Theta', 'ali', '12', '1', 'admin', '2021-08-09 10:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `folders_copy`
--

CREATE TABLE `folders_copy` (
  `id` int(11) NOT NULL,
  `username` text,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` text,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folders_copy`
--

INSERT INTO `folders_copy` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`) VALUES
(1, 'admin', 'Lambda---Theta', 'LambdaTheta', '0', '1'),
(2, 'admin', 'Lambda---Theta', 'NewFolder1', '1', '1'),
(3, 'admin', 'LambdaTheta', 'Folder2', '1', '1'),
(4, 'ahsan1', 'Ahsan_Company', 'Ahsan_Company', '0', '1'),
(8, 'ahsan2', 'Ahsan_Company', 'ahsan_folder2', '5', '1'),
(9, 'admin', 'Lambda---Theta', 'admin_Folder', '1', '1'),
(10, 'ahsan1', 'Ahsan_Company', 'ahsan1Folder_check', '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `json_graph`
--

CREATE TABLE `json_graph` (
  `id` int(10) NOT NULL,
  `username` text,
  `company_name` varchar(255) DEFAULT NULL,
  `graphname` text,
  `Graph_json` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `json_graph`
--

INSERT INTO `json_graph` (`id`, `username`, `company_name`, `graphname`, `Graph_json`) VALUES
(3, 'ali', NULL, 'jk', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=image;image=/EAZee/resources/js/examples/editors/images/images1/application-component1.png;strokeColor=Black;fillColor=#a8f7f3\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"740\" y=\"190\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Function\" style=\"shape=image;image=/EAZee/resources/js/examples/editors/images/images1/application-function1.png;strokeColor=Black;fillColor=#a8f7f3\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"590\" y=\"230\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(4, 'admin', NULL, 'ali_graph', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=image;image=/EAZee/resources/js/examples/editors/images/images1/application-component1.png;strokeColor=Black;fillColor=#a8f7f3\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"670\" y=\"220\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Component\" style=\"shape=image;image=/EAZee/resources/js/examples/editors/images/images1/application-component1.png;strokeColor=Black;fillColor=#a8f7f3\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"660\" y=\"350\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(5, '', NULL, 'aaa', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Service\" style=\"shape=image;image=/EAZee/resources/js/examples/editors/images/images1/application-service1.png;strokeColor=Black;fillColor=#a8f7f3\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"540\" y=\"140\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Indicator\" style=\"shape=image;image=/EAZee/resources/js/examples/editors/images/images1/indicator1.png;strokeColor=Black;fillColor=#fffda3\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"570\" y=\"310\" width=\"100\" height=\"40\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(6, 'admin', NULL, 'aqw', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-component.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"280\" y=\"140\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Interface\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-interface.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"240\" y=\"300\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Label\" style=\"startArrow=dash;startSize=12;endArrow=block;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(7, 'admin', NULL, 'lkj', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-component.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"550\" y=\"150\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Function\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-function.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"530\" y=\"480\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(8, 'admin', NULL, 'poi', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-component.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"570\" y=\"210\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Function\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-function.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"530\" y=\"480\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(9, 'admin', NULL, '9', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-component.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"230\" y=\"120\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Function\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-function.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"370\" y=\"420\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Business&#10;Function\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/business-function.svg;strokeColor=Black;fillColor=#8bfa96;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"500\" y=\"150\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Indicator\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/indicator.svg;strokeColor=Black;fillColor=#f5575b;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"680\" y=\"320\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell></root></mxGraphModel>'),
(10, 'admin', NULL, 'asas', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Application&#10;Component\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-component.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"230\" y=\"120\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Application&#10;Function\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/application-function.svg;strokeColor=Black;fillColor=#a8f7f3;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"370\" y=\"420\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Business&#10;Function\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/business-function.svg;strokeColor=Black;fillColor=#8bfa96;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"500\" y=\"150\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Indicator\" style=\"shape=label;image=/EAZee/resources/js/examples/editors/images/images1/indicator.svg;strokeColor=Black;fillColor=#f5575b;rounded=1;shadow=1;strokeWidth=2\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"680\" y=\"320\" width=\"135\" height=\"50\" as=\"geometry\"/></mxCell></root></mxGraphModel>');

-- --------------------------------------------------------

--
-- Table structure for table `matrix_files`
--

CREATE TABLE `matrix_files` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `matrix_name` varchar(256) NOT NULL,
  `first_element` varchar(256) NOT NULL,
  `second_element` varchar(256) NOT NULL,
  `xml_link` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text,
  `owner_of_the_object` varchar(256) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matrix_files`
--

INSERT INTO `matrix_files` (`id`, `username`, `company_name`, `matrix_name`, `first_element`, `second_element`, `xml_link`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'Lambda Theta', 'sds', 'Application Component', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/sds.xml', 10, '1', NULL, '2021-09-16 11:08:05'),
(2, 'admin', 'Lambda Theta', 'dfd', 'Application Component', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/dfd.xml', 10, '1', NULL, '2021-09-16 11:08:58'),
(3, 'admin', 'Lambda Theta', 'dsaa', 'Application Component', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/dsaa.xml', 10, '1', 'admin', '2021-09-16 11:11:10'),
(4, 'admin', 'Lambda Theta', 'Arbab', 'Application Component', 'Application Component', 'C:\\Users\\Dell\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/Arbab.xml', 10, '1', 'admin', '2021-09-16 11:58:31'),
(5, 'admin', 'Lambda Theta', 'gbjhg', 'Application Component', 'Application Component', 'C:\\Users\\Welcome\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAZee\\/gbjhg.xml', 10, '1', 'admin', '2021-09-18 12:59:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog_files`
--
ALTER TABLE `catalog_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
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
-- Indexes for table `folders_copy`
--
ALTER TABLE `folders_copy`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog_files`
--
ALTER TABLE `catalog_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `files_copy`
--
ALTER TABLE `files_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `folders_copy`
--
ALTER TABLE `folders_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `json_graph`
--
ALTER TABLE `json_graph`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `matrix_files`
--
ALTER TABLE `matrix_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
