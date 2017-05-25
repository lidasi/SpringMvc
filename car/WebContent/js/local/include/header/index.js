var contextPath = $("[data-key=contextPath]").val();
var publicImage = $("[data-key=publicImage]").val();


//注册发送手机信息
function sendMessage(obj) {
    var mobile = value("#mobileRe");
    var valiCodeRe = value("#valiCodeRe");
    if ($.trim(mobile) == "") {
        $("#mobileRe").tooltip("show");
        return;
    }
    if (valiCodeRe == "") {
        $("#valiCodeRe").tooltip("show");
        return;
    }
    if (valiCodeRe.length < 4) {
        $("#valiCodeRe").tooltip("show");
        $("#valiCodeRe").next(".tooltip").find(".tooltip-inner").html("验证码错误");
        return;
    }
    var mRe=verificationMobile(mobile); //手机号验证
    if(mRe[0]==false){
    	$("#mobileRe").tooltip("show");
        $("#mobileRe").next(".tooltip").find(".tooltip-inner").html(mRe[1]);
        return;
    }     
    if ($("#sendMessage").html() != "发送验证码") {
        return;
    } else if (ajaxButtonRequest(obj, "发送中&nbsp;·&nbsp;·&nbsp;·")) {
        return;
    } else {

        $.ajax({
            type: "get",
            dateType: "json",
            url: contextPath + "/mem/message/" + mobile,
            data: {"valiCodeRe": valiCodeRe},
            success: function (result) {
                if (result["code"] == 200010) {
                    $("#mobileRe").tooltip("show");
                    $("#mobileRe").next(".tooltip").find(".tooltip-inner").html(result["msg"]);
                    ajaxButtonRespone(obj, "发送验证码");
                } else if (result["code"] == 000000) {
                    alertDiv("验证短信已发送");
                    $("#sendMessage").html(60);
                    var interval = window.setInterval(function () {
                        var num = $("#sendMessage").html();
                        if (num > 0) {
                            $("#sendMessage").html($("#sendMessage").html() - 1);
                        } else {
                            ajaxButtonRespone(obj, "发送验证码");
                            window.clearInterval(interval);
                        }

                    }, 1000);
                } else if (result["code"] == 200016) {
                    $("#valiCodeImg").attr('src', contextPath + '/valiCode/img?' + Math.random());
                    $("#valiCodeRe").tooltip("show");
                    $("#valiCodeRe").next(".tooltip").find(".tooltip-inner").html("验证码错误");
                    ajaxButtonRespone(obj, "发送验证码");
                } else if (result["code"] == 200011) {
                    alertDiv("该手机号已被注册");
                    ajaxButtonRespone(obj, "发送验证码");
                } else {
                    alertDiv(result["msg"]);
                    ajaxButtonRespone(obj, "发送验证码");
                }
            }
        });

    }
}

