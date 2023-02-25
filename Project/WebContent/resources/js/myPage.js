// console.log("mypage.js")
var historyTabItemsMyPage = [];
var allExistElementInHistoryTabForMyPage = [];
var allDivIdsMyPage = [];
var divIdMypage = 'currentFormDivIdMyPage';
var numItemsMyPage = 1;
var sliderValue = "true";
var myPageTableDataArray = {};
var myPageToggleFlag = "true"




function myPageView() {
    $("#element_title").css("display", "none");
//    $("#history_tab").css("display", "none");
    $("#formDiv").hide();
    $("#chart").hide()
    $("#apexchartstyei9slx").hide();
    $("#changeHistoryMyPageTable").show();
    $("#navbar_buttons").hide();
//    $("#save_button").hide();
//    $(".graph_button").hide();
//    $(".nav_button").hide();
//    $("#save-button-nav").hide();
}


function myPageTableView() {
    myPageView()
    document.getElementById("myPageObjectTableDiv").style.display = "block";
    document.getElementById("myPageObjectFormDiv").style.display = "none";
}

function myPageObjectView() {
    myPageView()
    document.getElementById("myPageObjectTableDiv").style.display = "none";
    document.getElementById("myPageObjectFormDiv").style.display = "block";
}


var globalMyPageInputValue = "";
function getDataForMyPageTable(filterVal, route, getAllData) {
    // console.log("d")
    // console.log("getAllData: ",getAllData)
    $.ajax({
        url: "getDataForChangeHistoryMypage",
        type: "GET",
        data: { 
			"filterVal": filterVal,
			"getAllData": getAllData,
			"route": route,
		},
        beforeSend: function () {
            // // console.log("e")
            if (route == "myPageButton") {
                $(".loader").css("display", "block");
                // $("#changeHistoryMyPageTable").hide();
                $("#myPageRightPane").hide();
                // console.log("0")
            } else if (route == "inputOnchange") {
                $(".loader").css("display", "block");
                $("#myPageTableDiv").hide();
                $("#changeHistoryMyPageTableDaysInput").prop('disabled', true);
                // console.log("0.1")
            } else if (route == "refresh") {
                $(".loader").css("display", "block");
            }
        },
        success: function (data) {
            // // console.log("f")
            
            // // console.log("tableData12: ", data)
            
            myPageTableDataArray["sliderValue"] = sliderValue
            myPageTableDataArray["tableData"] = data
            
            var t = $('#myPageTable').DataTable();
            if (myPageTableDataArray["tableData"].length == 0) {
                t.clear().draw();
                $('.dataTable').css('width', '100%');
                $('.dataTables_scrollHeadInner').css('width', '100%');
                $('.dataTables_empty').css('width', '100vw');
                $('.dataTables_scroll').css('margin-right', '10px');
                $('.pagination').css('margin-right', '10px');
                if (route == "myPageButton") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        // $("#changeHistoryMyPageTable").show();
                        $("#myPageRightPane").css("display", "block")
                        $(".loader").css("display", "none");
                        // console.log("1")
                        $("#myPageRightPane").show();
                    } else {
                        // $("#changeHistoryMyPageTable").hide();
                        $("#myPageRightPane").hide();
                        $(".loader").css("display", "none");
                        // console.log("2")
                    }
                } else if (route == "inputOnchange") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        $("#myPageTableDiv").show();
                        $("#changeHistoryMyPageTableDaysInput").prop('disabled', false);
                        $(".loader").css("display", "none");
                        // console.log("3")
                        $("#myPageRightPane").show();
                    } else {
                        $("#myPageTableDiv").hide();
                        $(".loader").css("display", "none");
                        // console.log("4")
                        $("#myPageRightPane").show();
                    }
                }
            } else {
                t.clear().draw();
                // console.log("g")
				var tempData = myPageTableDataArray["tableData"]
                for (var i = 0; i < tempData.length; i++) {
                    // t.row.add(tempData[i]).draw(false);
                    t.row.add(tempData[i]);
                }
                if (route == "myPageButton") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        // $("#changeHistoryMyPageTable").show();
                        $("#myPageRightPane").show();
                        $(".loader").css("display", "none");
                        // console.log("5")
                    } else {
                        // $("#changeHistoryMyPageTable").hide();
                        $("#myPageRightPane").hide();
                        $(".loader").css("display", "none");
                        // console.log("5.5")
                    }
                } else if (route == "inputOnchange") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        $("#myPageTableDiv").show();
                        $("#changeHistoryMyPageTableDaysInput").prop('disabled', false);
                        $(".loader").css("display", "none");
                        // console.log("6")
                        $("#myPageRightPane").show();
                    } else {
                        $("#myPageTableDiv").hide();
                        $(".loader").css("display", "none");
                        // console.log("7")
                        $("#myPageRightPane").show();
                    }
                } else if (route == "refresh") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        // $("#changeHistoryMyPageTable").show();
                        $("#myPageRightPane").show();
                        $(".loader").css("display", "none");
                        // console.log("5a")
                        $("#symbolColumnId").click();
                    } else {
                        // $("#changeHistoryMyPageTable").hide();
                        $("#myPageRightPane").hide();
                        $(".loader").css("display", "none");
                        // console.log("5.5a")
                        $("#symbolColumnId").click();
                    }
                }
                $('.dataTable').css('width', '100%');
                $('.dataTables_scrollHeadInner').css('width', '100%');
                $('.dataTables_empty').css('width', '100vw');
                $('.dataTables_scroll').css('margin-right', '10px');
                $('.pagination').css('margin-right', '10px');
                $("#symbolColumnId").click();
            }
            globalMyPageInputValue = filterVal;
        }
    });
}

