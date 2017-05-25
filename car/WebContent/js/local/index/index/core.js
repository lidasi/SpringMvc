var mapObj;//地图对象
var contextPath = $("[data-key=contextPath]").val();
//发现效果
//$(function () {
//    $.ajax({
//        type: "get",
//        dataType: "html",
//        url: contextPath + "/static_page/activity/activityList.html",
//        success: function (result) {
//            var length = $(result).length;
//            $("#activityList").append(result);
//            var auto;
//            if (length <= 3) {
//                //设置左右两边箭头
//                $("#activityListLeft").css({"visibility": "hidden"});
//                $("#activityListRight").css({"visibility": "hidden"});
//                auto = 9999999999;
//            }
//            else {
//                auto = 5000;
//            }
//
//            $(".sectionrollpicshow").jCarouselLite({
//                auto: auto, /*自动播放间隔时间*/
//                speed: 900, /*速度*/
//                btnNext: ".next", /*向前滚动*/
//                btnPrev: ".prev", /*向后滚动*/
//                visible: 3 /*显示数量*/
//            });
//            //遮罩条
//            $(".sectionrollpicshow ul li .rsp").hide();
//            $(".sectionrollpicshow	 ul li").hover(function () {
//                $(this).find(".rsp").stop().fadeTo(500, 0.3)
//            }, function () {
//                $(this).find(".rsp").stop().fadeTo(500, 0)
//            });
//            $(".sectionrollpicshow li").hover(function () {
//                $(this).stop().animate({marginTop: "10px"});
//            }, function () {
//                $(this).stop().animate({marginTop: "0px"});
//            });
//        }
//    });
//});


$(function () {
    $("[data-toggle-active]").mouseenter(function () {
        var $this = $(this);
        var selector = $this.data("toggle-active");
        $("[data-show-with=" + selector + "]").stop().animate({opacity: 0.3}, 500);


    });

    $("[data-toggle-active]").mouseleave(function () {
        var $this = $(this);
        var selector = $this.data("toggle-active");
        $("[data-show-with=" + selector + "]").stop().animate({opacity: 0}, 500);

    });

    $("[data-toggle-active]").click(function () {
        var $this = $(this);
        var selector = $this.data("toggle-active");

        $("[data-float-with=" + selector + "]").stop().animate({
            opacity: 0.7
        }, 500, function () {
            setTimeout(function () {
                $("[data-float-with=" + selector + "]").stop().animate({
                    opacity: 0
                }, 500);
            }, 800);
        });
    });

});


$(function () {
    //判断是否需要登录
    var url = window.location.pathname;
    var isLogin = $("[data-key=isLogin]").val();
    if (url.indexOf("/noLogin") >= 0 && !isLogin) {
        sbt();
    }
    keywordResultPosition();//地址提示位置初始化
    window.onresize = keywordResultPosition;
    $(".banner,.recommend_car,.found,.top1").click(function () {
        $("#keywordResult").css("display", "none");
    });
    enterfastkey('bannerId', searchCarSubmit, 'searchDiv');//注册回车事件
    //wow 如果ie低级别  则没有效果
    //if (!("ActiveXObject" in window || navigator.userAgent.indexOf('Firefox') >= 0)){
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
        new WOW().init();
    };
    var rcars = $.trim($('.recommend_car').text());
    if(rcars == '') {
    	$('.recommend_car').hide();
    }
});

//日期初始化
function dateTimeInit() {
    $('#datetimepicker').datetimepicker({

        step: 15,
        minDate: '-1970/01/01',
        id: 'startDatetimepicker',
        onSelectTime: showDatetime,
        onShow: calendarChangeColor,
        onChangeMonth: calendarChangeColor,
        onChangeDateTime: dateTimeChange
    });
    $('#datetimepicker1').datetimepicker({

        step: 15,
        minDate: '-1970/01/01',
        id: 'endDatetimepicker',
        onShow: calendarChangeColor,
        onChangeMonth: calendarChangeColor,
        onChangeDateTime: dateTimeChange
    });
}

