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
(1, 'admin', 'Lambda Theta', 'cxz', 'Application Interface', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/cxz.xml', 20, '1', NULL, '2022-03-01 14:21:25'),
(2, 'admin', 'Lambda Theta', 'po', 'Application Component', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/po.xml', 20, '1', NULL, '2022-03-01 14:22:29'),
(3, 'admin', 'Lambda Theta', 'nmk', 'Application Component', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/nmk.xml', 20, '1', NULL, '2022-03-01 14:26:21'),
(4, 'admin', 'Lambda Theta', 'c1', 'Application Component', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/c1.xml', 20, '1', NULL, '2022-03-01 15:47:47'),
(5, 'admin', 'Lambda Theta', 'c2', 'Application Collaboration', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/c2.xml', 20, '1', NULL, '2022-03-01 15:48:22'),
(6, 'admin', 'Lambda Theta', 'oko', 'Application Component', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/oko.xml', 20, '1', NULL, '2022-03-02 07:17:11'),
(7, 'admin', 'Lambda Theta', 'oko', 'Application Component', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/oko.xml', 20, '1', NULL, '2022-03-02 07:17:19'),
(8, 'admin', 'Lambda Theta', 'i', 'Application Component', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/i.xml', 20, '1', NULL, '2022-03-04 15:40:01'),
(9, 'admin', 'Lambda Theta', 'aaaaaaaaaaa', 'Application Component', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/aaaaaaaaaaa.xml', 20, '1', NULL, '2022-03-12 05:21:31'),
(10, 'admin', 'Lambda Theta', 'ashan', 'Business Actor', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/ashan.xml', 20, '1', NULL, '2022-03-15 06:20:49'),
(11, 'admin', 'Lambda Theta', 'pop', 'Application Component', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/pop.xml', 20, '1', NULL, '2022-03-19 18:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `chart_details`
--

CREATE TABLE `chart_details` (
  `id` int(11) NOT NULL,
  `chart_name` varchar(255) NOT NULL,
  `div_id` varchar(255) NOT NULL,
  `chart_type` varchar(50) NOT NULL,
  `y_axis_data` text NOT NULL,
  `y_axis_label` text NOT NULL,
  `x_axis_label` text DEFAULT NULL,
  `categories_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_details`
--

INSERT INTO `chart_details` (`id`, `chart_name`, `div_id`, `chart_type`, `y_axis_data`, `y_axis_label`, `x_axis_label`, `categories_array`) VALUES
(51, 'bar1', 'chartContainer2', 'bar', '\"aaaa\"', 'null', 'null', '[\"Zeeshan\",\"App_Comp_0001\",\"App_Comp_0002\",\"App_Comp_0003\",\"App_Comp_0004\",\"App_Comp_0005\",\"App_Comp_0006\",\"App_Comp_0007\",\"App_Comp_0008\",\"App_Comp_0009\",\"App_Comp_0010\",\"App_Comp_0011\",\"App_Comp_0012\",\"ahsan1\",\"App_Comp_RugHev14\",\"Application_Component_Maxtos15\"]');

-- --------------------------------------------------------

--
-- Table structure for table `chart_details_copy`
--

CREATE TABLE `chart_details_copy` (
  `id` int(11) NOT NULL,
  `chart_name` varchar(255) NOT NULL,
  `div_id` varchar(255) NOT NULL,
  `chart_type` varchar(50) NOT NULL,
  `y_axis_data` text NOT NULL,
  `y_axis_label` text NOT NULL,
  `categories_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_details_copy`
--

INSERT INTO `chart_details_copy` (`id`, `chart_name`, `div_id`, `chart_type`, `y_axis_data`, `y_axis_label`, `categories_array`) VALUES
(16, 'bar1', 'chartContainer21', 'bar', '[1,2,1,2,3]', '[{\"y\":1,\"borderColor\":\"#00E396\",\"label\":{\"borderColor\":\"#00E396\",\"style\":{\"color\":\"#fff\",\"background\":\"#00E396\"},\"text\":\"Active\"}},{\"y\":2,\"borderColor\":\"#00E396\",\"label\":{\"borderColor\":\"#00E396\",\"style\":{\"color\":\"#fff\",\"background\":\"#00E396\"},\"text\":\"Retired\"}},{\"y\":1,\"borderColor\":\"#00E396\",\"label\":{\"borderColor\":\"#00E396\",\"style\":{\"color\":\"#fff\",\"background\":\"#00E396\"},\"text\":\"Active\"}},{\"y\":2,\"borderColor\":\"#00E396\",\"label\":{\"borderColor\":\"#00E396\",\"style\":{\"color\":\"#fff\",\"background\":\"#00E396\"},\"text\":\"Retired\"}},{\"y\":3,\"borderColor\":\"#00E396\",\"label\":{\"borderColor\":\"#00E396\",\"style\":{\"color\":\"#fff\",\"background\":\"#00E396\"},\"text\":\"Proposed\"}}]', '[\"Business Role_DlRNqB0\",\"Business Role_TakG7h1\",\"Business Role_PoxWBb2\",\"Business Role_lm9Uqx3\",\"Business Role_pYDtOn4\"]'),
(18, 'bar1', 'chartContainer31', 'bar', '[2,2,1]', '[]', '[\"Active\",\"Retired\",\"Proposed\"]'),
(19, 'bar1', 'chartContainer2', 'bar', '[1,1,1,6]', '[]', '[\"Very High\",\"Medium\",\"Low\",\"Very Low\"]'),
(20, 'bar1', 'chartContainer1', 'bar', '[1,1,1,6]', '[]', '[\"Very High\",\"Medium\",\"Low\",\"Very Low\"]');

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
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `username`, `company_name`, `modelName`, `graph_json`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'Lambda Theta', 'check', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"3\" value=\"Application&#10;Component_WyX4re0\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"220\" y=\"210\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Application&#10;Component_BAdioP2\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"200\" y=\"380\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"aaaaa\" style=\"shape=label;strokeColor=;fillColor=#e4cb68;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-actor1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"785.203125\" y=\"129\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 20, '1', 'admin', '2022-03-16 06:00:33'),
(2, 'admin', 'Lambda Theta', 'check this too', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-03 08:14:58'),
(3, 'admin', 'Lambda Theta', 'demo model', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"App&#10;component&#10;for&#10;Demo\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"320\" y=\"130\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"App&#10;Interface&#10;for&#10;demo\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-interface1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"250\" y=\"340\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Composed of\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"2\" target=\"3\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Application&#10;Component_FIXD7H1\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"160.000625\" y=\"40\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Associated to\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"5\" target=\"2\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 20, '1', 'admin', '2022-03-03 11:25:51'),
(4, 'admin', 'Lambda Theta', 'model demo', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Demo&#10;1\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"280\" y=\"120\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Node_gOX5Gb0\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/node1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"117.89776611328125\" y=\"401.3920593261719\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\"Node_svbA711\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/node1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"129.99952880859374\" y=\"299.9992932128906\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"Container\" style=\"shape=swimlane;startSize=40\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"690\" y=\"240\" width=\"341.78\" height=\"260\" as=\"geometry\"><mxRectangle x=\"690\" y=\"175\" width=\"70\" height=\"40\" as=\"alternateBounds\"/></mxGeometry></mxCell><mxCell id=\"12\" value=\"Grouping_tGUH0a0\" style=\"shape=label;strokeColor=;fillColor=#a7a7a3;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/grouping1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"13\" vertex=\"1\"><mxGeometry x=\"180.000083740196\" y=\"95\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"App&#10;component&#10;for&#10;Demo\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"190\" y=\"520\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Application&#10;Component_u97slB10\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"1040.0022338867188\" y=\"-110.00070678710938\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"Realizes\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"12\" target=\"9\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"check&#10;this&#10;two\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-interface1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"520\" y=\"230\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"15\" value=\"Node_N7Q6qb2\" style=\"shape=label;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/node1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"520.0022760300409\" y=\"479.9981295340402\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"16\" value=\"Application&#10;Component_e6ZTjp11\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"117.8968280901228\" y=\"199.99717715308782\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"17\" value=\"Application&#10;Component_FkPt3l12\" style=\"shape=label;strokeColor=;fillColor=#85cadc;rounded=1;shadow=1;strokeWidth=2;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-component1.svg;imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"770.0022758483886\" y=\"-219.99705932617184\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"18\" value=\"Realizes\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;\" parent=\"1\" source=\"12\" target=\"17\" edge=\"1\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 20, '1', 'admin', '2022-03-05 12:56:30'),
(5, 'admin', 'Lambda Theta', 'oo', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"Plateau_HnhqPE0\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/plateau1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"240\" y=\"200\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"Plateau_KmRYOP1\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/plateau1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"210\" y=\"330\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"Plateau_quXr082\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/plateau1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"520\" y=\"140\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"Gap_7iQnw50\" style=\"shape=label;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/gap1.svg;imageHeight=14;imageWidth=22;strokeColor=;fillColor=#aad4a2;rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"590\" y=\"330\" width=\"135\" height=\"55\" as=\"geometry\"/></mxCell><mxCell id=\"6\" value=\"Associated to\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"2\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"7\" value=\"Associated to\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"9\" value=\"Associated to\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"5\" target=\"4\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><mxCell id=\"10\" value=\"Associated from\" style=\"edgeStyle=orthogonalEdgeStyle;rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;\" edge=\"1\" parent=\"1\" source=\"4\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></root></mxGraphModel>', 20, '1', 'admin', '2022-03-05 14:44:13'),
(6, 'admin', 'Lambda Theta', 'abc', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-12 12:24:16'),
(7, 'admin', 'Lambda Theta', 'sadsad', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-16 08:30:51'),
(8, 'admin', 'Lambda Theta', 'aaaa', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-16 08:31:07'),
(9, 'admin', 'Lambda Theta', 'asad', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-16 12:37:39'),
(10, 'admin', 'Lambda Theta', 'ahsan', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-19 06:55:21'),
(11, 'admin', 'Lambda Theta', '1111_ahsan', '<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>', 20, '1', 'admin', '2022-03-19 06:56:03');

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
(11, 'ahsan', 'Ahsan_Company', 'Ahsan_Company', '0', '1', 'ahsan', '2021-08-04 05:57:15'),
(12, 'admin', 'Lambda Theta', 'Lambda Theta', '0', '1', 'admin', '2021-08-09 10:38:29'),
(13, 'ahsan1', 'Ahsan_Company', 'Ahsan2Folder', '11', '1', 'ahsan1', '2021-08-04 10:37:07'),
(14, 'SahiNaam', 'DHAkiCompany', 'DHAkiCompany', '0', '1', 'SahiNaam', '2021-08-04 05:57:27'),
(16, 'Arifsultan', 'DHAkiCompany', 'hh', '14', '1', 'Arifsultan', '2021-08-04 05:57:30'),
(18, 'Arifsultan', 'DHAkiCompany', 'arif_folder', '14', '1', 'Arifsultan', '2021-08-04 06:09:35'),
(19, 'ahsan1', 'Ahsan_Company', 'ahsan1folder', '11', '1', 'ahsan1', '2021-08-04 06:10:12'),
(20, 'admin', 'Lambda Theta', 'LT Folder1', '12', '1', 'admin', '2022-02-22 10:40:57'),
(21, 'admin', 'Lambda Theta', 'ali', '12', '1', 'admin', '2021-08-09 10:59:43'),
(22, 'admin', 'Lambda Theta', 'new folder check', '12', '1', 'admin', '2021-12-20 10:17:28'),
(23, 'admin', 'Lambda Theta', 'check folder', '12', '1', 'admin', '2021-12-21 07:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `folders_copy`
--

CREATE TABLE `folders_copy` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` text DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL
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
  `username` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `graphname` text DEFAULT NULL,
  `Graph_json` text DEFAULT NULL
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
  `xml_link` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(256) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matrix_files`
--

INSERT INTO `matrix_files` (`id`, `username`, `company_name`, `matrix_name`, `xml_link`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'Lambda Theta', 'trtr', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EAXee 19-Feb-2022\\/trtr.xml', 20, '1', NULL, '2022-03-02 07:11:47'),
(2, 'admin', 'Lambda Theta', 'chk', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/chk.xml', 20, '1', NULL, '2022-03-04 10:31:58'),
(3, 'admin', 'Lambda Theta', 'uyt', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/uyt.xml', 20, '1', NULL, '2022-03-04 10:33:01'),
(4, 'admin', 'Lambda Theta', 'hhk', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/hhk.xml', 20, '1', NULL, '2022-03-04 10:35:38'),
(5, 'admin', 'Lambda Theta', 'a', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/a.xml', 20, '1', NULL, '2022-03-04 10:37:22'),
(6, 'admin', 'Lambda Theta', 'nnn', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/nnn.xml', 20, '1', NULL, '2022-03-04 14:41:56'),
(7, 'admin', 'Lambda Theta', 'zzz', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/zzz.xml', 20, '1', NULL, '2022-03-04 14:56:46'),
(8, 'admin', 'Lambda Theta', 'ppp', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/ppp.xml', 20, '1', NULL, '2022-03-04 15:01:02'),
(9, 'admin', 'Lambda Theta', 'ddd', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/ddd.xml', 20, '1', NULL, '2022-03-04 15:04:32'),
(10, 'admin', 'Lambda Theta', 'bvbvb', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/bvbvb.xml', 20, '1', NULL, '2022-03-04 15:06:38'),
(11, 'admin', 'Lambda Theta', 'j', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/j.xml', 20, '1', NULL, '2022-03-04 15:33:37'),
(12, 'admin', 'Lambda Theta', 'kkkk', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/kkkk.xml', 20, '1', NULL, '2022-03-04 15:37:00'),
(13, 'admin', 'Lambda Theta', 'iuyy', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/iuyy.xml', 20, '1', NULL, '2022-03-04 15:50:53'),
(14, 'admin', 'Lambda Theta', 'cvc', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/cvc.xml', 20, '1', NULL, '2022-03-04 17:05:52'),
(15, 'admin', 'Lambda Theta', 'hh', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/hh.xml', 20, '1', NULL, '2022-03-04 17:07:07'),
(16, 'admin', 'Lambda Theta', 'bnbnb', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/bnbnb.xml', 20, '1', NULL, '2022-03-04 17:08:22'),
(17, 'admin', 'Lambda Theta', 'uu', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/uu.xml', 20, '1', NULL, '2022-03-04 17:18:09'),
(18, 'admin', 'Lambda Theta', 'matrixDemo', 'C:\\Users\\Ali\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/matrixDemo.xml', 20, '1', NULL, '2022-03-05 12:57:46'),
(19, 'admin', 'Lambda Theta', '6', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/6.xml', 20, '1', NULL, '2022-03-12 05:59:56'),
(20, 'admin', 'Lambda Theta', 'check_1122334', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/check_1122334.xml', 22, '1', NULL, '2022-03-24 10:19:37'),
(21, 'admin', 'Lambda Theta', 'fghfdftdfghjfg', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/fghfdftdfghjfg.xml', 20, '1', NULL, '2022-03-24 10:21:58'),
(22, 'admin', 'Lambda Theta', 'sadfsadfsdgsfg', 'C:\\Users\\DELL\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Project\\/sadfsadfsdgsfg.xml', 20, '1', NULL, '2022-03-24 11:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `roadmap`
--

CREATE TABLE `roadmap` (
  `id` int(10) NOT NULL,
  `RoadMap_Name` varchar(255) DEFAULT NULL,
  `Element_Name` varchar(255) DEFAULT NULL,
  `Start_Date` varchar(255) DEFAULT NULL,
  `End_Date` varchar(255) DEFAULT NULL,
  `Legend` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roadmap`
--

INSERT INTO `roadmap` (`id`, `RoadMap_Name`, `Element_Name`, `Start_Date`, `End_Date`, `Legend`) VALUES
(1, 'roadmap one', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(2, 'roadmap two', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(3, 'roadmap three', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(4, 'roadmap four', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(5, 'roadmap five', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(6, 'roadmap six', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(7, 'roadmap six', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(8, 'roadmap seven', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(9, 'roadmap eight', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(10, 'roadmap nine', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(11, 'roadmap ten', 'Business_Process', 'ATT_063', 'ATT_064', 'ATT_05'),
(12, 'roadmap_01', 'Application_Component', 'ATT_073', 'ATT_074', 'ATT_05'),
(13, 'roadmap_02', 'Application_Component', 'ATT_073', 'ATT_074', 'ATT_05'),
(14, 'roadmap_03', 'Application_Component', 'ATT_073', 'ATT_074', 'ATT_05'),
(15, 'roadmap_04', 'Application_Component', 'ATT_073', 'ATT_074', 'ATT_05'),
(16, 'roadmap_05', 'Application_Component', 'ATT_073', 'ATT_074', 'ATT_05'),
(17, 'roadmap_06', 'Application_Component', 'ATT_073', 'ATT_074', 'ATT_05');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chart_details`
--
ALTER TABLE `chart_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `chart_details_copy`
--
ALTER TABLE `chart_details_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `files_copy`
--
ALTER TABLE `files_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