function changeHistoryMypageButton(filterVal, route) {

    myPageTableView()
    
    document.getElementById("history_tab_mypage").style.display = "inline-flex";
	document.getElementById("history_tab").style.display = "none";
	


    // console.log("a")
    if (!(typeof filterVal == "string")) {
        filterVal = filterVal.toString();
        // console.log("b")

        // console.log("c")
    }
    
    if (filterVal != "") {
        // console.log("i")
        
        
		sliderValue = document.getElementById('myPageToggleCheckBox').checked 
		// console.log("sliderValue:",sliderValue)
        
		//        document.getElementById('myPageToggleCheckBox').checked = sliderValue
        
        if ((filterVal != globalMyPageInputValue)) {

            // console.log("j")
            getDataForMyPageTable(filterVal, route, sliderValue)

        } else if ((filterVal == globalMyPageInputValue) && (route == "inputOnchange")) {

            // console.log("k")
            $(".alert_message").html('<div class="alert alert-danger" role="alert">Already showing data for ' + filterVal + ' days</div>');
            alert_message_function();

        } else if ((filterVal == globalMyPageInputValue) && (route == "myPageButton")) {
            // console.log("l")
            $("#symbolColumnId").click();
        } else if ((filterVal == globalMyPageInputValue) && (route == "refresh")) {
            // console.log("no")
            getDataForMyPageTable(filterVal, route, sliderValue)

        }
        else {
            // console.log("m")
        }
    } else {
        // console.log("n")
        $(".alert_message").html('<div class="alert alert-danger" role="alert">Please select the days first!</div>');
        alert_message_function();
    }
}

	function getMyPageTableDataBasedOnSlider(){
	
		sliderValue = document.getElementById('myPageToggleCheckBox').checked
		var currentTitle =  document.getElementById('myPageToggleSwitchLabel').title
		
		var tableData = myPageTableDataArray["tableData"]
		
//		if(tableData.length > 0 ){
//			
//			if(sliderValue == false){
//				
//				// console.log("false")
//				
//				var objectCreatedBy = tableData[0][6]
//				
//				// console.log("window.userName:", window.userName)
//				
//				var filteredByUser = tableData.filter((item)=> item[6] == window.userName)
//				
//				// console.log("filteredByUser:",filteredByUser)
//				
//				var t = $('#myPageTable').DataTable();
//				t.clear().draw();
//	
//
//				for (var i = 0; i < filteredByUser.length; i++) {
//				    t.row.add(filteredByUser[i]);
//				}
//				t.draw();
//			}else{
////				$(".loader").css("display", "block");
////				var t = $('#myPageTable').DataTable();
////				t.clear();
////	
////				var tempData = myPageTableDataArray["tableData"]
////				for (var i = 0; i < tempData.length; i++) {
////				    t.row.add(tempData[i]).draw(false);
////				}
////				
////				$(".loader").css("display", "none");
//
//				getDataForMyPageTable("0", "inputOnchange", sliderValue)
//			}
//			
//		}else{
//			getDataForMyPageTable("0", "inputOnchange", sliderValue)
//		}
		
		getDataForMyPageTable($('#changeHistoryMyPageTableDaysInput').val(), "inputOnchange", sliderValue)
		
		if(currentTitle=="Show My Objects"){
			document.getElementById('myPageToggleSwitchLabel').title = "Show All Objects"
		}else{
			document.getElementById('myPageToggleSwitchLabel').title = "Show My Objects"
		}
		
		
	}

