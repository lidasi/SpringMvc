/************************************日期转换***********************************************/
//时间转换成String
function dateToString(date) {
    var month = date.getMonth() + 1;
    if (month < 10) {
        month = "0" + month;
    }
    var day = date.getDate();
    if (day < 10) {
        day = "0" + day;
    }
    var stringDate = date.getFullYear() + "-" + month + "-" + day;
    return stringDate;
}

//时间转换成String
function dateToStringX(date) {
    var month = date.getMonth() + 1;
    if (month < 10) {
        month = "0" + month;
    }
    var day = date.getDate();
    if (day < 10) {
        day = "0" + day;
    }
    var stringDate = date.getFullYear() + "/" + month + "/" + day;
    return stringDate;
}

//日期和时间字符串转换成时间2014-10-25 15:45
function stringToDate(stringDate, stringTime) {
    var dateArray = stringDate.split("-");
    var date = new Date();
    date.setFullYear(dateArray[0]);
    date.setDate(dateArray[2]);
    date.setMonth(dateArray[1] - 1);
    var timeArray = stringTime.split(":");
    date.setHours(timeArray[0]);
    date.setMinutes(timeArray[1]);
    date.setSeconds(0);
    date.setMilliseconds(0);
    return date;
}

//日期和时间字符串转换成时间 2014/10/25 15:45
function stringToDateX(stringDate) {
    if (stringDate) {
        var stringArray = stringDate.split(" ");
        var dateArray = stringArray[0].split("/");
        var date = new Date();
        date.setFullYear(dateArray[0]);
        date.setDate(dateArray[2]);
        date.setMonth(dateArray[1] - 1);
        var timeArray = stringArray[1].split(":");
        date.setHours(timeArray[0]);
        date.setMinutes(timeArray[1]);
        date.setSeconds(0);
        date.setMilliseconds(0);
        return date;
    } else {
        return new Date();
    }
}

//日期和时间字符串2014/10/25 15:45转换成时间 201410251545
function dateToStringXyy(stringDate) {
    var stringArray = stringDate.split(" ");
    var dateArray = stringArray[0].split("/");
    var timeArray = stringArray[1].split(":");
    var date = dateArray[0] + dateArray[1] + dateArray[2];
    var timeArray = timeArray[0] + timeArray[1] + "00"
    var dateString = date + timeArray;
    return dateString;
}
//按照日期格式(2014/10/25)分割成字符串20141025
function dateToStringdxh(stringDate, type) {//type 按照什么分割 . / - 这样
    var stringDate = stringDate.substring(0, 10);
    var stringArray = stringDate.split(type);
    var dateString = stringArray[0] + stringArray[1] + stringArray[2];
    return dateString;
}
//yyyyMMdd或者yyyyMMddhhmmss转化为date
function stingToDateH(stringDate) {
    if (stringDate == "" || stringDate == null) {
        return "";
    }
    var date = new Date();
    date.setFullYear(stringDate.substring(0, 4));
    date.setDate(stringDate.substring(6, 8));
    date.setMonth(stringDate.substring(4, 6) - 1);
    if (stringDate.length > 8) {
        date.setHours(stringDate.substring(8, 10));
        date.setMinutes(stringDate.substring(10, 12));
        date.setSeconds(stringDate.substring(12, 14));
        date.setMilliseconds(0);
    } else {
        date.setHours(0);
        date.setMinutes(0);
        date.setSeconds(0);
        date.setMilliseconds(0);
    }
    return date;
}
//格式化日期,
function formatDate(date, format) {
    if (date == "" || date == null) {
        return "";
    }
    var paddNum = function (num) {
        num += "";
        return num.replace(/^(\d)$/, "0$1");
    }
    //指定格式字符
    var cfg = {
        yyyy: date.getFullYear() //年 : 4位
        , yy: date.getFullYear().toString().substring(2)//年 : 2位
        , M: date.getMonth() + 1  //月 : 如果1位的时候不补0
        , MM: paddNum(date.getMonth() + 1) //月 : 如果1位的时候补0
        , d: date.getDate()   //日 : 如果1位的时候不补0
        , dd: paddNum(date.getDate())//日 : 如果1位的时候补0
        , hh: paddNum(date.getHours())  //时
        , mm: paddNum(date.getMinutes()) //分
        , ss: paddNum(date.getSeconds()) //秒
    }
    format || (format = "yyyy-MM-dd hh:mm:ss");
    return format.replace(/([a-z])(\1)*/ig, function (m) {
        return cfg[m];
    });
}

