 var getfolder = "";
 var getcompanyName = "";
 var getParentID = "";
 function ganttChart(companyName,folderID,parentID) {
//			var dialog
			console.log(companyName+"  "+folderID+"  "+parentID)
			console.log("At gantt chart");
			getfolder = folderID;
			getcompanyName = companyName;
 			getParentID = parentID;
			$( "#dialogGanttChart" ).dialog({
				modal: true
			});
			
			$.ajax({
				url: "getDateForElement",
				success: function(data){
//		 			console.log(data);
				$("#elementNameGanttList").empty();
				$('#elementNameGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
				
				$("#StartDateGanttList").empty();
				$('#StartDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
				
				$("#EndDateGanttList").empty();
				$('#EndDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
				
				$('#LegendGanttList').empty();
				$('#LegendGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));

					$.each(data, function(i, item) {
//						if (i == 0) {
//							$('#elementNameGanttList').append($("<option Disabled Selected />").val("Select").text("Select"));
//						}
						var getDivid = "#elementNameGanttList";
						fill_elements_in_dropdown(getDivid, item);
//						$("#elementNameGanttList").append($('<option>', {
//							value: item,
//							text: item
//						}));
					});
					
				}
			});
			
			
//			$( "#newRoadmapInbox" ).html('<label> New Roadmap </label> 				   &emsp; 			<label> <input type="text" id="new_roadmap" name="roadmap" placeholder="New Roadmap" style="width: 150px">');
//			$( "#elementNameGantt" ).html('<label> Element Name </label> 			   &emsp; 			<label> <select name="element" id="elementNameGanttList" style="width: 150px">  </select>');
			

			var getElement1 = "";
			
			
			
			$('#elementNameGanttList').on('change', function () {
				$('#StartDateGanttList').empty();
				$('#EndDateGanttList').empty();
			
				
					getElement1 = $('#elementNameGanttList').val();
					shoaib999 = getElement1; 
					$.ajax({
						url: "getDateForStartDate",
						data: {'Element_Name':getElement1},
						success: function(data){
						
							$("#StartDateGanttList").empty();
							
							$("#EndDateGanttList").empty();
						
							$.each(data, function(i, item) {
								if (i == 0)
								{
									$('#StartDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));	
									$('#EndDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));	
								}
								var getDivid = "#StartDateGanttList";
								fill_elements_in_dropdown(getDivid, item);								
//								$("#StartDateGanttList").append($('<option>', {
//									value: item,
//									text: item
//								}));
								
								var getDividEndDateGanttList = "#EndDateGanttList";
								fill_elements_in_dropdown(getDividEndDateGanttList, item);	
//								$("#EndDateGanttList").append($('<option>', {
//									value: item,
//									text: item
//								}));
										
								
							});
//							dropdown validation for start and end date
							$('#StartDateGanttList').on('change', function () {
//									var start =$.trim($(this).val());
									var start =($(this).val());
									$("#EndDateGanttList option").prop("disabled",false);
									console.log("start-data; ",start);
									$("#EndDateGanttList option[value='"+start+"']").attr("disabled","disabled");
							});
							
							$('#EndDateGanttList').on('change', function () {
									var end =($(this).val());
									$("#StartDateGanttList option").prop("disabled",false);
									console.log("end-data; ",end);
									$("#StartDateGanttList option[value='"+end+"']").attr("disabled","disabled");

							});
						}
					});
			 });
			
			
			
//			$( "#StartDateGantt" ).html('<label> Start Date </label>   	 &ensp; &ensp; &emsp; &nbsp;	<label> <select name="sDate" id="StartDateGanttList" style="width: 150px">  </select>'); 
//			$( "#EndDateGantt" ).html('<label> End Date  </label> 		 &ensp; &ensp; &emsp; &ensp;	<label> <select name="eDate" id="EndDateGanttList" style="width: 150px">  </select>');
			
			var ElementVal = $('#elementNameGanttList').val();
			
			$('#elementNameGanttList').on('change', function () {
				$('#LegendGanttList').empty();
					getElement1 = $('#elementNameGanttList').val();
					$.ajax({
						url: "getDateForLegend",
						data: {'Element_Name':getElement1},
						success: function(data){
							$('#LegendGanttList').empty();
							
							$.each(data, function(i, item) {
								if (i == 0) {
									$('#LegendGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
								}
								var getDividLegendGanttList = "#LegendGanttList";
								fill_elements_in_dropdown(getDividLegendGanttList, item);									
//								$("#LegendGanttList").append($('<option>', {
//									value: item,
//									text: item
//								}));
							});
							
						}
					});
			});
			


			console.log($('#StartDateGanttList').val(),"start")
		    
			$( function() {
					console.log("Open roadmap modal");
					console.log("folderID88",folderID);
				    var dialog, form,
					  dialog = $( "#dialogGanttChart" ).dialog({
				      autoOpen: false,
				      height: 400,
				      width: 350,
				      modal: true,
				      buttons: {
				        [generate_roadmap]: TimeLinegraphBTN,
				        	[Cancel]: function() {
							console.log("modal close")
							
				          dialog.dialog( "close" );
				        }
				      },
				      close: function() {
				         form[0].reset()
				      }
				    });
					 
					 form = dialog.find( "form" ).on( "submit", function( event ) {
							console.log("check form")
					      TimeLinegraphBTN(companyName,folderID,parentID);
					      event.preventDefault();
					    });
					 
					    $( "#dialogGanttChart" ).button().on("click", function() {
					      dialog.dialog( "open" );
					    }); 
					  dialog.dialog( "open" );
			});
			
			
	
			var getDD = "";
			
			$("#elementNameGantt").click(function () {
				getDD = $("#elementNameGanttList").val()
			})
			
			console.log("getDD",getDD);
			var rrr = $('#elementNameGanttList').val();
			
//			new function
			$(function() {
				$('#elementNameGanttList').on('change', function (e) {
					var RRselected = $('#elementNameGanttList').val();
					var changeSelec = false;
					$('#StartDateGanttList option').each(function() {
						var opt = $(this);
						var VValue = opt.val();
						
						if (VValue !== RRselected) {
							opt.addClass('hide');
							opt.removeAttr('selected');
						}
						else {
							opt.removeClass('hide');
							
							if(!changeSelec) {
								opt.attr('selected', 'selected');
								changeSelec = true;
							}
							else {
								opt.removeAttr('selected');
							}
						}
					});
				});
			});
			
		}
		
		
		
//			Time Line Chart
		function TimeLinegraphBTN(companyName,folderID,parentID) {
			RoadMapView();
			$("#element_title").empty();

			var ElementVal = $('#elementNameGanttList').val();
			var StartDateVal = $('#StartDateGanttList').val();
			var EndDateVal = $('#EndDateGanttList').val();
			var LegendVal = $('#LegendGanttList').val();
			var roadMap_name = $('#new_roadmap').val();
			 
//			roadMap_name = roadMap_name.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
//			roadMap_name = roadMap_name.replace(/[^\w]/gi, '_');
			roadMap_name = roadMap_name.replace(/[^\w\u0600-\u06FF\s]/gi,'_')
			
    		$.ajax({
  		      url: "validateRoadmapName", // url: "/findTables?dbName="+db_name,
  		      //type: "GET",
  		      data: {'roadMap_name': roadMap_name},
  		      //dataType: "text/String"
      			success: function(data) {
      				if(data==''){
//					if(roadMap_name != "same"){
			//			$("#element_title").show().text(roadMap_name);
						var StartActDate = "";
						var EndActDate = "";
						var legendData = "";
						
						$.ajax({
							url: 'getDateForGanttChartStartDate',
							async:false,
							data: {ElementVal,StartDateVal},
							success: function(data){
								StartActDate = data[0];
							}
						});
						$.ajax({
							url: "getDateForGanttChartEndDate",
							async:false,
							data: {ElementVal,EndDateVal},
							success: function(data){
								EndActDate = data[0];
								
							}
						});
						
						$.ajax({
							url: "getDateForGanttChartLegend",
							async:false,
							data: {ElementVal,LegendVal},
							success: function(data){
								legendData = data[0];
								
							}
						});
						
						var spltLeg = "";
						$.ajax({
							type: "POST",
							async: false,
							data: {ElementVal, LegendVal},
							url: "getLegendValues",
							success: function(data)
							{	
								let val = data.toString();
								spltLeg = val.split(";");
								
							}
					  	});			
						
						$.ajax({
							type: "POST",
							data: {ElementVal, StartActDate, EndActDate, legendData},
							url: "getTimeLineData",
							success: function(data)
							{
								console.log("dateaaa",data)	
								for(let i=0; i<data.length; i++){
			//						console.log(data[i])
								}
							
							
							$("#chart").empty();
			//				$("#myPage").hide();
			//				$("#catalog").hide();
			//				$("#matrix").hide();
			//				$("#paleteDiv").hide();
			//				$("#form_id").hide();
			//				$("#graphId").hide();
							
			
			//	-----------------------------------------------------------------------------------	
			
							 
							const leg = spltLeg;
							var incorrectDate = false;
							var incorrectLegend = false;
							var allowObj = 0;				  
							var my_array = [];
							var my_legend = [];
			// 				var listofList = [];
							var datalist = {};
							var objInd = 0;
							for(let i=0; i<leg.length; i++){
								datalist[leg[i]] = {'data':[], "name": "" };
							}
							var flag = true;
							for(let i=0; i<leg.length; i++){
								if(flag){
			//						console.log("Flag ",flag)
									for(let j=0; j<data.length; j++){
											let s_date = data[j]['startDate'];
											let e_date = "";
										if(data[j]['startDate'] == "1900-01-01" || data[j]['endDate'] == "1900-01-01"){
											continue;
										}
			//							if(data[j]['startDate'] == "1900-01-01" || data[j]['endDate'] == "1900-01-01"){
			//								allowObj = 0;
			//							}
										console.log("start date: "+data[j]['startDate']+"  End date: "+data[j]['endDate']+" Legend: "+data[j]['legend'])
										if(data[j]['startDate'] == data[j]['endDate'])
										{  
											console.log("dates are same")
											$(".alert_message").html('<div class="alert alert-danger" role="alert">Date values of "'+data[objInd]['element']+'"are same.</div>');
											alert_message_function();
											objInd = j;
			//								flag = false;
												continue;
										}
										console.log("value: ",data[j]['legend'])
										console.log("length: ",data[j]['legend'].length)
										
										if(data[j]['legend'].length<2){
											
											console.log("1",data[j]['legend'])
											console.log("No legend value")
											incorrectLegend = true;
											$(".alert_message").html('<div class="alert alert-danger" role="alert">Legend values "'+data[j]['element']+'" is not set.</div>');
											alert_message_function();
											console.log("legend value is not set")
											flag = false;
												break;
										}
										else{
											if(new Date(data[j]['startDate']).getTime() > new Date(data[j]['endDate']).getTime()){
												console.log("start date is greater")
												
					//							alert("no value")
					//								alert(data[i]['element']+" contains wrong start and end date");
				//									document.getElementById('cntr').style.display = 'none';
													document.getElementById('chart').style.display = 'none';
													document.getElementById('element_title').style.display = 'none';
													incorrectDate = true;
													$(".alert_message").html('<div class="alert alert-danger" role="alert">Date values of "'+data[objInd]['element']+'"are incorrect.</div>');
													alert_message_function();
													flag = false;
													break;
											}
											if(leg[i] == data[j]['legend']){
												allowObj +=1;
												let object1 = {
														x:	data[j]['element'],
														y:	[ new Date(data[j]['startDate']).getTime(), new Date(data[j]['endDate']).getTime()]
													};
													datalist[leg[i]].data.push(object1);
													datalist[leg[i]].name =  leg[i]
											}
										} //else loop end
										
									}
								}
								else{
									
									console.log("check break");
			//						$(".alert_message").html('<div class="alert alert-danger" role="alert">Date values of "'+data[objInd]['element']+'"are same</div>');
			//						alert_message_function();
			//						document.getElementById('cntr').style.display = 'none';
									document.getElementById('element_title').style.display = 'none';
									break;
								}
								
							}
							if(allowObj > 0){
								if(flag) {
									//			Insert in Database for XML 
									getcompanyName = getcompanyName.replaceAll("---"," ");
									$.ajax({
										type:"POST",
										data:{roadMap_name, ElementVal, StartActDate, EndActDate, legendData,getcompanyName,getParentID},
										url:"mapToXML",
										success: function(data)
										{
				//							console.log("insert to db",data);
											refreshTree();
				//							var current_ID = divId+divIdCount++;
											let current_ID = data;
											allDivIds.push(current_ID);
											let clsName = roadMap_name;
											$.each(allDivIds, function(i, val){
				//								console.log("val: ",val)
												$( "#"+val+"11" ).css("background", "");
											});
											console.log("history check",allowObj)
											if(historyTabItems.includes(roadMap_name) == false){
												console.log("ajax call")
												console.log("ajax check: "+flag+"   "+getcompanyName+"  "+getParentID)
				//							$("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"> <span class="close_image" onclick="closeRoadmapDiv(\''+current_ID+'\', \''+roadMap_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="getRoadmap(\''+roadMap_name+'\',\''+current_ID+'\',\''+folderID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/road.svg"/>"><br/>'+roadMap_name+'</a></div></div>');
											$("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"> <span class="close_image" onclick="closeRoadmapDiv(\''+current_ID+'\', \''+roadMap_name+'\',\''+getcompanyName+'\',\''+getParentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"/"></span></div><br/><div><a href="#" onclick="getRoadmap(\''+roadMap_name+'\',\''+current_ID+'\',\''+getfolder+'\',\''+getcompanyName+'\',\''+getParentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/road.svg"/"><br/>'+roadMap_name+'</a></div></div>');
											$("#history_tab").css("display", "flex")
											historyTabItems.push(roadMap_name);
											numItems = $('.column').length;
											$(".history_page_no").html(numItems);
											$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
											}
			//								document.getElementById('cntr').style.display = 'none';
				//							else{
				//						    	$( "."+clsName ).remove();
				//						       	$("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"> <span class="close_image" onclick="closeRoadmapDiv(\''+current_ID+'\', \''+roadMap_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="getRoadmap(\''+roadMap_name+'\',\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/road.svg"/>"><br/>'+roadMap_name+'</a></div></div>');
				//						        $("#history_tab").css("display", "flex");
				//								numItems = $('.column').length;
				//								$(".history_page_no").html(numItems)
				//						    }
											console.log("historyTabItems: ",historyTabItems)					
										}
									});
				//				}
								
				//				if(allowObj > 0){
								$("#element_title").show().text(roadMap_name);
								$("#changeHistoryMyPageTable").hide();
								$("#apexchartstyei9slx").hide();
								$("#form_id").hide();
								$("#chart").show();
								var new_array = [];
								for(let i=0; i< Object.values(datalist).length; i++){
											
									let obj = Object.values(datalist)
									let keys = Object.keys(datalist)
									
				//					console.log("start ",obj[i].data);
				//					if(obj[i].data.x) {
				//						
				//					}
				// 						console.log("test",obj[i])
											new_array.push({ "name":keys[i], "data":obj[i].data })
								}
								  
								var options = 
								{
				//					series: my_array,
									series: new_array,
				//					labels: my_legend,
									chart: {
						          	height: "95%",
						          	type: 'rangeBar'
						        },
						        plotOptions: {
						          bar: {
						            horizontal: true,
						            barHeight: '50%',
						            rangeBarGroupRows: true
						          }
						        },
				//		        colors: [
				//		         "#008FFB", "#00E396", "#FEB019", "#FF4560", "#775DD0",
				//		         "#3F51B5", "#546E7A", "#D4526E", "#8D5B4C", "#F86624",
				//		         "#D7263D", "#1B998B", "#2E294E", "#F46036", "#E2C044",
				//					 "#008FFB", "#FEB019", "#FEB019"
				//				 "#008FFB", "#00E396", "#FEB019"
				//		       ],
						       fill: {
						           type: 'solid'
						         },
						        xaxis: {
						          type: 'datetime',
						          
						        },
						        dataLabels: {
						              enabled: true,
						              formatter: function(val, opts) {
						                var label = opts.w.globals.labels[opts.dataPointIndex]
						                var a = moment(val[0])
						                var b = moment(val[1])
						                var diff = b.diff(a, 'days')
				//			                return label + ': ' + diff + (diff > 1 ? ' days' : ' day')
										return + diff + (diff > 1 ? ' days' : ' day')
						              },
						              style: {
						                colors: ['#f3f4f5', '#fff']
						              }
						            },
						        legend: {
						            position: 'left',
						            showForSingleSeries: false,
						            showForNullSeries: true,
				      				showForZeroSeries: true,
				      				customLegendItems: [],
				      				labels: {
								          colors: undefined,
								          useSeriesColors: false
								      },
						          },
						         tooltip: {
				//		           custom: function(opts) {
				//		             const fromYear = new Date(opts.y1).getFullYear()
				//		             const toYear = new Date(opts.y2).getFullYear()
				//		             const values = opts.ctx.rangeBar.getTooltipValues(opts)
				//		         
				//		             return (
				//		               ''
				//		             )
				//		           }
									formatter: function(val, opts) {
							                var label = opts.w.globals.labels[opts.dataPointIndex]
							                var a = moment(val[0])
							                var b = moment(val[1])
							                var diff = b.diff(a, 'days')
				//				                return label + ': ' + diff + (diff > 1 ? ' days' : ' day')
											return + diff + (diff > 1 ? ' days' : ' day')
							              },
						         }
						        };
							
									var chart = new ApexCharts(document.querySelector("#chart"),
											options);
									chart.render();
									
								}	//flag end
						}   //allowObj 
							else {
								
								console.log("Start and End date are incorrect")
								if(incorrectDate){
									$(".alert_message").html('<div class="alert alert-danger" role="alert">Start and End date are at incorrect position.</div>');
									alert_message_function();
								}
								if(incorrectLegend){
									$(".alert_message").html('<div class="alert alert-danger" role="alert">Legend values "'+data[j]['element']+'" is not set.</div>');
									alert_message_function();
								}
								
								else{
									$(".alert_message").html('<div class="alert alert-danger" role="alert">Start and End date are not set yet.</div>');
									alert_message_function();
								}
								
								
								
								
				//						$( "#dialogGanttChart" ).dialog('close');
				//						document.getElementById('cntr').style.display = 'none';
										
				//						document.getElementById('element_title').style.display = 'none';
				//						document.getElementById('chart').style.display = 'none';
							}
								}
							});
							
							$( "#dialogGanttChart" ).dialog('close');
//						}	
	 			 		dialog.dialog( "close" );
      				}
					else{
				    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${roadmap_exist_message}</div>`);
				    	alert_message_function();
					}
  		        }
    		});			

		}

function fill_elements_in_dropdown(append_id, item){
	//$('#catalogElements').empty();
	$.ajax({
           url: "getPropertiesDictionary",
           type: 'POST',
           data: {},
           async: false,
           dataType: 'json', // added data type
           success: function(langDict) {
   			 $(append_id).append($('<option>',{ 
 				 value: item,
 				 text : langDict[item.replaceAll(" ", "_")]
 			 }));
           }
       });
}		