function changeHistoryModelpage() {
    $("#element_title").css("display", "flex");
//    $("#history_tab").css("display", "flex");
    $("#changeHistoryMyPageTable").hide();
    $("#formDiv").show();
    $(".loader").css("display", "none");
    $("#changeHistoryMyPageTable").hide()
    $("#navbar_buttons").show();
    
    document.getElementById("history_tab_mypage").style.display = "none";
    document.getElementById("history_tab").style.display = "inline-flex";



    //	$("#fit-screen-nav").css("display", "none");
    //    $("#zoom-in-nav").css("display", "none");
    //    $("#zoom-out-nav").css("display", "none");
    //    $("#save-button-nav").css("display", "none");
    //    $("#save-as-button-nav").css("display", "none");
    //    $("#fit-screen").css("display", "none");
    //    $("#zoom-in").css("display", "none");
    //    $("#zoom-out").css("display", "none");
    //    $("#save_button").css("display", "none");
    //    $("#save_graph_as_button").css("display", "none");


    //	if(navigationView == true){
    //		$(".nav_button").show();
    //		$("#save-button-nav").show();		
    //	}else{
    //		$("#save_button").show();
    //		$(".graph_button").show();
    //	}
}




function refreshTreeForMyPage() {
    $('#MyPagetab-1-li').empty();
    $.ajax({
        url: "getCompleteTreeForMyPage",
        method: 'get',
        data: {},
        beforeSend: function () {
//            $("body").css("cursor", "progress");
            $(".loader").css("display", "block");
        },
        success: function (data) {
            var myPageTree = '<ul class="nested">';
            myPageTree += data;
            myPageTree += '</ul>';
            $('#MyPagetab-1-li').append('<p style="margin-bottom:0px;" class="caret">MIM</p>' + myPageTree);
            // crt();
            $(".leftPalleteParent").show();
            $(".loader").css("display", "none");
//            $("body").css("cursor", "default");
        },
    });
}