/************************************分页查询***********************************************/
//点击页码触发clickPageNum（pageNum）方法，使用时重写此方法
//生成页码div
function createPageDiv(curNum, tolNum) {
    var pageDiv = "<div class='pageDiv'>";

    if (curNum == 1) {
        pageDiv += "<a class='prePage disable'><<</a>";
    } else {
        pageDiv += "<a class='prePage' href='javascript:clickPageNum(" + (curNum - 1) + ");'><<</a>";
    }

    if (tolNum <= 5) {
        for (var i = 1; i <= tolNum; i++) {
            pageDiv += addPageA(i, curNum);
        }
    } else {
        if (curNum >= 5) {
            pageDiv += "<a href='javascript:clickPageNum(1);'>1</a><span>...</span>";

            if (curNum != tolNum) {
                for (var i = curNum - 2; i <= curNum + 1; i++) {
                    pageDiv += addPageA(i, curNum);
                }
            } else {
                for (var i = curNum - 3; i <= curNum; i++) {
                    pageDiv += addPageA(i, curNum);
                }
            }
        } else {
            for (var i = 1; i <= 5; i++) {
                pageDiv += addPageA(i, curNum);
            }
        }

        if (tolNum - curNum > 0) {
            pageDiv += "<span>...</span>";
        }
    }

    if (curNum == tolNum) {
        pageDiv += "<a class='nextPage disable'>>></a>";
    } else {
        pageDiv += "<a class='nextPage' href='javascript:clickPageNum(" + (curNum + 1) + ");'>>></a>";
    }
    pageDiv += "</div>";
    return pageDiv;
}
//插入页<a>
function addPageA(i, curNum) {

    var pageDiv = "";
    if (i == curNum) {
        pageDiv += "<a class='selectA'>" + i + "</a>";
    } else {
        pageDiv += "<a href='javascript:clickPageNum(" + i + ");'>" + i + "</a>";
    }
    return pageDiv;
}
//搜索页特殊的分页
function createSpecialPageDiv(curNum, tolNum) {
    var pageDiv = "<div class='pageDiv'>";

    if (curNum == 1) {
        pageDiv += "<a class='prePage disable'><<</a><a class='disable'><</a>";
    } else {
        pageDiv += "<a class='prePage' href='javascript:clickPageNum(" + 1 + ");'><<</a><a href='javascript:clickPageNum(" + (curNum - 1) + ");'><</a>";
    }

    if (curNum == tolNum) {
        pageDiv += "<a class='nextPage disable'>></a>";
    } else {
        pageDiv += "<a class='nextPage' href='javascript:clickPageNum(" + (curNum + 1) + ");'>></a>";
    }
    pageDiv += "</div>";
    return pageDiv;
}

/************************************判断登录***********************************************/
//验证用户登录 没登录返回true
function validateLogin(result) {
    if (result.code == 200008) {
        var url = window.location.pathname;
        if (url.indexOf("/car/reDetail/") < 0) {
            location.href = location.origin + "/noLogin";
        } else {
            sbt();
            $("#acountLogin").focus();
            $("#newNav").css("display", "none");
            $(".unLoginShow").css("display", "block");
        }
        return true;
    } else {
        return false;
    }
}
//自定义ajax，判断用户是否登录
function myAjaxLogin(type, url, dataMap, sucFunction) {
    $.ajax({
        type: type,
        dataType: "json",
        url: url,
        data: dataMap,
        success: function (result) {
            if (validateLogin(result)) {
                return;
            }
            sucFunction(result);
        }
    });
}
//自定义同步ajax，判断用户是否登录
function myAjaxLoginAsync(type, url, dataMap, sucFunction) {
    $.ajax({
        type: type,
        dataType: "json",
        url: url,
        data: dataMap,
        async: false,
        success: function (result) {
            if (validateLogin(result)) {
                return;
            }
            sucFunction(result);
        }
    });
}
//自定义弹出信息
function alertDiv(msg, time) {
    $("#alertDiv").html(msg);
    $("#alertDiv").css("marginLeft", -($("#alertDiv").width() / 2));
    var top = document.body.scrollTop;
    if (top == 0) {
        top = document.documentElement.scrollTop;
    }
    if (time > 0) {
        var timeOpa = time;
    } else {
        var timeOpa = 1;
    }

    $("#alertDiv").css("top", top + 300 + "px");
    $("#alertDiv").css("display", "block");
    var interval = window.setInterval(function () {
        var opacity = $("#alertDiv").css("opacity");
        if (opacity > 0.1) {
            $("#alertDiv").css("opacity", parseFloat(opacity) - 0.05);
        } else {
            $("#alertDiv").css("display", "none");
            $("#alertDiv").css("opacity", 0.7);
            window.clearInterval(interval);

        }

    }, 100 * timeOpa);
}