//判断是否为点击了邀请有礼
function updateShare(type){
	$("#inputShare").val(type);
}
//提交注册信息
function submitRegist(obj) {
    var mobileRe = value("#mobileRe");
    var validateRe = value("#validateRe");
    var passwordRe = value("#passwordRe");
    var passConfi = value("#passConfi");
    //var emailRe = $.trim($("#emailRe").val());
    var nameRe = value("#nameRe");
    var valiCodeRe = value("#valiCodeRe");
    if (mobileRe == "") {
        $("#mobileRe").tooltip("show");
        return;
    }
    
    var mRe=verificationMobile(mobileRe); //手机号验证
    if(mRe[0]==false){   	
    	$("#mobileRe").tooltip("show");
    	$("#mobileRe").next(".tooltip").find(".tooltip-inner").html(mRe[1]);
        return;
    }       
    if (validateRe == "") {
        $("#validateRe").tooltip("show");
        return;
    }
    if (passwordRe == "") {
        $("#passwordRe").tooltip("show");
        return;
    }
    
    var pRe=verificationPassword(passwordRe); //密码验证
    if(pRe[0]==false){
    	  $("#passwordRe").tooltip("show");
          $("#passwordRe").next(".tooltip").find(".tooltip-inner").html(pRe[1]);
         return;
    }      
    if (passConfi == "") {
        $("#passConfi").tooltip("show");
        return;
    }
    var pConfiRe=verificationPassword(passConfi); // 二次密码验证
    if(pConfiRe[0]==false){
        $("#passConfi").tooltip("show");
        $("#passConfi").next(".tooltip").find(".tooltip-inner").html(pConfiRe[1]);
        return;
    }       
    if (passConfi != passwordRe) {
        $("#passConfi").tooltip("show");
        $("#passConfi").next(".tooltip").find(".tooltip-inner").html("两次密码不一致");
        return;
    }
    if (!$("#vipServiceCheck").get(0).checked) {
        $("#vipServiceCheck").tooltip("show");
        return;
    }
//        if (emailRe == ""){
//            $("#emailRe").tooltip("show");
//            return;
//        }
//        var emailreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
//        if(!emailreg.test(emailRe)){
//            $("#emailRe").tooltip("show");
//            $("#emailRe").next(".tooltip").find(".tooltip-inner").html("请输入正确格式的邮箱");
//            return;
//        }
    if (nameRe == "") {
        $("#nameRe").tooltip("show");
        return;
    }

    if (ajaxButtonRequest(obj)) {
        return;
    }
    $.ajax({
        async: false,
        type: "post",
        dateType: "json",
        url: contextPath + "/mem/registration",
        data: {
            "mobile": mobileRe,
            "pwd": passwordRe,
            "nickName": nameRe,
            "message": validateRe,
            "valiCode": valiCodeRe
        },
        success: function (result) {
            if (result["code"] == 000000) {
                //ag_zhuce();//广告投放统计
                var _mvq = window._mvq || [];
                window._mvq = _mvq;
                _mvq.push(['$setAccount', 'm-110033-0']);
                _mvq.push(['$setGeneral', 'registered', '', result.data.nickName, result.data.memNo]);
                _mvq.push(['$logConversion']);

                $("#newNav_name").html(result.data.nickName);
                $("#newNav_pic").attr("src", publicImage + "/" + result.data.portraitPath + "?" + Math.random());
                $(".unLoginShow").css("display", "none");
                $(".navWarp").css("display", "block");
                chide01();
                //  var url = window.location.pathname;
                //if (url.indexOf("/car/reDetail/") >= 0){
                //location.reload();
                //}
                // window.location.href = window.location.pathname + "?regstate=done";
                window.location.href = contextPath + "/fastRegi/end?flag=1&regstate=done";
            } else if (result["code"] == 200016) {
                $("#valiCodeRe").tooltip("show");
                $("#valiCodeRe").next(".tooltip").find(".tooltip-inner").html("验证码错误");
            } else if (result["code"] == 300002) {
                $("#validateRe").tooltip("show");
                $("#validateRe").next(".tooltip").find(".tooltip-inner").html("短信验证码超时，请重新获取");
            } else if (result["code"] == 300003) {
                $("#validateRe").tooltip("show");
                $("#validateRe").next(".tooltip").find(".tooltip-inner").html("短信验证码错误");
            } else {
                alertDiv(result.msg);
            }
            ajaxButtonRespone(obj);
        }
    });
}