var calendarChangeColor = function (currents) {
    var datetimepickerId = $(this).attr("id");
    if (datetimepickerId == "endDatetimepicker" && $('#datetimepicker').val() == "取车时间") {
        //alertDiv("请先选择取车时间",3);
        //simpletooltipIdShow("#datetimepicker", "请先选择取车时间", "bottom");
        $('#datetimepickerDiv').darkTooltip({
            trigger: 'show',
            opacity: 0.7,
            gravity: 'south'
        });
        tooltipScrollTop('#datetimepickerDiv');
        setTimeout("$('#datetimepickerDiv').find('ins').remove();", 3000);
        $('#datetimepicker').datetimepicker("show");
        return false;
    } else {
        calendarNextMonth(datetimepickerId, currents);
    }

    var myDate = new Date();
    if (myDate.getMinutes() > 0 && myDate.getMinutes() <= 15 && myDate.getMinutes() != 30 && myDate.getMinutes() != 45) {
        myDate.setMinutes(15);
    } else if (myDate.getMinutes() > 15 && myDate.getMinutes() <= 30) {
        myDate.setMinutes(30);
    } else if (myDate.getMinutes() > 30 && myDate.getMinutes() <= 45) {
        myDate.setMinutes(45);
    } else if (myDate.getMinutes() > 45) {
        myDate.setHours(myDate.getHours() + 1);
        myDate.setMinutes(0);
    } else {
        myDate.setMinutes(0);
    }
    myDate.setHours(myDate.getHours() + 2);
    var forDate = formatDate(myDate, "yyyyMMddhhmmss");
    if (currents.getDate() == myDate.getDate()) {
        var time = $.trim(forDate).substring(8, 12);
        $("#" + datetimepickerId).find("#t" + time).prevUntil(".xdsoft_disabled").addClass("xdsoft_disabled");//当前id之后所有同级div比如12点之前所有不能点击
        $("#" + datetimepickerId).find(".xdsoft_disabled").removeClass("xdsoft_current");//移除默认选中时间
        var xdsoft_currents = $("#" + datetimepickerId).not(".xdsoft_disabled").find(".xdsoft_current").size();
        if (xdsoft_currents == 1 || (datetimepickerId == "startDatetimepicker" && $('#datetimepicker').val() == "取车时间") || (datetimepickerId == "endDatetimepicker" && $('#datetimepicker1').val() == "还车时间")) {
            $("#" + datetimepickerId).find(".xdsoft_time").not(".xdsoft_disabled").first().addClass("xdsoft_current");//选中第一个可租时间
        }
    } else {
        $("#" + datetimepickerId).find("#t" + time).prev().nextUntil(".xdsoft_disabled").removeClass("xdsoft_disabled");
    }

    /* if(datetimepickerId=="startDatetimepicker"&&$('#datetimepicker1').val()!="还车时间"){
     alertDiv(datetimepickerId+jQuery('#datetimepicker1').val().substring(0, 10));
     this.setOptions({
     maxDate:jQuery('#datetimepicker1').val().substring(0, 10)?jQuery('#datetimepicker1').val().substring(0, 10):false
     });
     }
     if(datetimepickerId=="endDatetimepicker"&&$('#datetimepicker').val()!="取车时间"){
     alertDiv(datetimepickerId+jQuery('#datetimepicker').val().substring(0, 10));
     this.setOptions({
     maxDate:jQuery('#datetimepicker').val().substring(0, 10)?jQuery('#datetimepicker').val().substring(0, 10):false
     });
     }  */

}


//控制日期样式或者布局等
function calendarNextMonth(datetimepickerId, currentDateTime) {
    var currentDateTime = dateToStringX(currentDateTime);
    var currentDateTimeG = dateToStringdxh(currentDateTime, '/');
    //设置日期跟时间高度相同
    var calendar_height = $("#" + datetimepickerId).find(".xdsoft_calendar").css("height");
    var sstr = window.parent.$("#" + datetimepickerId).find(".xdsoft_calendar").find("tr").size() * 28;//日期行数
    if (calendar_height != "0px") {
        $("#" + datetimepickerId).find(".xdsoft_time_box").css("height", calendar_height);
    } else {
        $("#" + datetimepickerId).find(".xdsoft_time_box").css("height", sstr + "px");
    }
}

