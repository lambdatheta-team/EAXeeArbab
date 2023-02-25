<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto);

body {
	font-family: Roboto, sans-serif;
}

#chart {
	max-width: 650px;
	margin: 35px auto;
}
</style>
</head>
<body>
	<input onclick="drawChart('line');" type="button" id="linechart"
		value="Line Chart">
	<input onclick="drawChart('bar');" type="button" id="barchart"
		value="Bar Chart">
	<input onclick="MultipleBar('bar');" type="button" id="barchart"
		value="MultipleBar Chart">
	<input onclick="MultipleColorBar('bar');" type="button" id="barchart"
		value="MultipleColorBar Chart">
	<input onclick="drawChart('radar');" type="button" id="radarchart"
		value="Radar Chart">
	<input onclick="drawChart('bubble');" type="button" id="bubblechart"
		value="Bubble Chart">
	<!-- 	<input onclick="drawChart('doughnut');" type="button" id="doughnutchart" value="Doughnut Chart"> -->
	<input onclick="piechart();" type="button" id="piechart"
		value="Pie Chart">
	<input onclick="dialchart();" type="button" id="dialchart"
		value="Dial Chart">
	<input onclick="rangeColumn();" type="button" id="rangeColumn"
		value="Range Column">

	<div id="chart"></div>
	<script type="text/javascript">
		function drawChart(chartType) {
			$("#chart").empty();
			var dataPoints = [];

			var options = {
				chart : {
					type : chartType
				},
				plotOptions : {
					bar : {
						horizontal : false,
						columnWidth : '55%',
						endingShape : 'rounded',
					},
				},
				dataLabels : {
					enabled : false
				},
				// 					stroke : {
				// 						show : true,
				// 						width : 2,
				// 						colors : [ 'transparent' ]
				// 					},
				series : [ {
					name : 'Quantity',
					data : [ 30, 40, 45, 50, 49, 60, 70, 91, 125 ]
				}, ],
				xaxis : {
					categories : [ "AppComp1", "AppComp2", "AppComp3",
							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
							"AppComp8", "AppComp9" ],
					title : {
						text : 'xaxis',
					},
					lines : {
						show : true
					}
				},
				yaxis : {
					// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
					// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
					// 							"AppComp8", "AppComp9" ],
					title : {
						text : 'yaxis',
					},
					lines : {
						show : true
					}
				},
				title : {
					text : 'Traffic Sources',
					align : 'center',
				},
				grid : {
					position : 'front'
				}

			}

			var chart = new ApexCharts(document.querySelector("#chart"),
					options);

			chart.render();
		}

		function MultipleColorBar(chartType) {
			$("#chart").empty();
			var dataPoints = [];

			var options = {
				chart : {
					type : chartType
				},
				plotOptions : {
					bar : {
						horizontal : false,
						columnWidth : '55%',
						endingShape : 'rounded',
						distributed : true
					},
				},
				dataLabels : {
					enabled : false
				},
				// 					stroke : {
				// 						show : true,
				// 						width : 2,
				// 						colors : [ 'transparent' ]
				// 					},
				series : [ {
					name : 'Optimized',
					data : [ 30, 40, 45, 50, 49, 60, 70, 91, 125 ]
				}, {
					name : 'Managed',
					data : [ 30, 40, 45, 50, 49, 60, 70, 91, 125 ]
				}, {
					name : 'Functional',
					data : [ 30, 40, 45, 50, 49, 60, 70, 91, 125 ]
				}, ],
				xaxis : {
					categories : [ "AppComp1", "AppComp2", "AppComp3",
							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
							"AppComp8", "AppComp9" ],
					title : {
						text : 'xaxis',
					},
					lines : {
						show : true
					}
				},
				yaxis : {
					title : {
						text : 'yaxis',
					},
					lines : {
						show : true
					}
				},
				title : {
					text : 'Traffic Sources',
					align : 'center',
				},
				grid : {
					position : 'front'
				}
			}

			var chart = new ApexCharts(document.querySelector("#chart"),
					options);

			chart.render();
		}

		function MultipleBar(chartType) {
			$("#chart").empty();
			var dataPoints = [];

			var options = {
				chart : {
					type : chartType
				},
				plotOptions : {
					bar : {
						horizontal : false,
						columnWidth : '55%',
						endingShape : 'rounded'
					},
				},
				dataLabels : {
					enabled : false
				},
				series : [ {
					name : 'Quantity',
					data : [ 30, 40, 45, 50, 49, 60, 70, 91, 125 ]
				}, {
					name : 'Revenue',
					data : [ 76, 85, 101, 98, 87, 105, 91, 114, 94 ]
				}, {
					name : 'Profit',
					data : [ 10, 80, 100, 82, 73, 5, 31, 124, 94 ]
				}, ],
				xaxis : {
					categories : [ "AppComp1", "AppComp2", "AppComp3",
							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
							"AppComp8", "AppComp9" ],
					title : {
						text : 'xaxis',
					},
					lines : {
						show : true
					}
				},
				yaxis : {
					// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
					// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
					// 							"AppComp8", "AppComp9" ],
					title : {
						text : 'yaxis',
					},
					lines : {
						show : true
					}
				},
				title : {
					text : 'Traffic Sources',
					align : 'center',
				},
				grid : {
					position : 'front'
				}
			}

			var chart = new ApexCharts(document.querySelector("#chart"),
					options);

			chart.render();
		}

		function piechart() {
			$("#chart").empty();
			var options = {
				series : [ 44, 55, 13, 43, 22, 44, 66, 77 ],
				chart : {
					width : 380,
					type : 'pie',
				},
				title : {
					text : 'Traffic Sources',
					align : 'center',
				},

				labels : [ 'Team A', 'Team B', 'Team C', 'Team D', 'Team E',
						'Team F', 'Team G', 'Team H' ],
				responsive : [ {
					breakpoint : 480,
					options : {
						chart : {
							width : 200
						},
					}
				} ],
				legend : {
					position : 'bottom'
				}
			};

			var chart = new ApexCharts(document.querySelector("#chart"),
					options);
			chart.render();
		}

		function rangeColumn() {
			$("#chart").empty();
			var options = {
				series : [ {
					data : [ {
						x : 'Team A',
						y : [ 0, 5 ]
					}, {
						x : 'Team B',
						y : [ 0, 6 ]
					}, {
						x : 'Team C',
						y : [ 0, 8 ]
					}, {
						x : 'Team D',
						y : [ 0, 11 ]
					} ]
				}, {
					data : [ {
						x : 'Team A',
						y : [ 0, 5 ]
					}, {
						x : 'Team B',
						y : [ 0, 3 ]
					}, {
						x : 'Team C',
						y : [ 0, 8 ]
					}, {
						x : 'Team D',
						y : [ 0, 9 ]
					} ]
				} ],
				chart : {
					type : 'rangeBar',
					height : 350
				},
				plotOptions : {
					bar : {
						horizontal : false,
					}
				},
				dataLabels : {
					enabled : false
				},
				title : {
					text : "Title",
					align : 'center',
				},
				// 				xaxis : {
				// 		            title: {
				// 			              text: 'xaxis',
				// 			            },
				// 				    lines: {
				// 				        show: true
				// 				      }
				// 				},
				yaxis : {
					title : {
						text : 'Millions',
					},
					lines : {
						show : true
					}
				},
			};

			var chart = new ApexCharts(document.querySelector("#chart"),
					options);
			chart.render();
		}
		function dialchart() {
			$("#chart").empty();
			var options = {
				chart : {
					height : 280,
					type : "radialBar",
				},
				series : [ 67 ],
				colors : [ "#20E647" ],
				plotOptions : {
					radialBar : {
						startAngle : -135,
						endAngle : 135,
						track : {
							background : '#333',
							startAngle : -135,
							endAngle : 135,
						},
						dataLabels : {
							name : {
								show : false,
							},
							value : {
								fontSize : "30px",
								show : true
							}
						}
					}
				},
				fill : {
					type : "gradient",
					gradient : {
						shade : "dark",
						type : "horizontal",
						gradientToColors : [ "#87D4F9" ],
						stops : [ 0, 100 ]
					}
				},
				stroke : {
					lineCap : "butt"
				},
				labels : [ "Progress" ]
			};

			new ApexCharts(document.querySelector("#chart"), options).render();
		}
	</script>
</body>
</html>