//登录
function submitLogin(obj) {
    var acountLogin = value("#acountLogin");
    var passwordLogin = value("#passwordLogin");
    if (acountLogin == "") {
        $("#acountLogin").tooltip("show");
        return;
    }    
    var mRe=verificationMobile(acountLogin); //手机号验证
    if(mRe[0]==false){
    	 $("#acountLogin").tooltip("show");
         $("#acountLogin").next(".tooltip").find(".tooltip-inner").html(mRe[1]);
        return;
    }       
    
    if (passwordLogin == "") {
        $("#passwordLogin").tooltip("show");
        return;
    }
    if (passwordLogin.length < 6) {
        $("#passwordLogin").tooltip("show");
        $("#passwordLogin").next(".tooltip").find(".tooltip-inner").html("密码长度大于6位");
        return;
    }
    if (ajaxButtonRequest(obj)) {
        return;
    }
    $.ajax({
        type: "post",
        dateType: "json",
        url: contextPath + "/mem/login",
        data: {"mobile": acountLogin, "pwd": passwordLogin},
        success: function (result) {
            if (result["code"] == 000000) {
                $("#newNav_name").html(result.data.nickName);
                $("#newNav_pic").attr("src", publicImage + "/" + result.data.portraitPath + "?" + Math.random());
                $(".unLoginShow").css("display", "none");
                $(".navWarp").css("display", "block");
                localStorage.setItem("token", result.data.token);
                chide();
                //  var url = window.location.pathname;
                //if (url.indexOf("/car/reDetail/") >= 0){
                
                //   }
                
                if($("#inputShare").val()==1){//点击邀请有礼登录后跳转到邀请有礼页面
                	window.location.href = contextPath + "/rentShare";
                }else{
                	location.reload();
                }
            } else if (result["code"] == 200007) {
                $("#loginErrorMsg").html("用户名/密码错误");
            } else {
                alertDiv(result.msg);
            }
            ajaxButtonRespone(obj);
        }
    });
}


//登出
function loginOut() {
    $.ajax({
        type: "get",
        dateType: "json",
        url: contextPath + "/mem/loginOut?" + Math.random(),
        success: function (result) {
            if (result["code"] == 000000) {
                $("#newNav_name").html("");
                $("#newNav_pic").attr("src", "");
                $(".unLoginShow").css("display", "block");
                $(".navWarp").css("display", "none");
                chide();
            }
            window.location.href = contextPath + "/index";
        }
    });
}