function showDatetime() {
    if ($('#datetimepicker1').val() == "还车时间") {
        var endDate = stringToDateX($('#datetimepicker').val());
        endDate.setDate(endDate.getDate() + 1);
        $('#datetimepicker1').val(formatDate(endDate, "yyyy/MM/dd hh:mm"));
        $('#datetimepicker1').datetimepicker('show');
    }
}

var dateTimeChange = function (currentDateTime) {
    var datetimepickerId = $(this).attr("id");
    var startDateString = $('#datetimepicker').val();


    if (startDateString != "取车时间") {
        var startDate = stringToDateX(startDateString);
        var currDate = new Date();
        currDate.setHours(currDate.getHours() + 1);
        if (startDate.getMinutes() > 0 && startDate.getMinutes() <= 15) {
            startDate.setMinutes(15);
        } else if (startDate.getMinutes() > 15 && startDate.getMinutes() <= 30) {
            startDate.setMinutes(30);
        } else if (startDate.getMinutes() > 30 && startDate.getMinutes() <= 45) {
            startDate.setMinutes(45);
        } else if (startDate.getMinutes() > 45) {
            startDate.setHours(startDate.getHours() + 1);
            startDate.setMinutes(0);
        } else {
            startDate.setMinutes(0);
        }

        if (startDate.getTime() <= currDate.getTime()) {
            startDate = currDate;
            startDate.setHours(startDate.getHours() + 1);
        }
        if (startDate.getMinutes() > 0 && startDate.getMinutes() <= 15) {
            startDate.setMinutes(15);
        } else if (startDate.getMinutes() > 15 && startDate.getMinutes() <= 30) {
            startDate.setMinutes(30);
        } else if (startDate.getMinutes() > 30 && startDate.getMinutes() <= 45) {
            startDate.setMinutes(45);
        } else if (startDate.getMinutes() > 45) {
            startDate.setHours(startDate.getHours() + 1);
            startDate.setMinutes(0);
        } else {
            startDate.setMinutes(0);
        }
        //$(this).datetimepicker('show');
        $('#datetimepicker').val(formatDate(startDate, "yyyy/MM/dd hh:mm"));
    }

    var endDateString = $('#datetimepicker1').val();
    if (endDateString != "还车时间") {
        var endDate = stringToDateX(endDateString);
        endDate.setSeconds(0);
        endDate.getMilliseconds(0);
        var currDate = new Date();
        currDate.setHours(currDate.getHours() + 1);
        if (startDateString != "取车时间" && endDate.getTime() <= startDate.getTime()) {
            endDate = startDate;
            endDate.setHours(endDate.getHours() + 1);
        } else if (endDate.getTime() <= currDate.getTime()) {
            endDate = currDate;
            endDate.setMinutes(0);
            endDate.setSeconds(0);
            endDate.setHours(endDate.getHours() + 3);
        }
        if (endDate.getMinutes() != 0 && endDate.getMinutes() != 15 && endDate.getMinutes() != 30 && endDate.getMinutes() != 45) {
            endDate.setMinutes(0);
        }
        $('#datetimepicker1').val(formatDate(endDate, "yyyy/MM/dd hh:mm"));
    }

    /* else {
     var endDate = startDate;
     endDate.setDate(endDate.getDate() + 1);
     $('#datetimepicker1').val(formatDate(endDate, "yyyy/MM/dd hh:mm"));
     } */

    /* if (startDateString == "取车时间"){
     var endDate = stringToDateX(endDateString);
     endDate.setSeconds(0);
     endDate.getMilliseconds(0);
     endDate.setHours(endDate.getHours() + 1);
     var startDate = endDate;
     $('#datetimepicker').val(formatDate(startDate, "yyyy/MM/dd hh:mm"));
     } */

    var myDate = new Date();
    if (myDate.getMinutes() > 0 && myDate.getMinutes() <= 15) {
        myDate.setMinutes(15);
    } else if (myDate.getMinutes() > 15 && myDate.getMinutes() <= 30) {
        myDate.setMinutes(30);
    } else if (myDate.getMinutes() > 30 && myDate.getMinutes() <= 45) {
        myDate.setMinutes(45);
    } else if (myDate.getMinutes() > 45) {
        myDate.setHours(myDate.getHours() + 1);
        myDate.setMinutes(0);
    } else {
        myDate.setMinutes(0);
    }
    myDate.setHours(myDate.getHours() + 2);
    var forDate = formatDate(myDate, "yyyyMMddhhmmss");
    if (currentDateTime.getDate() == myDate.getDate()) {
        var time = $.trim(forDate).substring(8, 12);
        $("#" + datetimepickerId).find("#t" + time).prevUntil(".xdsoft_disabled").addClass("xdsoft_disabled");//当前id之后所有同级div比如12点之前所有不能点击
        $("#" + datetimepickerId).find(".xdsoft_disabled").removeClass("xdsoft_current");//移除默认选中时间
        var xdsoft_currents = $("#" + datetimepickerId).not(".xdsoft_disabled").find(".xdsoft_current").size();
        if (xdsoft_currents == 1 || (datetimepickerId == "startDatetimepicker" && $('#datetimepicker').val() == "取车时间") || (datetimepickerId == "endDatetimepicker" && $('#datetimepicker1').val() == "还车时间")) {
            $("#" + datetimepickerId).find(".xdsoft_time").not(".xdsoft_disabled").first().addClass("xdsoft_current");//选中第一个可租时间
        }

    } else {
        $("#" + datetimepickerId).find("#t" + time).prev().nextUntil(".xdsoft_disabled").removeClass("xdsoft_disabled");
    }
}
//地址提示位置初始化
function keywordResultPosition() {
    var offset = $("#keyword").offset();
    $("#keywordResult").css("top", offset.top + 40).css("left", offset.left);
}

