<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">

.canvasjs-chart-credit{

	display:none;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script type="text/javascript">

$( "div:contains( 'CanvasJS Trial' )" )
function drawChart(chartType) { 
	var dataPoints = [];
	 
	var chart = new CanvasJS.Chart("chartContainer", {
		animationEnabled: true,
		exportEnabled: true,
		title: {
			text: "EAZee"
		},
		axisY: {
			title: "in Elements"
		},
		data: [{
			type: chartType,
			toolTipContent: "{y} Elements",
			dataPoints: dataPoints
		}]
	 });
	 
	$.get("<c:url value="/resources/js/charts/data_file.csv"/>", getDataPointsFromCSV);
	 
	//CSV Format
	//Year,Volume
	function getDataPointsFromCSV(csv) {
		var points;
		var csvLines = csv.split(/[\r?\n|\r|\n]+/);
		for (var i = 1; i < csvLines.length; i++) {
			if (csvLines[i].length > 0) {
				points = csvLines[i].split(",");
				dataPoints.push({
					label: points[0],
					y: parseFloat(points[1])
				});
			}
		}
		chart.render();
	}
}
</script>
</head>
<body>

<input onclick="drawChart('line');" type="button" id="linechart" value="Line Chart">
<input onclick="drawChart('bar');" type="button" id="barchart" value="Bar Chart">
<input onclick="drawChart('pie');" type="button" id="piechart" value="Pie Chart">
<input onclick="drawChart('bubble');" type="button" id="bubblechart" value="Bubble Chart">
<input onclick="drawChart('doughnut');" type="button" id="doughnutchart" value="Doughnut Chart">
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>        