function showDataForMyPage(table, name) {

    document.getElementById("myPageObjectTableDiv").style.display = "none";
    document.getElementById("myPageObjectFormDiv").style.display = "block";

    if (allExistElementInHistoryTabForMyPage.includes(name.replaceAll(" ", "---")) == false) {
        allExistElementInHistoryTabForMyPage.push(name.replaceAll(" ", "---"))
    }
    //    $("#chart").hide()
    //    $("#element_title").hide()
    //    $("#save_button").hide();
    //    $(".graph_button").hide();
    //    $(".nav_button").hide();
    //    if (createNew == true) {
    //        addNewGraphInHistory();
    //        createNew = false;
    //    }
    //    objectsView();
    $(".loader").show();
    var tableName = table.split(' ').join('_');
    $.ajax({
        url: "getRowData",
        type: "POST",
        data: {
            'tableName': tableName,
            'name': name
        },
        dataType: "json",
        beforeSend: function () {
            //            loader_image_body();
        },
        success: function (data) {
            var formData = "";
            var labels = [];
            var idd = "";
            var checkboxIds = "";
            var CurrenttabID = "";
            var row_name = "";
            var allIds = "";
            var AllRelRowIDs = [];
            var btnedit = '';
            var object_name_id = '';
            var relationsClass;
            var last_time_updated = '';
            var AllRelTableIDs = [];
            let { dataBeforeUpdate } = data;
            let { multiListIds } = data;
            $.each(data, function (i, val) {
                if (i == "row_id") {
                    idd = val;
                }
                if (i == "allIds") {
                    allIds = val;
                }
                if (i == "checkboxIds") {
                    checkboxIds = val;
                }
                if (i == "formData") {
                    formData = val;
                }
                if (i == "attributeNames") {
                    labels = val;
                }
                if (i == "CurrenttabID") {
                    CurrenttabID = val;
                }
                if (i == "row_name") {
                    row_name = val;
                }
                if (i == "AllRelRowIDs") {
                    AllRelRowIDs = val;
                }
                if (i == "AllRelRowIDs") {
                    AllRelRowIDs = val;
                }
                if (i == "editButtonId") {
                    btnedit = val;
                }
                if (i == "object_name_id") {
                    object_name_id = val;
                }
                if (i == "relationsClassList") {
                    relationsClass = val[0];
                }
                if (i == "AllRelTableIDs") {
                    AllRelTableIDs = val;
                }
                if (i == "last_time_updated") {
                    last_time_updated = val[0];
                }
            });
            var name_for_class = row_name[0].replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_');
            $(function () {
                $("#" + CurrenttabID).tabs().addClass("ui-tabs-vertical ui-helper-clearfix " + name_for_class + "");
                $("#" + CurrenttabID + " li").removeClass("ui-corner-top").addClass("ui-corner-left");
            });

            var current_ID = divIdMypage + divIdCount++;
            allDivIdsMyPage.push(current_ID);
            formData = '<div id="' + current_ID + '">' + formData + '</div>';
            var imageName = tableName.toLowerCase().replaceAll('_', '-');

            imageName = imageName + '.svg';

            var clsName = row_name[0].replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_') + '_' + tableName.replaceAll(' ', '_');

            var historyObjectDivId = current_ID + "_myPage"

            if (historyTabItemsMyPage.includes(clsName) == false) {
                $("#historyListMyPage").append('<div id="' + historyObjectDivId + '" class="columnMyPage ' + clsName + '"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\'' + current_ID + '\', \'' + row_name + '_' + tableName + '\')"><img  onclick="titleempty();" draggable="false" alt="" width="20px" height="20px"  src="resources/images/x.svg" /></span></div><br/><div><a href="#" onclick="showDivMyPage(\'' + current_ID + '\', \'' + data.editButtonId[0] + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/js/examples/editors/images/images1/' + imageName + '" /><br/>' + row_name + '</a></div></div>');
                $("#history_tab_mypage").css("display", "flex")
                historyTabItemsMyPage.push(clsName);
            } else {
                $("." + clsName).remove();
                $("#historyListMyPage").append('<div id="' + historyObjectDivId + '" class="columnMyPage ' + clsName + '"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\'' + current_ID + '\', \'' + row_name + '_' + tableName + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg" /></span></div><br/><div><a href="#" onclick="showDivMyPage(\'' + current_ID + '\', \'' + data.editButtonId[0] + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/js/examples/editors/images/images1/' + imageName + '" /><br/>' + row_name + '</a></div></div>');
                $("#history_tab_mypage").css("display", "flex");
            }


            // $("#form_id_mypage").empty();
            $("#form_id_mypage").append(formData);
            $(".loader").hide();
            showDivMyPage(current_ID, data.editButtonId[0]);
            $.each(checkboxIds, function (i, val) {
                $("#" + val).on('change', function () {
                    if ($(this).is(':checked')) {
                        $(this).attr('value', 'True');
                    } else {
                        $(this).attr('value', 'False');
                    }
                });
            });
            getMultiListValue(multiListIds);
            $(".choices__inner").css("display", "block");
            form_submitForUpdate(dbName, tableName, labels, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id, imageName, current_ID, CurrenttabID[0], null, last_time_updated, AllRelTableIDs, dataBeforeUpdate, "fromMyPage");
            show_or_hide_relationships(relationsClass);
            //            $("#loader_image_body").hide();
            //            $("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
            $("body").css("pointer-events", "initial");
        }
    });
}



//function on_context_menu_myPage_object(element, type) {
//    // console.log("on_context_menu_myPage_object")
//    // console.log(element, type)
//    var element_content = element;
//    var type_content = type;
//    //  		alert("You clicked on_context_menu")
//
//
//    event.preventDefault();
//    var contextElement = document.getElementById("context-menu-my-page");
//    //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
//    var content_ = '<a style="text-decoration:none; cursor:cell;" href="javascript:addNew(\'' + element_content + '\',\'' + type_content + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>'+createNewObject+'</div></a>';
//    contextElement.innerHTML = content_;
//    contextElement.style.top = event.pageY + "px";
//    contextElement.style.left = event.pageX + "px";
//    contextElement.classList.add("active");
//
//    window.addEventListener("click", function () {
//        document.getElementById("context-menu-my-page").classList.remove("active");
//    });
//}



function getElementsForObjectPalleteForMyPage() {
    $.ajax({
        url: "getElementsForPalete",
        method: 'get',
        data: {},
        beforeSend: function () {
			 $("body").css("cursor", "progress");
            $(".loader").css("display", "block");
        },
        success: function (data) {

            var mainDiv = document.createElement('div')

            data.map((elementName, i) => {
                var lowerCase = elementName.toLowerCase()
                var replaceSpaceWithDash = lowerCase.replaceAll(" ", "-")
                // <img class="mxToolbarModeSelected" src="/EAZee/resources/js/examples/editors/images/images1/business-application.svg" title="Business Application" />

                if (elementName != "break") {

                    var img = document.createElement("IMG");
//                    img.setAttribute('src', `/EAZee/resources/js/examples/editors/images/images1/${replaceSpaceWithDash}.svg`);
                    img.setAttribute('src', `resources/js/examples/editors/images/images1/${replaceSpaceWithDash}.svg`);
                    img.setAttribute("class", "mxToolbarModeSelected");
                    img.classList.add("myPageObjectPalleteImage");
                    img.setAttribute("title", elementName);
                    img.setAttribute("onclick", "myPageAddnewObject('" + elementName + "', null)");

                    mainDiv.appendChild(img);

                } else {
                    var hr = document.createElement('hr');
                    hr.setAttribute('size', '1')
                    hr.setAttribute('style', 'margin-right: 6px')

                    mainDiv.appendChild(hr);
                }
            })

            var objectPalleteId = document.getElementById("myPageObjectPallete")
            objectPalleteId.appendChild(mainDiv)
            $("body").css("cursor", "default");
        },
    });

}

function myPageAddnewObject(element, type) {

    //	$("#save_button").hide();
    //	$(".graph_button").hide();
    //	$(".nav_button").hide();
    //	if (createNew == true) {
    //		addNewGraphInHistory();
    //		createNew = false;
    //	}
    //	objectsView();
    //	var directoryName = '';
    //	var objName = '';
    $.ajax({
        url: "getUniqueObjectName",
        data: { 'objectName': element },
        success: function (objectName) {

            $.ajax({
                url: "addElementInDBFromGraph",
                data: { 'elementName': element, 'objectName': objectName },
                success: function (result) {
                    // var elementIcon = element.replaceAll(' ', '-');
                    // elementIcon = elementIcon.replaceAll('_', '-');
                    // elementIcon = elementIcon.toLowerCase() + '.svg';
                    // // console.log('data',data)
                    // var temp = '<li id="' + data.replaceAll(' ', '---') + '" style="cursor:pointer" onclick="showData(\'' + element.replaceAll(' ', '_') + '\',\'' + data + '\')" oncontextmenu="on_context_menu_remove(\'' + element.replaceAll(' ', '_') + '\',\'' + data + '\',\'deletedElements\')"><span title="' + data + '" draggable="true" ondragstart="drag(event,\'' + data + '\',\'resources/js/examples/editors/images/images1/' + elementIcon + '\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/' + elementIcon + '">&nbsp;' + data + '</span></li>';
                    // $('#' + element.replaceAll(' ', '_')).append(temp);
                    // showData(element.replaceAll(' ', '_'), objectName);
                    var tableName = element.replaceAll(' ', '_');
                    showDataForMyPage(tableName, objectName)
					// console.log("z")
					myPageTableDataArray = {};
					sliderValue = document.getElementById('myPageToggleCheckBox').checked
                    getDataForMyPageTable("0", "newUser", sliderValue)
                }
            });
        }
    });

}



function displaydivmypage() {
    var HistoryChildLength = document.getElementsByClassName("columnMyPage").length
    if (HistoryChildLength >= 1) {
			var x = document.getElementById("historyListMyPage");
			x.style.display = x.style.display === 'none' ? 'block' : 'none';
    }
    else {
        $(".alert_message").html('<div class="alert alert-info" role="alert">No History Found</div>');
        alert_message_function();
        close_all_history_div_mypage();
    }

}

document.addEventListener('mouseup', function (e) {
    var container = document.getElementById('historyListMyPage');

    if (!container.contains(e.target)) {
        container.style.display = 'none';
    }
}.bind(this));



function closeDivFromMyPageHistory(showDivID, data) {

    var index_no_of_deleted_item = historyTabItemsMyPage.indexOf(data);
    historyTabItemsMyPage.splice(index_no_of_deleted_item, 1);


    //var next_id = $("#"+showDivID+"").next().attr('id');
    $("#" + showDivID + "").remove();
    $("#" + showDivID + "_myPage").remove();
    setTimeout(function () { displaydivmypage(); }, 0.5);
    //$("#historyList").css("display", "block");

    numItemsMyPage = $('.columnMyPage').length;

    $(".history_page_no_mypage").html(numItemsMyPage);

    document.getElementById("symbolColumnId").click()
}

function titleempty() {
    $("#element_title").empty();
}


function showDivMyPage(showDivID, save_btn_id) {
    // $(".catalog_save_button").hide();
    // $("#chart").hide()
    // $("#element_title").hide()
    //// console.log("save_btn_id", save_btn_id)

    //$("#"+save_btn_id+"").prop("disabled", true)
    //$(".submit-data").prop('disabled', true);


    myPageObjectView();



    $.each(dictionaryXML, function (key, value) {
        $("#" + key.replaceAll(' ', '_') + "11").css("background", "");
    });
    $(".matrix_save_button").empty();
    $("#save_button").hide();
    $(".graph_button").hide();
    $(".nav_button").hide();
    $.each(allDivIdsMyPage, function (i, val) {
        if (val != showDivID) {
            $("#" + val).css("display", "none");
            $("#" + val + "11").css("background", "");
            $("#matrixDownload" + val).css("display", "none");

        } else {
            $("#" + val).css("display", "block");
            $("#" + val + "11").css("background", "#e9e9e9");
            $("#matrixDownload" + val).css("display", "block");
            numItemsMyPage = $('.columnMyPage').length;

            $(".history_page_no_mypage").html(numItemsMyPage);
        }
        $("#palete").css("display", "none");
        $("#graphId").css("display", "none");
        $("#form_id").css("display", "block");
        $("#historyList").css("display", "none");
    });
}

function close_all_history_div_mypage() {
//    $(".catalog_save_button").empty();
//    $("#navigationId").hide();
//    $("#graphId").hide();
//    $("#paleteDiv").hide();
//    $("#element_title").empty();
    $(".columnMyPage").remove();
    $("#historyList").hide();
    $("#historyListMyPage").hide();
//    $("#form_id").empty();
//    $("#catalog").empty();
//    $("#matrix").empty();
//    $("#chart").empty();
    //    var diagram = mxUtils.parseXml(newGraphXML);
    //    var codec = new mxCodec(diagram);
    //    codec.decode(diagram.documentElement, graph1.getModel());
    //    dictionaryXML = {}
    //    historyTabItems = []
    numItemsMyPage = $('.columnMyPage').length;
    $(".history_page_no_mypage").html(numItemsMyPage)
//    $("#element_title").hide()
//    $("#chart").hide()
//    $("#fit-screen-nav").css("display", "none");
//    $("#zoom-in-nav").css("display", "none");
//    $("#zoom-out-nav").css("display", "none");
//    $("#save-button-nav").css("display", "none");
//    $("#save-as-button-nav").css("display", "none");
//    $("#fit-screen").css("display", "none");
//    $("#zoom-in").css("display", "none");
//    $("#zoom-out").css("display", "none");
//    $("#save_button").css("display", "none");
//    $("#save_graph_as_button").css("display", "none");
    document.getElementById("myPageObjectFormDiv").style.display = "none";
    document.getElementById("myPageObjectTableDiv").style.display = "block";
    document.getElementById("symbolColumnId").click()
}

const myTimeout = setTimeout(function () {
    $(document).ready(function () {
        var table = $('#myPageTable').DataTable({
            scrollY: "calc(100vh - 55px - 60px - 180px - 5px)",
            paging: true,
            ordering: true,
            searching: true,
            pageLength: 20,
            dom: 'l<"#add">frtip',
            scrollResize: true,
            width: "100%",
            scrollCollapse: true,
            columnDefs: [
                {
                    "targets": 0, // your case first column
                    "className": "text-center",
                },
                {
                    "targets": 2,
                    "visible": false,
                },
                {
                    "targets": 6,
                    "visible": false,
                },
            ],
			language: {
				'paginate': {
					'previous': previous,
					'next': next,
			    }
			}
        });

        $('#myPageTable tbody').on('click', 'tr', function () {
            var data = table.row(this).data();
            var elementName = data[1];
            var tableName = data[2];

            showDataForMyPage(tableName, elementName)
        });
    });
}, 500)


function getUserName(){
	$.ajax({
        url: "getUserName",
        success: function (userName) {
			window.userName = userName
        }
    });
}