//输入提示
function autoSearch(pageNum) {
    if (mapObj == undefined || mapObj == "") {
        mapObj = new AMap.Map("mapHidden");
    }
    var keywords = document.getElementById("keyword").value;
    var auto;
    //加载服务插件，实例化地点查询类
    /*  AMap.service(["AMap.PlaceSearch"], function() {
     MSearch = new AMap.PlaceSearch({
     city: "021"
     });

     MSearch.searchNearBy(keywords, cpoint, 50000, function(status, result){
     if(status === 'complete' && result.info === 'OK'){
     autocompleteCallBack(result);
     }
     });
     });*/
    var cityTelPrefix = getCookie("cityTel_prefix");
    //加载输入提示插件
    mapObj.plugin(["AMap.PlaceSearch"], function () {
        auto = new AMap.PlaceSearch({
            pageSize: 5,
            pageIndex: pageNum,
            city: cityTelPrefix //城市，默认全国
        });
        //查询成功时返回查询结果
        if (keywords.length > 0) {
            AMap.event.addListener(auto, "complete", autocompleteCallBack);
            $("#keywordResult").attr("pageNum", pageNum);
            auto.search(getCookie("city_name") + "市" + keywords);
        } else {
            document.getElementById("keywordResult").style.display = "none";
            $("#keyword").attr("lat", 0);
            $("#keyword").attr("lng", 0);
        }
    });
}
//输出输入提示结果的回调函数
function autocompleteCallBack(data) {
    var resultStr = "";
    var tipArr = data.poiList.pois;
    var cc = 0;
    if (tipArr && tipArr.length > 0) {
        for (var i = 0; i < tipArr.length; i++) {
            resultStr += "<div class='keywordResultChild'onclick='selectResult(this)' style=\"font-size: 13px; padding: 5px 15px; cursor:pointer;\""
                + "lat='" + tipArr[i].location.lat + "' lng='" + tipArr[i].location.lng + "' name='" + tipArr[i].name + "'>" + tipArr[i].name;
            if (tipArr[i].address != "") {
                resultStr += "<div style='color:#C1C1C1; width:100%; text-overflow:ellipsis;white-space:nowrap;overflow:hidden;' id = 'district" + (i + 1) + "'>地址：" + tipArr[i].address + "</div>"
            } else {
                resultStr += "<div style='color:#C1C1C1; width:100%; text-overflow:ellipsis;white-space:nowrap;overflow:hidden;' id = 'district" + (i + 1) + "'>地址：" + tipArr[i].name + "</div>"
            }
            resultStr += "</div>";
        }
    } else {
        resultStr = "<div style='width: 100%; height:30px; line-height: 30px; text-align: center; font-size: 14px;'>没有匹配的地址，请重新输入</div>";
    }
    var pageNum = parseInt($("#keywordResult").attr("pageNum"));
    var pageNumDiv = "";
    if (pageNum == 1) {
        if (tipArr && tipArr.length == 5) {
            pageNumDiv = "<div style='width: 100%; height: 30px;'><a style='float: right; font-size: 14px; line-height: 30px;text-decoration: none; padding-right: 15px;' href='javascript:autoSearch(" + (pageNum + 1) + ")'>下一页</a></div>";
        }
    } else {
        if (tipArr && tipArr.length == 5) {
            pageNumDiv = "<div style='width: 100%; height: 30px;'><a style='float: left; font-size: 14px; line-height: 30px;text-decoration: none;padding-left: 15px;' href='javascript:autoSearch(" + (pageNum - 1) + ")'>上一页</a><a style='float: right; font-size: 14px; line-height: 30px;text-decoration: none;padding-right: 15px;' href='javascript:autoSearch(" + (pageNum + 1) + ")'>下一页</a></div>";
        } else {
            pageNumDiv = "<div style='width: 100%; height: 30px;'><a style='float: left; font-size: 14px; line-height: 30px;text-decoration: none;padding-left: 15px;' href='javascript:autoSearch(" + (pageNum - 1) + ")'>上一页</a></div>";
        }
    }
    document.getElementById("keywordResult").pageNum = pageNum;
    document.getElementById("keywordResult").innerHTML = resultStr + pageNumDiv;
    document.getElementById("keywordResult").style.display = "block";
    addressOver();
}
//地址over效果
function addressOver() {
    $(".keywordResultChild").hover(function () {
        $(this).css("background-color", "#eee");
    }, function () {
        $(this).css("background-color", "#fff");
    });
}