$(function () {
    enterfastkey('cndiv01', submitRegist, 'registButton');//注册回车事件
    enterfastkey('cndiv', submitLogin, 'loginButton');//登录回车事件
    //initCity();
    initCookies();
});
function initCookies() {
	setCookie("city_code", $('#gloablCityCode').val());
    setCookie("city_name", $('#gloablCityName').val());
    setCookie("city_lat", $('#gloablCityLat').val());
    setCookie("city_lon", $('#gloablCityLon').val());
    setCookie("cityTel_prefix", $('#gloablCityTel').val());
}
//城市初始化
function initCity() {
	var host= location.host;
    if(host=="sh.atzuche.com"){
    	setCookie("city_code", "310100");
        setCookie("city_name", "上海");
        setCookie("city_lat", "31.243466");
        setCookie("city_lon", "121.491121");
        setCookie("cityTel_prefix", "021");
    }else if(host=="http://atzuche.ngrok.cc/"){
    	setCookie("city_code", "320100");
        setCookie("city_name", "南京测试");
        setCookie("city_lat", "32.057236");
        setCookie("city_lon", "118.778074");
        setCookie("cityTel_prefix", "025");
    }else if(host=="nj.atzuche.com"){
    	setCookie("city_code", "320100");
        setCookie("city_name", "南京");
        setCookie("city_lat", "32.057236");
        setCookie("city_lon", "118.778074");
        setCookie("cityTel_prefix", "025");
    }else if(host=="hz.atzuche.com"){
    	setCookie("city_code", "330100");
        setCookie("city_name", "杭州");
        setCookie("city_lat", "30.259258");
        setCookie("city_lon", "120.219294");
        setCookie("cityTel_prefix", "0571");
    }else if(host=="gz.atzuche.com"){
    	setCookie("city_code", "440100");
        setCookie("city_name", "广州");
        setCookie("city_lat", "23.120049");
        setCookie("city_lon", "113.30765");
        setCookie("cityTel_prefix", "020");
    }else if(host=="sz.atzuche.com"){
    	setCookie("city_code", "440300");
        setCookie("city_name", "深圳");
        setCookie("city_lat", "22.546054");
        setCookie("city_lon", "114.025974");
        setCookie("cityTel_prefix", "0755");
    }else if(host=="bj.atzuche.com"){
    	setCookie("city_code", "110100");
        setCookie("city_name", "北京");
        setCookie("city_lat", "39.914889");
        setCookie("city_lon", "116.403874");
        setCookie("cityTel_prefix", "010");
    }else if(host=="cq.atzuche.com"){
    	setCookie("city_code", "500100");
        setCookie("city_name", "重庆");
        setCookie("city_lat", "29.544606");
        setCookie("city_lon", "106.530635");
        setCookie("cityTel_prefix", "023");
    }else if(host=="hk.atzuche.com"){
    	setCookie("city_code", "460100");
        setCookie("city_name", "海口");
        setCookie("city_lat", "20.022071");
        setCookie("city_lon", "110.330802");
        setCookie("cityTel_prefix", "0898");
    }else if(host=="qd.atzuche.com"){
    	setCookie("city_code", "370200");
        setCookie("city_name", "青岛");
        setCookie("city_lat", "36.072358");
        setCookie("city_lon", "120.389445");
        setCookie("cityTel_prefix", "0532");
    }else if(host=="xa.atzuche.com"){
    	setCookie("city_code", "610100");
        setCookie("city_name", "西安");
        setCookie("city_lat", "34.347436");
        setCookie("city_lon", "108.946306");
        setCookie("cityTel_prefix", "029");
    }else if(host=="sy.atzuche.com"){
    	setCookie("city_code", "460200");
        setCookie("city_name", "三亚");
        setCookie("city_lat", "18.258217");
        setCookie("city_lon", "114.311831");
        setCookie("cityTel_prefix", "027");
    }else if(host=="heb.atzuche.com"){
    	setCookie("city_code", "230100");
        setCookie("city_name", "哈尔滨");
        setCookie("city_lat", "45.807781");
        setCookie("city_lon", "126.542417");
        setCookie("cityTel_prefix", "0451");
    }else if(host=="fs.atzuche.com"){
    	setCookie("city_code", "440600");
        setCookie("city_name", "佛山");
        setCookie("city_lat", "23.027707");
        setCookie("city_lon", "113.128432");
        setCookie("cityTel_prefix", "0757");
    }else if(host=="zz.atzuche.com"){
    	setCookie("city_code", "410100");
        setCookie("city_name", "郑州");
        setCookie("city_lat", "34.753488");
        setCookie("city_lon", "113.631349");
        setCookie("cityTel_prefix", "0371");
    }else if(host=="nc.atzuche.com"){
    	setCookie("city_code", "360100");
        setCookie("city_name", "南昌");
        setCookie("city_lat", "28.687675");
        setCookie("city_lon", "115.864528");
        setCookie("cityTel_prefix", "0791");
    }else if(host=="sr.atzuche.com"){
    	setCookie("city_code", "361100");
        setCookie("city_name", "上饶");
        setCookie("city_lat", "28.460864");
        setCookie("city_lon", "117.950028");
        setCookie("cityTel_prefix", "0793");
    }else if(host=="xm.atzuche.com"){
    	setCookie("city_code", "350200");
        setCookie("city_name", "厦门");
        setCookie("city_lat", "24.485821");
        setCookie("city_lon", "118.095915");
        setCookie("cityTel_prefix", "0592");
    }else if(host=="cd.atzuche.com"){
    	setCookie("city_code", "510100");
        setCookie("city_name", "成都");
        setCookie("city_lat", "30.576279");
        setCookie("city_lon", "104.071216");
        setCookie("cityTel_prefix", "028");
    }else if(host=="hhht.atzuche.com"){
    	setCookie("city_code", "150100");
        setCookie("city_name", "呼和浩特");
        setCookie("city_lat", "40.847461");
        setCookie("city_lon", "111.758518");
        setCookie("cityTel_prefix", "0471");
    }else if(host=="www.atzuche.com"){
    	 setCookie("city_code", "310100");
         setCookie("city_name", "上海");
         setCookie("city_lat", "31.243466");
         setCookie("city_lon", "121.491121");
         setCookie("cityTel_prefix", "021");
    }
    var cityCode = getCookie("city_code");
    var cityName = getCookie("city_name");
    var cityLat = getCookie("city_lat");
    var cityLon = getCookie("city_lon");
    var cityTelPrefix = getCookie("cityTel_prefix");
    if (cityCode != null && cityName != null && cityLat != null && cityLon != null && cityTelPrefix != null) {
        $("#citySelect").html(cityName);
    } else {
        setCookie("city_code", "310100");
        setCookie("city_name", "上海");
        setCookie("city_lat", "31.243466");
        setCookie("city_lon", "121.491121");
        setCookie("cityTel_prefix", "021");
    }
    $("[cityCode=" + getCookie("city_code") + "]").addClass("active");
}