/************************************请求按钮变换***********************************************/
//请求后，按钮样式变换
function ajaxButtonRequest(obj, content) {
    if ($(obj).attr("status") == "1") {
        return true;
    } else {

        if (content == undefined) {
            if ($(obj).html() == "") {
                $(obj).val($(obj).val() + "···");
            } else {
                $(obj).html($(obj).html() + "&nbsp;·&nbsp;·&nbsp;·");
            }
        } else {
            if ($(obj).html() == "") {
                $(obj).val(content);
            } else {
                $(obj).html(content);
            }
        }
        $(obj).css("opacity", "0.6");
        $(obj).css("ilter", "alpha(opacity=60)");
        $(obj).attr("status", "1");
        return false;
    }
}
//请求返回后，按钮样式变换
function ajaxButtonRespone(obj, content) {
   /* console.log(obj, content);//注释打印内容*/
    if ($(obj).attr("status") == "1") {
        if (content == undefined) {
            if ($(obj).html() == "") {
                $(obj).val($(obj).val().substring(0, $(obj).val().indexOf("·")));
            } else {
                $(obj).html($(obj).html().substring(0, $(obj).html().indexOf("&")));
            }
        } else {
            if ($(obj).html() == "") {
                $(obj).val(content);
            } else {
                $(obj).html(content);
            }
        }
        $(obj).css("opacity", "1");
        $(obj).css("filter", "alpha(opacity=100)");
        $(obj).attr("status", "0");
    }
}

//滚动至顶端
$(function () {
    goToTopShowHide();
})
$(window).scroll(function () {
    goToTopShowHide()
});
function goToTopShowHide() {
    var top = $("body").scrollTop(); // document.documentElement.scrollTop || document.body.scrollTop;
    var height = $("body").height();//   document.documentElement.clientHeight || document.body.clientHeight;
    if (top < 100) {
        $("#moquu_top").css("display", "none");
    } else {
        $("#moquu_top").css("display", "block");
    }
}

function goToTop() {
    var bodyelem = $("html,body,document");
    bodyelem.animate({
        scrollTop: 0
    }, 1000);
}

/************************************分享***********************************************/
var shareTop = window.screen.height / 2 - 250;
var shareLeft = window.screen.width / 2 - 300;

/*title是标题，rLink链接，summary内容，site分享来源，pic分享图片路径,分享到新浪微博*/
function shareTSina(title, rLink, pic) {
    var aa = window.open();
    setTimeout(function () {
        aa.location = "http://service.weibo.com/share/share.php?pic=" + encodeURIComponent(pic) + "&title=" +
            encodeURIComponent(title.replace(/&nbsp;/g, " ").replace(/<br \/>/g, " ")) + "&url=" + encodeURIComponent(rLink),
            "分享至新浪微博",
        "height=500,width=600,top=" + shareTop + ",left=" + shareLeft + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no";
    }, 100);
//    window.open("http://service.weibo.com/share/share.php?pic=" +encodeURIComponent(pic) +"&title="  +
//            encodeURIComponent(title.replace(/&nbsp;/g, " ").replace(/<br \/>/g, " "))+ "&url=" + encodeURIComponent(rLink)+'&appkey='+encodeURI("1169428351")+'&Secret='+encodeURI("37271b5aae22b4553410e38a32774ea6"),
//        "分享至新浪微博",
//            "height=500,width=600,top=" + shareTop + ",left=" + shareLeft + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");

}