//从输入提示框中选择关键字并查询
function selectResult(obj) {
    var name = $(obj).attr("name");
    var lat = $(obj).attr("lat");
    var lng = $(obj).attr("lng");
    $("#keyword").attr("lat", lat);
    $("#keyword").attr("lng", lng);
    $("#keyword").val(name);
    $("#keywordResult").css("display", "none");
    $("#searchDiv").focus();
}

function tooltipScrollTop(scrollid) {//滚轴时控制提示框
    var offset1 = $(scrollid).offset();
    var offset2 = $(document).scrollTop();
    var tooltopH = offset1.top - offset2 - $(scrollid).outerHeight();
    $(".dark-tooltip").css("top", tooltopH + "px");
}
//搜索车辆

$(function () {
    $("#keyword").val("");
});

	function searchCar() {
		window.location.href = contextPath + $('#globalCityAlias').val() + "/car/search";
	};
	
function searchCarSubmit() {
    _hmt.push(['_trackEvent', 'nav', 'click', 'indexSearch']);//百度统计
    var keyword = $("#keyword").val();
    var lat = $("#keyword").attr("lat");
    var lng = $("#keyword").attr("lng");


    var allResult = $(".keywordResultChild");//如果地址搜索结果存在，但没有选择，则默认选第一个

    if (allResult.length > 0 && keyword == "") {
        lat = $(allResult.get(0)).attr("lat");
        lng = $(allResult.get(0)).attr("lng");
        keyword = $(allResult.get(0)).attr("name");
    }


    if (lat == 0 && lng == 0) {//提示必须输入地址
        keyword = "";
        //var key = (event||window.event).keyCode;
        $('#inputAre').darkTooltip({
            trigger: 'show',
            opacity: 0.7,
            gravity: 'south'
        });
        tooltipScrollTop('#inputAre');
        setTimeout("$('#inputAre').find('ins').remove();", 3000);

        return false;
    }
    //else {//没有选中地址默认选择第一个
    //    lat = $(".keywordResultChild").first().attr("lat");
    //    lng = $(".keywordResultChild").first().attr("lng");
    //    keyword = $(".keywordResultChild").first().attr("name");
    //}

    var startTime = $('#datetimepicker').val();
    var endTime = $('#datetimepicker1').val();


    window.location.href = contextPath + "/car/search?keyWords=" + encodeURI(keyword) + "&lat=" + encodeURI(lat)
        + "&lng=" + encodeURI(lng) + "&startTime=" + encodeURI(startTime) + "&endTime=" + encodeURI(endTime)
}
//推荐车辆加载
function recomCarList() {
    $.ajax({
        type: "get",
        dataType: "html",
        url: contextPath + "/static_page/recommend_car/recommendCarList_" + getCookie("city_code") + ".html",
        success: function (result) {
            if ($(result).length == 10) {
                var content = $(".mouseslider");
                content.append(result);
                recomCarListInit();
            } else {
                $(".recommend_car").css("display", "none");
            }
        }
    });
}