//修改所在城市
$(function () {
	$("[data-click=changeCity]").click(function (event) {
        var $this = $(this);
        event.preventDefault();
        var cityCode = $this.attr("cityCode");
        var cityName = $this.attr("cityName");
        var cityLat = $this.attr("cityLat");
        var cityLon = $this.attr("cityLon");
        var cityTelPrefix = $this.attr("cityTelPrefix");
        if (cityCode == getCookie("city_code")) {
            location.reload();
            return;
        }
        setCookie("city_code", cityCode);
        setCookie("city_name", cityName);
        setCookie("city_lat", cityLat);
        setCookie("city_lon", cityLon);
        setCookie("cityTel_prefix", cityTelPrefix);
      var url = location.pathname;
  	  var localhostPaht = contextPath;
  	  var cityAlias = $this.attr('cityAlias');
  	  if('' != cityAlias) {
  		localhostPaht = contextPath+'/'+cityAlias;
  	  } else {
  		localhostPaht = contextPath+'/';
  	  }
  	  /**
  	  if(cityCode=="310100"){
  		localhostPaht="http://sh.atzuche.com";
  	  }else if(cityCode=="110100"){
  		localhostPaht="http://bj.atzuche.com";
  	  }else if(cityCode=="440100"){
  		localhostPaht="http://gz.atzuche.com";
  	  }else if(cityCode=="320100"){
  		localhostPaht="http://nj.atzuche.com";
  	  }else if(cityCode=="440300"){
  		localhostPaht="http://sz.atzuche.com";
  	  }else if(cityCode=="330100"){
  		localhostPaht="http://hz.atzuche.com";
  	  }else if(cityCode=="500100"){
  		localhostPaht="http://cq.atzuche.com";
  	  }else if(cityCode=="460100"){
  		localhostPaht="http://hk.atzuche.com";
  	  }else if(cityCode=="370200"){
  		localhostPaht="http://qd.atzuche.com";
  	  }else if(cityCode=="610100"){
  		localhostPaht="http://xa.atzuche.com";
  	  }else if(cityCode=="460200"){
  		localhostPaht="http://sy.atzuche.com";
  	  }else if(cityCode=="230100"){
  		localhostPaht="http://heb.atzuche.com";
  	  }else if(cityCode=="440600"){
  		localhostPaht="http://fs.atzuche.com";
  	  }else{
  	  	localhostPaht="http://atzuche.com";
  	  }
  	  **/
  	  
  	  
        /**if (url.indexOf("/car/reDetail/") >= 0) {//车辆详情跳转到搜索页
            location.href = localhostPaht + "/car/search";
        } else **/if (url.indexOf("/car/search") >= 0) {//车辆搜索切换城市，清楚带来的地址和时间信息
            location.href = localhostPaht + "/car/search";
        } else {
        	location.href = localhostPaht;
        }
    });

    $("[data-click=login]").click(sbt);


});