/*,分享到qq空间*/
function shareQzone(title, rLink, summary, site, pic) {
    title = "标题。";
    rLink = "http://www.abc.com/heeh.html";
    site = "http://www.abc.com/heeh.html";
    window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title=' +
        encodeURIComponent(title) + '&url=' + encodeURIComponent(rLink) + '&summary=' +
        encodeURIComponent(summary) + '&site=' + encodeURIComponent(site)
        , '_blank', 'scrollbars=no,width=600,height=450,left=' + shareLeft + ',top=' + shareTop + ',status=no,resizable=yes');

}


//腾讯微博
function shareToWb(title, rLink, site, pic) {
    title = "标题。";
    rLink = "http://www.abc.com/heeh.html";
    window.open('http://v.t.qq.com/share/share.php?url=' + encodeURIComponent(rLink) +
        '&title=' + encodeURI(title) + '&appkey=' + encodeURI(site), '_blank',
        'scrollbars=no,width=600,height=450,left=' + shareLeft + ',top=' + shareTop + ',status=no,resizable=yes');
}

//取随机数
function getRandom(n) {
    return Math.floor(Math.random() * n + 1)
}
//js打开新页面
function jsOpenNewWindow(url) {
    var aa = window.open();
    setTimeout(function () {
        aa.location = url;
    }, 100);
}
//回车快捷键
function enterfastkey(divId, paramFunction, buttonId) {
    document.getElementById(divId).onkeydown = function (e) {
        // 兼容FF和IE和Opera
        var theEvent = e || window.event;
        var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
        if (code == 13) {
            paramFunction(document.getElementById(buttonId));//具体处理函数
            return false;
        }
        return true;
    }
}
//map对象
function Map() {
    var struct = function (key, value) {
        this.key = key;
        this.value = value;
    }

    var put = function (key, value) {
        for (var i = 0; i < this.arr.length; i++) {
            if (this.arr[i].key === key) {
                this.arr[i].value = value;
                return;
            }
        }
        this.arr[this.arr.length] = new struct(key, value);
    }

    var get = function (key) {
        for (var i = 0; i < this.arr.length; i++) {
            if (this.arr[i].key === key) {
                return this.arr[i].value;
            }
        }
        return null;
    }

    var remove = function (key) {
        var v;
        for (var i = 0; i < this.arr.length; i++) {
            v = this.arr.pop();
            if (v.key === key) {
                continue;
            }
            this.arr.unshift(v);
        }
    }

    var size = function () {
        return this.arr.length;
    }

    var isEmpty = function () {
        return this.arr.length <= 0;
    }
    this.arr = new Array();
    this.get = get;
    this.put = put;
    this.remove = remove;
    this.size = size;
    this.isEmpty = isEmpty;
}

/****************************************************cookies*********************************************************/
//写cookies
function setCookie(name, value) {
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + encodeURI(value) + ";expires=" + exp.toGMTString() + ";path=/";
}

//读取cookies
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");

    if (arr = document.cookie.match(reg))
        return decodeURI(arr[2]);
    else
        return null;
}
//删除cookies
function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null)
        document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

//页面加载缓冲遮罩
function readyPage(content, color) {
    if (content.find(".readyPage").length > 0) {
        return;
    }
    if (color != undefined || color != "") {
        color = "#fff";
    }
    content.append("<div class='readyPage' style='position: absolute; width: 100%; height: " + content.parent().height() + "px; background-color: " + color + "; filter:alpha(opacity=70); opacity: 0.7; z-index: 10;'></div>");
}

//防止cookie丢失
if (getCookie("city_code") == null) {
    setCookie("city_code", "310100");
}
if (getCookie("city_name") == null) {
    setCookie("city_name", "上海");
}
if (getCookie("city_lat") == null) {
    setCookie("city_lat", "31.243466");
}
if (getCookie("city_lon") == null) {
    setCookie("city_lon", "121.491121");
}
if (getCookie("cityTel_prefix") == null) {
    setCookie("cityTel_prefix", "021");
}