//滚动车辆
function recomCarListInit() {
    var $mouseslider = $('.recommend_car .mouseslider');
    var mouseslider = $.trim($mouseslider.text());
    if(mouseslider == '') {
        return;
    }
    $(".recommend_car_content").mouseslide({
        height: '190px', //Element height
        widthExpand: true, //Auto Expand Width
        mirror: false, //Create Mirror
        mirrorOpacity: .3 //30% Mirror Opacity
    });
    $(".mouseslider a").hover(function () {
        $(this).find(".mod_maskBarhover").stop().fadeTo(300, 0.8)
    }, function () {
        $(this).find(".mod_maskBarhover").stop().fadeTo(300, 0)
    });
}
//意见输入显示
function suggestionShow() {
    var isLogin = $("[data-key=isLogin]").val();
    if (!isLogin) {
        window.location.href = contextPath + "/noLogin";
        return;
    }
    $(".feedback_index,.feedback_index_inp").css("display", "block");
}
//意见输入隐藏
function suggestionHidden() {
    $(".feedback_index,.feedback_index_inp").css("display", "none");
}
//提交意见
function suggestionSubmit(obj) {
    var content = value("#suggContent");
    if (content == "") {
        alertDiv("请填写意见");
        return;
    }

    var email = value("#suggEamil");
    if (email == "") {
        alertDiv("请填写邮箱");
        return;
    }
    var emailSugg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    if (!emailSugg.test(email)) {
        alertDiv("请输入正确格式的邮箱");
        return;
    }
    if (ajaxButtonRequest(obj)) {
        return;
    }
    myAjaxLogin("post", contextPath + "/collection/opinion", {"txt": content, "eamil": email}, function (result) {
        if (result["code"] == 000000) {
            alertDiv("感谢你的宝贵意见");
            suggestionHidden();
        } else {
            alertDiv(result["msg"]);
        }
        ajaxButtonRespone(obj);
    });
}

//价格计算
function priceCount() {
    var brand = $("#brandSelect").val();
    var type = $("#typeSelect").val()
    var obj = $("#numSelect").val();
    var marketYear = $("#yearSelect").val();
    obj = obj.split(",");
    var modelId = obj[0];
    var param = {};
    param['cityCode'] = getCookie("city_code");
    param['modelId'] = modelId;
    param['year'] = marketYear;
    //计算公式
    $.ajax({
        type: "post",
        dataType: "json",
        url: contextPath + "/car/income",
        data:param,
        success: function (result) {
            $("#dayPrice").html((result.data.dayPrice + "-" + result.data.maxDayPrice) + "/天");
        }
    });
}

function goToStar() {
    var bodyelem = $("html,body,document");
    bodyelem.animate({
        scrollTop: $('.Media').offset().top
    }, 1000);
}


//初始化品牌列表
function initBrand() {
    $.ajax({
        async: false,  //同步，保证先初始品牌选项先加载完成
        type: "get",
        dataType: "html",
        url: contextPath + "/static_page/brand/brandList.html",
        success: function (result) {

            $('#brandSelect').append(result); //品牌加载
        }
    });
}
