<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no"/>
    <title>凹凸租车网-网上汽车租赁公司-中国专业私家车个人租车平台网站</title> 
    <meta name="description"
         content="凹凸租车网（atzuche.com）——全新的个人对个人P2P租车平台网站。安全可靠的汽车租赁公司，提供自驾租车、婚车租赁、婚庆租车、商务租车、旅游租车、约会租车等长期短期租车服务，价格透明，方便快捷，热线400-668-0202。"/>
    <meta name="keywords"
         content="租车，个人租车，租车网，租车公司，汽车租赁公司，凹凸租车"/>
      
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/user.css"/>
    <link rel="stylesheet" type="text/css" href="css/trans/jquery.datetimepicker.css?2.0"/>
    <link rel="stylesheet" type="text/css" href="js/lib/wow/wow.css"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/js/lib/html5js/html5.js"></script>
    <![endif]-->
    <script type="text/javascript" src="js/lib/jquery/jquery-1.9.1.min.js"></script>
    <script src="js/lib/jquery/jquery.datetimepicker.js?2.0"></script>
    <!--日历-->
    <script src="js/lib/jquery/jquery.mouseslide.js"></script>
    <!-- 车辆滚动效果 -->
    <script src="js/lib/wow/wow.min.js"></script>
    <script src="js/lib/jcarousellite/jcarousellite.min.js"></script>
    <!-- 轮播 -->
    <script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.3&key=84604bca54a00e85a12baefb050a842c"></script>
    <script type="text/javascript" src="js/lib/bootstrap/bootstrap-modalmanager.js"></script>
    <!--弹窗的样式-->
    <script type="text/javascript" src="js/lib/bootstrap/bootstrap-modal.js"></script>
    <!--弹窗的样式-->
    <style>
        #inputAre .dark-tooltip {
            max-width: 400px;
        }
    </style>

<script src="js/local/include/tongji/hmt.js"></script>
<link rel="canonical" href="http://www.atzuche.com/">
</head>
<body>

 

<link rel="stylesheet" type="text/css" href="styles/base.css?v=20161117"/>
<!--格式样式-->
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<script type="text/javascript" src="web/g/js/config.js"></script>
<script>
        $(function () {
        	var system ={};  
            var p = navigator.platform;       
            system.win = p.indexOf("Win") == 0;  
            system.mac = p.indexOf("Mac") == 0;  
            system.x11 = (p == "X11") || (p.indexOf("Linux") == 0); 
            if(system.win||system.mac||system.xll){//如果是电脑
                //window.location.href="http://www.atzuche.com/"+projectName;  
            }else{  //如果是手机,跳转到谷歌
               	localStorage.setItem("source", "97");//97表示来源是SEO
                window.location.href="https://m.atzuche.com/?flag=seo";  
            }
        })
        
</script>
<!-- 
	百度统计JS代码
<script>
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?70c4ed0e4667fc151907f97fbb88d85d";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
</script>
 -->
<!-- 自动推送JS代码 -->
<script>
	(function(){
	    var bp = document.createElement('script');
	    var curProtocol = window.location.protocol.split(':')[0];
	    if (curProtocol === 'https'){
	   		bp.src = "https://zz.bdstatic.com/linksubmit/push.js";
	  	}else{
	  		bp.src = "http://push.zhanzhang.baidu.com/push.js";
	  	}
	    var s = document.getElementsByTagName("script")[0];
	    s.parentNode.insertBefore(bp, s);
	})();
</script>

<script type="text/javascript" src="js/local/common/userListDown.js"></script>
<script type="text/javascript" src="js/local/common/base.js"></script>
<script type="text/javascript" src="js/local/common/data-event.js"></script>



<!-- 聚合分析系统 全站流量统计代码 -->


<input type="hidden" data-key="memNo" value="">
<input type="hidden" data-key="nickName" value="">


    <script type="text/javascript" src="js/local/include/tongji/mvq.js"></script>



<!-- atzuche.com Baidu tongji analytics -->
<!-- 百度统计代码 -->

<!--注册代码-按钮-->
<!--全站代码（与注册代码-页面相斥）-->
<script type="text/javascript" src="js/local/include/tongji/agt.js"></script>

<div style="display: none;">
	<!-- cnzz统计 -->
	<script src="https://s95.cnzz.com/z_stat.php?id=1256812742&web_id=1256812742" type="text/javascript" ></script>
</div>

<!-- 统计 -->

<script type="text/javascript" src="js/local/common/placeholder.js"></script>
<script type="text/javascript" src="js/local/common/verification.js"></script>
<input type="hidden" data-key="tokenId" value="68ac817e-7761-48e3-9558-d5acc2d02aae">

<input type="hidden" data-key="contextPath" value="">
<input type="hidden" data-key="publicImage" value="http://at-images.oss-cn-hangzhou.aliyuncs.com">


<script src="js/local/include/header/event.js"></script>
<script src="js/local/include/header/style.js"></script>
<script src="js/local/include/header/index.js?v=20161117"></script>
<link rel="stylesheet" type="text/css" href="styles/common/header.css?201611101927">
<div id="alertDiv"></div>
<!-- <div id="moquu_special" class="moquu_special"><a target="_blank" href="http://m.vvipone.com/h5/driver/index.html">
    <div class="moquu_specialh"></div>
</a></div> -->
<!-- <div id="moquu_wxin" class="moquu_wxin"><a href="javascript:void(0)">
    <div class="moquu_wxinh"></div>
</a></div> -->
<div id="moquu_wshare" class="moquu_wshare"><a href="javascript:void(0)">
    <div class="moquu_wshareh"></div>
</a></div>

<input type="hidden" name="loginShare" id="inputShare" value="0">
<div id="moquu_wxin" class="moquu_wxin"  onclick="updateShare(1);"><a href="javascript:goToTop();" data-click="login">
    <div class="moquu_wxinh"></div>
</a></div> 


<div id="moquu_robot" class="moquu_robot"><a target="_blank" rel="nofollow" href="http://www.sobot.com/chat/pc/index.html?sysNum=b06aff117dc0448cbf89dd6cee36057e">
    <div class="moquu_roboth"></div>
</a></div>
<a id="moquu_top" href="javascript:goToTop();"></a>

<input type="hidden" data-key="cPath" value="">
<input type="hidden" id="globalCityAlias" value="sh" />
<input type="hidden" id="gloablCityCode" value="310100" />
<input type="hidden" id="gloablCityName" value="上海" />
<input type="hidden" id="gloablCityLat" value="31.243466" />
<input type="hidden" id="gloablCityLon" value="121.491121" />
<input type="hidden" id="gloablCityTel" value="021" />
<!--top start-->
<div class="top1">

    <div class="top_cn">
        <div class="top_logo">
        <h1>
            <a href="http://www.atzuche.com" style="margin-top: 10px">
                <img src="http://carphoto.atzuche.com/web/images/logo.png" alt="凹凸租车-logo" style="with:298px;height:52px;">
            </a>
         </h1>
        </div>

        <div class="categories">
            <div class="list location">
                <span id="citySelect" data-toggle="#cityItems" data-cookie="city_name">上海</span>
                
                <div id="cityItems" class="items" data-toggle="#cityItems">
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/sh" class="option active" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="sh" cityCode="310100" cityName="上海"
	                            cityLat="31.243466" cityLon="121.491121"
	                            cityTelPrefix="021">上海</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/nj" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="nj" cityCode="320100" cityName="南京"
	                            cityLat="32.057236" cityLon="118.778074"
	                            cityTelPrefix="025">南京</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/hz" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="hz" cityCode="330100" cityName="杭州"
	                            cityLat="30.259258" cityLon="120.219294"
	                            cityTelPrefix="0571">杭州</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/gz" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="gz" cityCode="440100" cityName="广州"
	                            cityLat="23.120049" cityLon="113.30765"
	                            cityTelPrefix="020">广州</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/sz" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="sz" cityCode="440300" cityName="深圳"
	                            cityLat="22.546054" cityLon="114.025974"
	                            cityTelPrefix="0755">深圳</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/bj" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="bj" cityCode="110100" cityName="北京"
	                            cityLat="39.914889" cityLon="116.403874"
	                            cityTelPrefix="010">北京</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/cq" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="cq" cityCode="500100" cityName="重庆"
	                            cityLat="29.544606" cityLon="106.530635"
	                            cityTelPrefix="023">重庆</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/hk" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="hk" cityCode="460100" cityName="海口"
	                            cityLat="20.022071" cityLon="110.330802"
	                            cityTelPrefix="0898">海口</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/qd" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="qd" cityCode="370200" cityName="青岛"
	                            cityLat="36.072358" cityLon="120.389445"
	                            cityTelPrefix="0532">青岛</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/cd" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="cd" cityCode="510100" cityName="成都"
	                            cityLat="30.576279" cityLon="104.071216"
	                            cityTelPrefix="028">成都</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/xa" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="xa" cityCode="610100" cityName="西安"
	                            cityLat="34.347436" cityLon="108.946306"
	                            cityTelPrefix="029">西安</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/sy" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="sy" cityCode="460200" cityName="三亚"
	                            cityLat="18.258217" cityLon="114.311831"
	                            cityTelPrefix="027">三亚</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/heb" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="heb" cityCode="230100" cityName="哈尔滨"
	                            cityLat="45.807781" cityLon="126.542417"
	                            cityTelPrefix="0451">哈尔滨</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/fs" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="fs" cityCode="440600" cityName="佛山"
	                            cityLat="23.027707" cityLon="113.128432"
	                            cityTelPrefix="0757">佛山</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/hhht" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="hhht" cityCode="150100" cityName="呼和浩特"
	                            cityLat="40.847461" cityLon="111.758518"
	                            cityTelPrefix="0471">呼和浩特</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/xm" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="xm" cityCode="350200" cityName="厦门"
	                            cityLat="24.485821" cityLon="118.095915"
	                            cityTelPrefix="0592">厦门</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/zz" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="zz" cityCode="410100" cityName="郑州"
	                            cityLat="34.753488" cityLon="113.631349"
	                            cityTelPrefix="0371">郑州</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/sr" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="sr" cityCode="361100" cityName="上饶"
	                            cityLat="28.460864" cityLon="117.950028"
	                            cityTelPrefix="0793">上饶</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/nc" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="nc" cityCode="360100" cityName="南昌"
	                            cityLat="28.687675" cityLon="115.864528"
	                            cityTelPrefix="0791">南昌</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/wh" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="wh" cityCode="420100" cityName="武汉"
	                            cityLat="30.687538" cityLon="114.369826"
	                            cityTelPrefix="027">武汉</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/wx" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="wx" cityCode="320200" cityName="无锡"
	                            cityLat="31.496704" cityLon="120.318954"
	                            cityTelPrefix="0510">无锡</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/xy" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="xy" cityCode="610400" cityName="咸阳"
	                            cityLat="34.335599" cityLon="108.715712"
	                            cityTelPrefix="029">咸阳</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/jn" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="jn" cityCode="370100" cityName="济南"
	                            cityLat="36.671627" cityLon="117.001319"
	                            cityTelPrefix="0531">济南</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/nt" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="nt" cityCode="320600" cityName="南通"
	                            cityLat="31.985237" cityLon="120.900301"
	                            cityTelPrefix="0513">南通</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/ty" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="ty" cityCode="140100" cityName="太原"
	                            cityLat="37.876885" cityLon="112.55706"
	                            cityTelPrefix="0351">太原</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/syg" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="syg" cityCode="210100" cityName="沈阳"
	                            cityLat="41.811339" cityLon="123.438973"
	                            cityTelPrefix="024">沈阳</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/dl" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="dl" cityCode="210200" cityName="大连"
	                            cityLat="38.919345" cityLon="121.621391"
	                            cityTelPrefix="0411">大连</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/suz" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="suz" cityCode="320500" cityName="苏州"
	                            cityLat="31.304566" cityLon="120.589613"
	                            cityTelPrefix="0512">苏州</a>
                            </h2>
                        </div>
                    
                    	<div class="option"  style="float: left;">
                    		<h2><a href="/ly" class="option" style="margin-right: 1px" data-click="changeCity"
	                            cityAlias="ly" cityCode="410300" cityName="洛阳"
	                            cityLat="34.624376" cityLon="112.460033"
	                            cityTelPrefix="0379">洛阳</a>
                            </h2>
                        </div>
                    
                    <!--
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    			href="http://sh.atzuche.com"                  
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="310100" cityName="上海"
                            cityLat="31.243466" cityLon="121.491121"
                            cityTelPrefix="021">上海</a></h2></div>                           
                    		<div class="option" style="float: right;"><h2><a                		
                    			href="http://nj.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="320100" cityName="南京"
                            cityLat="32.057236" cityLon="118.778074"
                            cityTelPrefix="025">南京</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://hz.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="330100" cityName="杭州"
                            cityLat="30.259258" cityLon="120.219294"
                            cityTelPrefix="0571">杭州</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://gz.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="440100" cityName="广州"
                            cityLat="23.120049" cityLon="113.30765"
                            cityTelPrefix="020">广州</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://sz.atzuche.com" 	
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="440300" cityName="深圳"
                            cityLat="22.546054" cityLon="114.025974"
                            cityTelPrefix="0755">深圳</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://bj.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="110100" cityName="北京"
                            cityLat="39.914889" cityLon="116.403874"
                            cityTelPrefix="010">北京</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://cq.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="500100" cityName="重庆"
                            cityLat="29.544606" cityLon="106.530635"
                            cityTelPrefix="023">重庆</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://hk.atzuche.com"          
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="460100" cityName="海口"
                            cityLat="20.022071" cityLon="110.330802"
                            cityTelPrefix="0898">海口</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://qd.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="370200" cityName="青岛"
                            cityLat="36.072358" cityLon="120.389445"
                            cityTelPrefix="0532">青岛</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://cd.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="510100" cityName="成都"
                            cityLat="30.576279" cityLon="104.071216"
                            cityTelPrefix="028">成都</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://xa.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="610100" cityName="西安"
                            cityLat="34.347436" cityLon="108.946306"
                            cityTelPrefix="029">西安</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://sy.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="460200" cityName="三亚"
                            cityLat="18.258217" cityLon="109.518646"
                            cityTelPrefix="0899">三亚</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://heb.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="230100" cityName="哈尔滨"
                            cityLat="45.807781" cityLon="126.542417"
                            cityTelPrefix="0451">哈尔滨</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://fs.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="440600" cityName="佛山"
                            cityLat="23.027707" cityLon="113.128432"
                            cityTelPrefix="0757">佛山</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://hhht.atzuche.com" 
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="150100" cityName="呼和浩特"
                            cityLat="40.847461" cityLon="111.758518"
                            cityTelPrefix="0471">呼和浩特</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://xm.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="350200" cityName="厦门"
                            cityLat="24.485821" cityLon="118.095915"
                            cityTelPrefix="0592">厦门</a></h2></div>
                    		<div class="option"  style="float: left;"><h2><a
                    			href="http://zz.atzuche.com" 
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="410100" cityName="郑州"
                            cityLat="34.753488" cityLon="113.631349"
                            cityTelPrefix="0371">郑州</a></h2></div>
                    		<div class="option" style="float: right;"><h2><a
                    			href="http://sr.atzuche.com" 
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="361100" cityName="上饶"
                            cityLat="28.460864" cityLon="117.950028"
                            cityTelPrefix="0793">上饶</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    			href="http://nc.atzuche.com" 
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="360100" cityName="南昌"
                            cityLat="28.687675" cityLon="115.864528"
                            cityTelPrefix="0791">南昌</a></h2></div>
                            
                    	
                    
                    		
                    	
                    		<div class="option" style="float: right;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="420100" cityName="武汉"
                            cityLat="30.687538" cityLon="114.369826"
                            cityTelPrefix="027">武汉</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="320200" cityName="无锡"
                            cityLat="31.496704" cityLon="120.318954"
                            cityTelPrefix="0510">无锡</a></h2></div>
                            
                    	
                    
                    		
                    	
                    		<div class="option" style="float: right;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="370100" cityName="济南"
                            cityLat="36.671627" cityLon="117.001319"
                            cityTelPrefix="0531">济南</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="320600" cityName="南通"
                            cityLat="31.985237" cityLon="120.900301"
                            cityTelPrefix="0513">南通</a></h2></div>
                            
                    	
                    
                    		
                    	
                    		<div class="option" style="float: right;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="140100" cityName="太原"
                            cityLat="37.876885" cityLon="112.55706"
                            cityTelPrefix="0351">太原</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="210100" cityName="沈阳"
                            cityLat="41.811339" cityLon="123.438973"
                            cityTelPrefix="024">沈阳</a></h2></div>
                            
                    	
                    
                    		
                    	
                    		<div class="option" style="float: right;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="210200" cityName="大连"
                            cityLat="38.919345" cityLon="121.621391"
                            cityTelPrefix="0411">大连</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="320500" cityName="苏州"
                            cityLat="31.304566" cityLon="120.589613"
                            cityTelPrefix="0512">苏州</a></h2></div>
                            
                    	
                    
                    		
                    	
                    		<div class="option" style="float: right;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="410300" cityName="洛阳"
                            cityLat="34.624376" cityLon="112.460033"
                            cityTelPrefix="0379">洛阳</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="120100" cityName="天津"
                            cityLat="39.090908" cityLon="117.205914"
                            cityTelPrefix="022">天津</a></h2></div>
                            
                    	
                    
                    		
                    	
                    		<div class="option" style="float: right;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="441900" cityName="东莞"
                            cityLat="23.026997" cityLon="113.758231"
                            cityTelPrefix="0769">东莞</a></h2></div>
                        
                    
                    		
                    		<div class="option"  style="float: left;"><h2><a
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                    		
                            class="option" style="margin-right: 1px" data-click="changeCity"
                            cityCode="350100" cityName="福州"
                            cityLat="26.080447" cityLon="119.302938"
                            cityTelPrefix="0591">福州</a></h2></div>
                            
                    	
                    
                    -->
                </div>
            </div>
            <div class="list">
                <a href="http://www.atzuche.com" class="tab">首页</a>
                
                <div class="list down" data-toggle="#selectorItems">
	                <span class="glyphicon-menu-down">自驾短租</span>
	                <div id="selectorItems" class="items table" data-toggle="#selectorItems">
	                    
	                    <div class="option"><a href="sh/rentCarWeb" rel="nofollow" style="float: left;padding-right: 5px;">一键租车</a>
	                    <img src="http://carphoto.atzuche.com/web/images/index/header/new.png" style="with:29px;height:14px;margin-top: 3px;" alt="凹凸租车-一键租车"></div><br/>
	                    <div class="option"><a href="sh/car/search">精准找车</a></div><br/>
	                    <div class="option"><a href="sh/act/channel/S001">自驾出游</a></div><br/>
	                    <div class="option"><a href="sh/act/channel/S002">商务接待</a></div><br/>
	                    <div class="option"><a href="sh/act/channel/S003">约会</a></div><br/>
	                    <div class="option"><a href="sh/act/channel/S004" rel="nofollow">体验不同车</a></div>
	                </div>
                </div>
                <a href="sh/changzu" class="tab" target="_blank">超值长租<img src="http://carphoto.atzuche.com/web/images/index/header/new.png" style="with:29px;height:14px;margin-top: -5px;float: right;"></a> 
                <a href="http://www.atzuche.com/carUplod/init" rel="nofollow" class="tab">上传车辆</a> 
                <div class="list down"  data-toggle="#helpItems">
				<span class="glyphicon-menu-down">帮助</span>

                <div id="helpItems" class="items table" data-toggle="#helpItems">
                    <div class="option"><a href="http://www.atzuche.com/platformWeb" target="_blank" rel="nofollow">平台规则</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/rentalProcess" target="_blank" rel="nofollow">租车流程</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/ownerIndroWeb" target="_blank" rel="nofollow">车主帮助</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/renterIndroWeb" target="_blank" rel="nofollow">租客帮助</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/safeItemWeb" target="_blank" rel="nofollow">保险条款</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/safeItemWebDetail" target="_blank" rel="nofollow">保险细则</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/vipServiceWeb" target="_blank" rel="nofollow">服务协议</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/secretWeb" target="_blank" rel="nofollow">隐私协议</a></div><br/>
                    <div class="option"><a class="option" href="http://www.atzuche.com/ownerDutyLawWeb" target="_blank" rel="nofollow">车主责任和法律解读</a></div>
                </div>
                
            </div>
            </div>

            
            <div class="list downw"  data-toggle="#moquu_wxinh">
				<span class="glyphicon-menu-down" data-toggle="#moquu_wxinh">下载APP</span>

                <div id="moquu_wxinh"  data-toggle="#moquu_wxinh">
                    <div class="moquu_wxinh"></div>
                </div>
                
            </div>
                <div class="list right">
                    <a class="btn-header btn-header-inverse" rel="nofollow" href="/mem/regist/start">注册</a>
                    <a class="btn-header" rel="nofollow" data-click="login">登录</a>
                </div>
                

<script type="text/javascript">
    (function () {
        _fmOpt = {
            partner: 'atzuche',
            appName: 'atzuche_web',
            token: "68ac817e-7761-48e3-9558-d5acc2d02aae"
        };
        var cimg = new Image(1, 1);
        cimg.onload = function () {
            _fmOpt.imgLoaded = true;
        };
        cimg.src = "https://fp.fraudmetrix.cn/fp/clear.png?partnerCode=atzuche&appName=atzuche_web&tokenId=" + _fmOpt.token;
        var fm = document.createElement('script');
        fm.type = 'text/javascript';
        fm.async = true;
        fm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.fraudmetrix.cn/fm.js?ver=0.1&t=' + (new Date().getTime() / 3600000).toFixed(0);
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(fm, s);
    })();
</script>
            
            

        </div>


    </div>
</div>


<!--top end-->
<div id="bgdiv01" onclick="javascript:chide01();"></div>
<div id="cndiv01">

    <div class="text_div01">

    </div>

</div>


<div id="bgdiv" onclick="javascript:chide();"></div>
<div id="cndiv">

    <div class="text_div">
        <table width="300" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC">
            <tr>
                <td bgcolor="#E9E9E9">
                    <div class="close"><img src="http://carphoto.atzuche.com/web/image/denglu01.jpg" width="294" height="44" alt="凹凸租车-登陆"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#F7F7F7">
                    <table width="270" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table width="270" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="60" colspan="2" align="left"><input name="textfield2" type="text"
                                                                            placeholder="手机号码" data-placeholder="手机号码"
                                                                            style="width:250px;font-family:'微软雅黑', Arial; font-size:14px;"
                                                                            class="form-control" id="acountLogin"
                                                                            maxlength="20" data-toggle="tooltip"
                                                                            data-title="请输入手机号码"
                                                                            data-placement="bottom"/>
                            </td>
                        </tr>
                        <tr>
                            <td height="60" colspan="2" align="left"><input name="textfield" type="password"
                                                                            placeholder="请输入密码" data-placeholder="请输入密码"
                                                                            style="width:250px;font-family:'微软雅黑', Arial; font-size:14px;"
                                                                            class="form-control" id="passwordLogin"
                                                                            maxlength="20" data-toggle="tooltip"
                                                                            data-title="请输入密码"
                                                                            data-placement="bottom"/>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" align="left" valign="middle">
                                <span style="font-family:'微软雅黑', Arial; font-size:14px;color: #f44;"
                                      id="loginErrorMsg"></span></td>
                            <td height="30" align="right" width="66" class="oneself_17"
                                style="font-family:'微软雅黑', Arial; font-size:14px; cursor: pointer;"
                                onclick="window.location.href='/mem/forgetPas'">忘记密码?
                            </td>
                        </tr>
                        <tr>
                            <td height="60" colspan="2">
                                <ul class="nav nav-pills03 nav-stacked" style="width:270px;">
                                    <li class="active"><a href="javascript:void(0)" id="loginButton"
                                                          onclick="submitLogin(this);" status="0"
                                                          style="background:#00d21e; height:24px;line-height:24px; color:#fff;font-size:18px;">登
                                        录</a></li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="40" align="left" bgcolor="#F7F7F7"><span class="oneself_16"
                                                                     style="font-family:'微软雅黑', Arial; font-size:14px;">　还没加入凹凸租车？</span>　<span
                        class="oneself_17"
                        style="font-family:'微软雅黑', Arial; font-size:14px;color:#00d21e; cursor: pointer;"
                        onclick="jsOpenNewWindow('/mem/regist/start')">注册</span></td>
            </tr>
        </table>
    </div>

</div>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/lib/jquery/jquery.mouseslide.js"></script>
<!-- 车辆滚动效果 -->
<script src="js/local/common/banner.js"></script>
<!-- banner-->
<link rel="stylesheet" type="text/css" href="css/index/index0121.css?201510221823"/>
<script src="js/lib/jquery/jquery.datetimepicker.js?2.0"></script>
<!--日历-->
<script type="text/javascript" src="js/lib/simpletooltip/simpletooltip.min.js"></script>
<link rel="stylesheet" href="js/lib/dropkickSelect/dropkickSelect.css" type="text/css">
<!--下拉选择框-->
<script src="js/lib/dropkickSelect/jquery.dropkick-min.js" type="text/javascript"></script>
<!--下拉选择框-->
<link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<!--图标样式-->
<link rel="stylesheet" type="text/css" href="js/lib/dropkickSelect/darktooltip.min.css"/>
<link rel="stylesheet" type="text/css" href="js/lib/picSuperSlide/css/SYTLE.css?201507141049"/>
<script type="text/javascript" src="js/lib/picSuperSlide/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/lib/dropkickSelect/jquery.darktooltip.min.js"></script>
<script type="text/javascript" charset="utf-8" src="js/local/index/index/drop_down.js">//下拉框js</script>
<!--tab start-->
<!--maodian start-->
<input type="hidden" data-key="isLogin" value="false">
<input type="hidden" data-key="contextPath" value="">

<script type="text/javascript" src="js/local/index/index/core.js?v=20161117"></script>
<!-- 头部结束 -->
<!-- banner开始 -->
<div class="banner" id="bannerId" style="margin-top: -10px;">
    <div class="banner_show" id="banner_show">
       
 		<a href="/car/search" target="_blank" rel="nofollow"  class="bannger_inbox"><img
                src="http://carphoto.atzuche.com/web/images/index/index/ban05.jpg" width="1920" height="500" alt="告别传统 租私家车出行"></a>
        <a href="javascript:;" onclick="goToStar();" class="bannger_inbox"><img
                src="http://carphoto.atzuche.com/web/images/index/index/ban13.jpg?201507101630" width="1920" height="500" alt="不持有生活 汽车共享"></a>
        <a href="/act/letter" target="_blank" class="bannger_inbox"><img
                src="http://carphoto.atzuche.com/web/images/index/index/ban03.jpg" width="1920" height="500" alt="租车五大保障"></a>
        <a href="/safeItemWeb" target="_blank" class="bannger_inbox"><img
                src="http://carphoto.atzuche.com/web/images/index/index/ban02.jpg" width="1920" height="500" alt="205万定制车险，租车再无后顾之忧"></a>

     	
                
         <a href="/changzu" target="_blank" class="bannger_inbox"><img
                src="http://carphoto.atzuche.com/web/images/index/index/ban20.jpg?160825" width="1920" height="500" alt="超值长租"></a>
      
     
        <div class="banner_pre_next">
            <a href="javascript:;" class="banner_btn_left"><div style="width: 60px;height: 60px;background: url(http://carphoto.atzuche.com/web/images/index/index/bntLeft.png) repeat;background-size: 100%;"></div></a>

            <a href="javascript:;" class="banner_btn_right"><div style="width: 60px;height: 60px;background: url(http://carphoto.atzuche.com/web/images/index/index/bntRight.png) repeat;background-size: 100%;"></div></a>
        </div>
    </div>
    <div id="content_search" onclick="searchCar();">
        <div class="search">
            <div id="mapHidden" style="display: none;"></div>
		              <span id="inputAre" data-tooltip="输入取车位置,凹凸为您提供精准车辆推荐哦!"
                            style="display:-moz-inline-box; display:inline-block;margin-right: -4px;">
	              	  <!-- <input name="key" lat="0" lng="0" id="keyword" type="text"  onkeyup="autoSearch(1);" 
                             class="search3" data-placeholder="想在哪里租车"
                             onfocus="if (value !=''){autoSearch(1);}"/> -->
                             
                           <input name="key" lat="0" lng="0" id="keyword" type="text"  readonly="ture"
                           class="search3" data-placeholder="想在哪里租车"
                           onfocus="if (value !=''){autoSearch(1);}"/>
		              </span>
		              <span id="datetimepickerDiv" data-tooltip="请先选择取车时间"
                            style="display:-moz-inline-box;display:inline-block;border-left: 1px #cccccc solid;margin-right: -4px;">
		              <!-- <input name="key"  id="datetimepicker"  type="text" readonly="ture" class="search1"
                             data-placeholder="取车时间"/> -->
                             <input name="key"   type="text" readonly="ture" class="search1"
                             data-placeholder="取车时间"/>
		              </span>
		              <span style="display:-moz-inline-box; display:inline-block;margin-right: -4px;border-left: 1px #cccccc solid;">
		              <!-- <input name="key" id="datetimepicker1" type="text" readonly="ture" class="search1"
                             data-placeholder="还车时间"/> -->
                             <input name="key"  type="text" readonly="ture" class="search1"
                             data-placeholder="还车时间"/>
		              </span>
		              <span style="display:-moz-inline-box; display:inline-block;border-left: 1px #cccccc solid;">
		              <!-- <input id="searchDiv" style="outline: none;" name="Input" type="submit"
                             onclick="searchCarSubmit();" class="search2" value="搜 索"/> -->
                       <input id="searchDiv" style="outline: none;" name="Input" type="submit"
                        class="search2" value="搜 索"/>
	          		  </span>
        </div>
    </div>
</div>
<div id="keywordResult" name="result1" pageNum="1"
     style="background-color: #FFFFFF; width: 300px;z-index:9999; border: 1px solid #01D21E;display: none; position: absolute; border-radius: 4px; overflow: visible;"></div>
<!-- banner结束 -->
<!-- 推荐车辆 -->
<div class="recommend_car">
    <div class="recommend_car_content">
      <div class="mouseslider">
		   
      <a href="/car/reDetail/546789333" target="_blank" alt="奥迪A4L"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/16/05/546789333/1463376553667.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市徐汇区斜土路2899甲号</span><br/><p class='dangw'>自动</p><p class='chep'>沪M*6</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>308/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>308</span>&nbsp;元/今日<br/>奥迪&nbsp;A4L<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(19)</p></div></h5></a><a href="/car/reDetail/935622775" target="_blank" alt="雷克萨斯CT"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/15/04/935622775/1451274846140.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市浦东新区博大汽车公园</span><br/><p class='dangw'>自动</p><p class='chep'>沪A*6</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>350/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>350</span>&nbsp;元/今日<br/>雷克萨斯&nbsp;CT<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(89)</p></div></h5></a><a href="/car/reDetail/997816352" target="_blank" alt="菲亚特500(进口)"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/14/07/997816352/1419499856155.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市长宁区泰安路120弄附近</span><br/><p class='dangw'>自动</p><p class='chep'>沪G*3</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>250/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>250</span>&nbsp;元/今日<br/>菲亚特&nbsp;500(进口)<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(187)</p></div></h5></a><a href="/car/reDetail/417560371" target="_blank" alt="沃尔沃V60(进口)"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/15/09/417560371/1442640586333.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市杨浦区国权路政仁路</span><br/><p class='dangw'>自动</p><p class='chep'>甘E*1</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>229/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>229</span>&nbsp;元/今日<br/>沃尔沃&nbsp;V60(进口)<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(14)</p></div></h5></a><a href="/car/reDetail/137161617" target="_blank" alt="宝马3系(进口)"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/16/09/137161617/1475918229369.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市徐汇区肇嘉浜路与岳阳路路口好望角大酒店停车场</span><br/><p class='dangw'>自动</p><p class='chep'>沪K*5</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>320/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>320</span>&nbsp;元/今日<br/>宝马&nbsp;3系(进口)<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(21)</p></div></h5></a><a href="/car/reDetail/969259269" target="_blank" alt="大众甲壳虫(进口)"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/14/11/969259269/1428483157861.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市徐汇区龙华西路1号</span><br/><p class='dangw'>自动</p><p class='chep'>沪K*9</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>291/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>291</span>&nbsp;元/今日<br/>大众&nbsp;甲壳虫(进口)<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(66)</p></div></h5></a><a href="/car/reDetail/366413149" target="_blank" alt="大众POLO"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/15/09/366413149/1441863521565.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市松江区涞亭北路99弄1-226号上海奥林匹克花园南区</span><br/><p class='dangw'>自动</p><p class='chep'>沪A*5</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>128/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>128</span>&nbsp;元/今日<br/>大众&nbsp;POLO<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(15)</p></div></h5></a><a href="/car/reDetail/646379902" target="_blank" alt="奥迪TT(进口)"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/15/06/646379902/1433487656051.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市普陀区曹杨路地铁站3号线/4号线/11号线</span><br/><p class='dangw'>自动</p><p class='chep'>苏F*Y</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>428/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>428</span>&nbsp;元/今日<br/>奥迪&nbsp;TT(进口)<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(25)</p></div></h5></a><a href="/car/reDetail/252314148" target="_blank" alt="宝马5系"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/15/08/252314148/1440918120155.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市普陀区铜川路50号</span><br/><p class='dangw'>自动</p><p class='chep'>苏F*Z</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>599/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>599</span>&nbsp;元/今日<br/>宝马&nbsp;5系<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(7)</p></div></h5></a><a href="/car/reDetail/995530974" target="_blank" alt="大众尚酷(进口)"><h5><img width='272' height='190' src='http://at-images.oss-cn-hangzhou.aliyuncs.com/car/15/09/995530974/1442211054327.jpg'/><div class='mod_maskBar'><div class='left'><span style='font-size: 14px;' ><i class='icon-map-marker'></i>&nbsp;上海市宝山区</span><br/><p class='dangw'>自动</p><p class='chep'>苏A*3</p></div><div class='right'><span style='font-size: 14px; float: right; margin-top: 10px;'>今日</span><span style='font-size:23px; color:#00d21e; float: right;'>349/</span><span style='font-size: 16px; float: right; margin-top: 3px;'>￥</span></div></div><div class='mod_maskBarhover'><span style='font-size:34px;font-style:italic'>349</span>&nbsp;元/今日<br/>大众&nbsp;尚酷(进口)<p><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i><i class='icon-star font_g font_14' style='margin-right: 2px;'></i>(36)</p></div></h5></a>
        </div>
    </div>
</div>
<!-- 推荐车辆结束 -->
<!-- 发现精彩 -->
<div align="center">
    <div class="thosen" style="padding-top:85px">
        

        <p class="details">精于用车之道，乐在租车至选</p>

        <div class="tips">
        <h4>
            <a href="sh/act/channel/S001" data-explain="自驾出游" name="S001">
                <div id="tip1" class="tip tip-1" data-link="sh/act/channel/32">
                    <div class="content" data-show-with="#tip1"></div>
                    <div class="text" data-toggle-active="#tip1"></div>
                </div>
            </a>
        </h4>
            <a href="sh/rentCarWeb" data-explain="一键租车" rel="nofollow" >
                <div id="tip3" class="tip tip-1 ">
                    <div class="content" data-show-with="#tip3"></div>
                    <div class="text" data-toggle-active="#tip3"></div>
                </div>
            </a>
         <h4>
            <a href="sh/act/channel/S003" data-explain="约会">
                <div id="tip4" class="tip tip-1 last">
                    <div class="content" data-show-with="#tip4"></div>
                    <div class="text" data-toggle-active="#tip4"></div>
                </div>
            </a>
         </h4>
            <a href="sh/act/channel/S004" data-explain="体验不一样的车" rel="nofollow" >
                <div id="tip5" class="tip tip-1 ">
                    <div class="content" data-show-with="#tip5"></div>
                    <div class="text" data-toggle-active="#tip5"></div>
                </div>
            </a>
        <h4>
            <a href="sh/act/channel/S002" data-explain="商务接待">
                <div id="tip6" class="tip tip-1 ">
                    <div class="content" data-show-with="#tip6"></div>
                    <div class="text" data-toggle-active="#tip6"></div>
                </div>
            </a>
        </h4>
            <a href="sh/changzu" data-explain="婚车">
                <div id="tip8" class="tip tip-1 last">
                    <div class="content" data-show-with="#tip8"></div>
                    <div class="text" data-toggle-active="#tip8">
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>


<!-- 发现精彩结束 -->
<!-- 凹凸租车是谁 -->
<div class="about_aotuzuche" style="height: 852px;">

    <div class="Media wow bounceInUp" data-wow-duration="3s" style="height: 552px;">
        <div class="Media_tit" style="padding-top: 55px;padding-bottom: 25px;text-align: center;">携手凹凸租车，开启不持有生活</div>
        <div class="Media_link">

            <div class="foucebox">
                <div class="hd">
                    <ul>

                        <li class="hdli"><a href="javascript:void(0)"  name="qcgx"><img
                                src="http://carphoto.atzuche.com/web/images/index/index/star_13.jpg?201507141041" alt="凹凸租车-汽车共享张靓颖篇"><span
                                class="mask"></span></a></li>

                        <li class="hdli"><a href="javascript:void(0)"><img
                                src="http://carphoto.atzuche.com/web/images/index/index/Super-star_07.jpg?201507141041" alt="凹凸租车-汽车共享徐小平篇"><span
                                class="mask"></span></a></li>


                        <li class="hdli"><a href="javascript:void(0)"><img
                                src="http://carphoto.atzuche.com/web/images/index/index/star_02.jpg?201507141041" alt="凹凸租车-汽车共享江一燕篇"><span class="mask"></span></a></li>
                        <li class="hdli" style="height: 134px;"><a href="javascript:void(0)" style="height: 134px;"><img
                                src="http://carphoto.atzuche.com/web/images/index/index/star_03.jpg?201507141041" alt="凹凸租车-汽车共享程雷篇" style="height: 134px;"><span
                                class="mask" style="height: 134px;"></span></a></li>
                        <li class="hdli" style="height: 134px;"><a href="javascript:void(0)"  rel="nofollow" style="height: 134px;"><img
                                src="http://carphoto.atzuche.com/web/images/index/index/star_04.jpg?201607141041" alt="凹凸租车-汽车共享蔡志松篇" style="height: 134px;" ><span
                                class="mask" style="height: 134px;"></span></a></li>
                        <li class="hdli" style="height: 134px;"><a href="javascript:void(0)" style="height: 134px;"><img
                                style="height: 134px;"
                                src="http://carphoto.atzuche.com/web/images/index/index/psy_05.jpg?201507141041" alt="凹凸租车-汽车共潘石屹篇"><span class="mask"
                                                                                         style="height: 134px;"></span></a>
                        </li>
                        <li class="hdli"><a href="javascript:void(0)" style="height: 134px;"><img
                                style="height: 134px;"
                                src="http://carphoto.atzuche.com/web/images/index/index/lqy_06.jpg?201507141041" alt="凹凸租车-汽车共享刘清扬篇"><span
                                class="mask" style="height: 134px;"></span></a></li>

                        <li class="hdli" style="height: 134px;"><a href="javascript:void(0)" style="height: 134px;"><img
                                style="height: 134px;"
                                src="http://carphoto.atzuche.com/web/images/index/index/Super-star_08.jpg?201507141041" alt="凹凸租车-汽车共享曹启泰篇"><span style="height: 134px;"
                                                                                                class="mask"></span></a>
                        </li>

                        <li style="height: 134px;"><a href="javascript:void(0)" style="height: 134px;"><img
                                style="height: 134px;"
                                src="http://carphoto.atzuche.com/web/images/index/index/Super-star_01.jpg?201507141041" alt="凹凸租车-汽车共享陆毅篇"><span
                                class="mask" style="height: 134px;"></span></a>
                        </li>

                        
                        
                        
                        
                        
                        
                    </ul>
                </div>


                <div class="bd">

                    <div class="showDiv"><a href="/mediaPlay/XOTY1NDA1Njky" target="_blank"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/star_zly_13.jpg" alt="凹凸租车-汽车共享张靓颖篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2><a href="javascript:void(0)">汽车共享&nbsp;<span style="font-size: 25px;">·</span>&nbsp;张靓颖篇</a>
                            </h2>
                        </div>
                    </div>


                    <div class="showDiv"><a href="/mediaPlay/XOTMzODQ3MTEy" target="_blank"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/xxp_7.jpg" alt="凹凸租车-汽车共享徐小平篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2><a href="javascript:void(0)">汽车共享&nbsp;<span style="font-size: 25px;">·</span>&nbsp;徐小平篇</a>
                            </h2>
                        </div>
                    </div>


                    <div class="showDiv"><a href="javascript:void(0)"
                                            onclick="jsOpenNewWindow('/mediaPlay/XODkxOTIwNjQ0')"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/star_2.jpg" alt="凹凸租车-汽车共享江一燕篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2 style="bottom: 10px;"><a href="javascript:void(0)">汽车共享&nbsp;<span
                                    style="font-size: 25px;">·</span>&nbsp;江一燕篇</a></h2>
                        </div>
                    </div>
                    <div class="showDiv"><a href="javascript:void(0)"
                                            onclick="jsOpenNewWindow('/mediaPlay/XODk0NDQzNTU2')"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/star_3.jpg" alt="凹凸租车-汽车共享程雷篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2 style="bottom: 10px;"><a href="javascript:void(0)">汽车共享&nbsp;<span
                                    style="font-size: 25px;">·</span>&nbsp;程雷篇</a></h2>
                        </div>
                    </div>
                    <div class="showDiv"><a href="javascript:void(0)" rel="nofollow" 
                                            onclick="jsOpenNewWindow('/mediaPlay/XOTAwNjQwMjA0')"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/star_4.jpg" alt="凹凸租车-汽车共享蔡志松篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2><a href="javascript:void(0)">汽车共享&nbsp;<span style="font-size: 25px;">·</span>&nbsp;蔡志松篇</a>
                            </h2>
                        </div>
                    </div>
                    <div class="showDiv"><a href="javascript:void(0)"
                                            onclick="jsOpenNewWindow('/mediaPlay/a01489gk4z4')"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/psy_5.jpg" alt="凹凸租车-汽车共享潘石屹篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2><a href="javascript:void(0)">汽车共享&nbsp;<span style="font-size: 25px;">·</span>&nbsp;潘石屹篇</a>
                            </h2>
                        </div>
                    </div>
                    <div class="showDiv"><a href="javascript:void(0)"
                                            onclick="jsOpenNewWindow('/mediaPlay/XOTEwNDY0MDQw')"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/lqy_6.jpg" alt="凹凸租车-汽车共享刘清扬篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2><a href="javascript:void(0)">汽车共享&nbsp;<span style="font-size: 25px;">·</span>&nbsp;刘清扬篇</a>
                            </h2>
                        </div>
                    </div>

                    <div class="showDiv"><a href="/mediaPlay/XOTE2MDg2MjIw" target="_blank"><img
                            src="http://carphoto.atzuche.com/web/images/index/index/cqt_8.jpg" alt="凹凸租车-汽车共享曹启泰篇"></a>

                        <div class="foucebox_bg"></div>
                        <div>
                            <h2><a href="#">汽车共享&nbsp;<span style="font-size: 25px;">·</span>&nbsp;曹启泰篇</a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="border:5px solid #EAEAEA;width: 700px;height: 170px;margin: 50px auto;padding: 15px 20px;font-size: 14px;">
        <div style="font-size: 30px;margin-left: 220px;margin-top: -50px;padding: 5px 20px;background: #FFFFFF;line-height: 50px;position: absolute;z-index: 13;">
            凹凸租车是谁?
        </div>
        <div style="margin-top: 30px;">
            <div><p style="line-height: 25px;font-size: 14px;margin-top: -15px;"><span
                    style="font-size: 18px;font-weight: bold;color: #00A0FF;">凹凸租车</span>率先将“车共享”理念带入中国。平台凭借优质的服务让车主安心将自己的闲置车辆通过平台租<br/>给他人使用；租客拥有更为丰富的车型选择，并且能够使用车况更好的车辆。<br/>
            </p>

                <p style="line-height: 35px;font-size: 14px;">平台车辆超高性价比，平均租金低于市场价30%-50%，车型数量远远大于传统市场。<br/></p>

                <p style="line-height: 25px;font-size: 14px;">在凹凸租车的平台上，车主和租客不仅是承租双方的交易关系，双方将诚实互信、丰富体验、社会责任都建立<br/>在共享精神之上，创建一种更为高尚的人际关系。
                </p>
            </div>

        </div>
        <a href="/knowUs/0" target="_blank" rel="nofollow" 
           style="float: right; font-size: 14px; text-decoration: none; ">了解更多></a>
    </div>
</div>
<!-- 凹凸租车是谁结束 -->
<!-- 安全承诺-->
<div class="security">
    <span style="font-size: 30px; font-weight: bold;">安全承诺</span><br/>
    <span>凹凸租车倾尽全力，保障租车过程全无后顾之忧</span>
</div>
<div class="security1">
    <div class="security_zk" data-wow-duration="1s">
        <span style="font-size: 30px; font-weight: bold; color: #00d21e;">我是租客</span><br/>
        <span>有效的安全保障，在此租车，我放心</span>
    </div>
    <div class="security_zkc1">
        <li class="wow bounceInLeft" data-wow-duration="2s">
            <div style=" width: 100%; height: 100px; background: url(http://carphoto.atzuche.com/web/images/index/index/index_11.png) no-repeat  center;"></div>
            <div style="width: 100%; height: 36px;font-size: 20px; color: #00d21e; list-style: 36px;">提供全方位保险</div>
            <span>太平洋保险战略合作凹凸租车<br/>租客和车主无需承担保险范围内任何费用，<br/>车管家全权负责处理<br/>租车领域首创重大事故专享补贴</span>
        </li>
        <li data-wow-duration="2s">
            <div style=" width: 100%; height: 100px; background: url(http://carphoto.atzuche.com/web/images/index/index/index_e_ig_09.png) no-repeat  center;"></div>
            <div style="width: 100%; height: 36px;font-size: 20px; color: #00d21e; list-style: 36px;">车的标准与评论</div>
            <span>车辆的信息和所有证照齐全且有效<br/>车辆行驶公里数不超过20万公里<br/>车辆保留每次保养纪录并及时上传<br/>车辆每次出租后，租客均及时对车辆状况做出评价</span>
        </li>
        <li class="wow bounceInRight" data-wow-duration="2s">
            <div style=" width: 100%; height: 100px; background: url(http://carphoto.atzuche.com/web/images/index/index/index_e_ig_16.png) no-repeat  center;"></div>
            <div style="width: 100%; height: 36px;font-size: 20px; color: #00d21e; list-style: 36px;">24 X 7客户支持和道路援助
            </div>
            <span>凹凸租车客服电话时刻为你接通<br/>除了事故救援外还提供免费的非事故道路救援，<br/>任何需要一呼即应独有的金钥匙一站式理赔服务。<br/>核损，理赔全程无忧，代你搞定</span>
        </li>
    </div>
    <div class="security_zk" data-wow-duration="1s">
        <span style="font-size: 30px; font-weight: bold; color: #00a0ff;">我是车主</span><br/>
        <span>完善的租车体系，把车交给平台，我安心</span>
    </div>
    <div class="security_zkc1">
        <li class="wow bounceInLeft" data-wow-duration="2s">
            <div style=" width: 100%; height: 100px; background: url(http://carphoto.atzuche.com/web/images/index/index/index_12.png) no-repeat  center;"></div>
            <div style="width: 100%; height: 36px;font-size: 20px; color: #00a0ff; list-style: 36px;">提供全方位保险</div>
            <span>太平洋保险战略合作凹凸租车<br/>租客和车主无需承担保险范围内任何费用，<br/>车管家全权负责处理<br/>租车领域首创重大事故专享补贴</span>
        </li>
        <li data-wow-duration="2s">
            <div style=" width: 100%; height: 100px; background: url(http://carphoto.atzuche.com/web/images/index/index/index_e_ig_11.png) no-repeat  center;"></div>
            <div style="width: 100%; height: 36px;font-size: 20px; color: #00a0ff; list-style: 36px;">严格的认证制度</div>
            <span>与国家身份信息机构联网，认证租客的身份<br/>在交易前累计扣分不超过11分<br/>租客为18岁以上无不良犯罪纪录<br/>车主对租客具有完备的评价体系，且时时更新</span>
        </li>
        <li class="wow bounceInRight" data-wow-duration="2s">
            <div style=" width: 100%; height: 100px; background: url(http://carphoto.atzuche.com/web/images/index/index/index_e_ig_19.png) no-repeat  center;"></div>
            <div style="width: 100%; height: 36px;font-size: 20px; color: #00a0ff; list-style: 36px;">
                AT-box定位系统，租车全程尽在掌控
            </div>
            <span>为所有车辆免费安装凹凸租车智能车联网AT-box终端，<br/>精准定位车辆，随时掌控车辆信息。<br/>行程全掌握，爱车共享无忧</span>
        </li>
    </div>
</div>
<div class="index_calculator wow bounceInUp" data-wow-duration="3s">
    <div class="index_calculatortit">
        <p style="font-size: 28px; font-weight: bold; ">车主收益计算器</p>

        <p style="font-size:16px;margin-top: 5px;">让你的车为你赚钱咯</p>
    </div>
    <div class="index_calculatorcon">
        <div class="index_calculatorconl2">
            <p style="float: left;font-size: 18px;color: #ffffff;">预计收益：</p>
            <p style="float: right;font-size: 18px;color: #ffffff;" id="dayPrice">0/天</p>
			<p style="float: left;margin-left:-15px;margin-top:-10px; font-size: 12px;color: #999999;">在未获知车辆详细配制前，此数值仅供参考。</p>
            
        </div>
        <div class="index_calculatorconl3">
            <p class="first">
                <select id="brandSelect" name="state" class="defaults" tabindex="1" style="width: 120px; height: 33px;">

                </select>
            </p>

            <p>
                <select id="typeSelect" name="state" disabled class="default" tabindex="2"
                        style="width:120px; height: 38px;margin-left: 10px;">
                    <option value="" selected disabled>选择车型</option>
                </select>
            </p>
            <p>
                <select id="numSelect" name="state" disabled class="default" tabindex="3"
                        style="width:120px; height: 38px;margin-left: 10px;">
                    <option value="" selected disabled>选择型号</option>
                </select>
            </p>
            <p>
                <select id="yearSelect" name="state" disabled class="default" tabindex="4"
                        style="width:120px; height: 38px;margin-left: 10px;">
                    <option value="" selected disabled>选择出厂年月份</option>
                </select>
            </p>
            <span style=" line-height:40px; font-size: 16px;cursor: pointer; text-align: right; padding-left: 25px; color: #00A0FF;"
                  id="carPriceReset">重新选车</span>
        </div>
    </div>
</div>

<div class="foot_top">
    <div class="nav">
        <ul>
            <li><a href="/knowUs/0" rel="nofollow" target="_blank">关于凹凸</a></li>
            <li><a href="/joinOurs" rel="nofollow" target="_blank">加入凹凸</a></li>
            
            <li><a href="javascript:suggestionShow();" rel="nofollow" >提交意见</a></li>
            <li><a href="/autuMap">网站地图</a></li>
        </ul>
    </div>
</div>
<div class="feedback_index" onclick="suggestionHidden();"></div>
<div class="feedback_index_inp">
    <p><textarea id="suggContent" class="input100_text" onfocus="OnEnter(this);" onblur="OnExit(this);"
                 style="width:390px; height: 150px;border-radius: 2px; outline: none; max-height: 150px; max-width: 390px;"
                 maxlength="150">我们会认真听取您的意见</textarea></p>

    <p style="margin-top: 10px;"><input id="suggEamil" type="text" maxlength="41" onfocus="OnEnter(this);"
                                        onblur="OnExit(this);" class="input100_text"
                                        style=" width: 290px; height: 20px; line-height: 20px; border-radius:2px 0px 0px 2px;outline: none; float: left;"
                                        value="我们会通过邮件尽快给您答复"/><input class="btnsearch"
                                                                      style="background:#00d21e;border:none; color: #fff; height: 30px;border-radius:0px 2px 2px 0px;width: 100px; font-size: 16px; line-height: 30px; float: left; outline: none; cursor: pointer;"
                                                                      type="button" value="提交"
                                                                      onclick="suggestionSubmit(this);"></p>
</div>

<script type="text/javascript" src="/js/local/index/index/slide.js"></script>

<!--index_e end-->


<div class="footerCity">
  	<div class="footer_cn">
		<div class="footer_tnav">
           	<ul>
           		 <li style="width:160px;">
              		   <div style="width: 160px;height: 52px;"></div>
                       <div class="footer_tnav_text">
                           	<h3><a href="/sh" target="_blank">上海租车</a></h3><br/>
                           	<h3><a href="/cq" target="_blank">重庆租车</a></h3><br/>
                           <h3>	<a href="/fs" target="_blank">佛山租车</a></h3>
                       </div>
                  </li>
           		 <li style="width:160px;">
                   	   <div style="width: 160px;height: 52px;"></div>
                       <div class="footer_tnav_text">
                           	<h3><a href="/nj" target="_blank">南京租车</a></h3><br>
                   			<h3><a href="/hk" target="_blank">海口租车</a></h3><br>
                           	<h3><a href="sh/act/channel/S001" target="_blank">自驾租车</a></h3>
                       </div>
                  </li>
                  <li style="width:160px;">
                        <div style="width: 160px;height: 52px;text-align: center;padding-left: 60px;"><h2>城市快捷入口</h2></div>
                        <div class="footer_tnav_text">
	                       	 <h3><a href="/hz" target="_blank">杭州租车</a></h3><br>
	               			 <h3><a href="/qd" target="_blank">青岛租车</a></h3><br>
	                       	 <h3><a href="sh/act/channel/S001" target="_blank">旅游租车</a></h3>
                        </div>
                   </li>
                   <li style="width:160px;">
                 		 <div style="width: 160px;height: 52px;"></div>
                         <div class="footer_tnav_text">
		                      <h3><a href="/gz" target="_blank">广州租车</a></h3><br>
		               		  <h3><a href="/xa" target="_blank">西安租车</a></h3><br>
		                      <h3><a href="sh/act/channel/S003" target="_blank">婚车租赁</a></h3>
                         </div>
                    </li>
                    <li style="width:160px;">
                  		   <div style="width: 160px;height:52px;"></div>
                           <div class="footer_tnav_text">
	                         	<h3><a href="/sz" target="_blank">深圳租车</a></h3><br>
	                 			<h3><a href="/sy" target="_blank">三亚租车</a></h3><br>
	                         	<h3><a href="sh/act/channel/S003" target="_blank">约会租车</a></h3>
                           </div>
                     </li>
                     <li style="width:140px;">
                    		<div style="width: 160px;height: 52px;"></div>
                            <div class="footer_tnav_text">
                            	<h3><a href="/bj" target="_blank">北京租车</a></h3><br>
                    			<h3><a href="/heb" target="_blank">哈尔滨租车</a></h3><br>
                            	<h3><a href="sh/act/channel/S002" target="_blank">商务租车</a></h3>
                            </div>
                      </li>
                 </ul>
        	</div>
 	 </div>
</div>

	<div class="footer_link">
		<div class="footer_cn_link">
			<div class="footer_tnav_link">
					<table>
						<tr class="footer_tnav_text"><td style="font-size: 14px;color: #b4b4b4;width: 100px;">友情链接</td>
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.17.com/" target="_blank" >17汽车网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.maiche.com/" target="_blank" >汽车销量排行榜</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://sports.tom.com/" target="_blank" >TOM体育</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.longyanjiahe.com" target="_blank" >房车价格</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.gsmpers.com" target="_blank" >净水器</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.diandong.com" target="_blank" >电动汽车</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.giftjie.com" target="_blank" >礼物网</a>
								</td>
								
									</tr><tr class="footer_tnav_text"><td width="100px;"></td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.0379home.com/" target="_blank" >洛阳房地产信息网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.xuechela.com" target="_blank" >学车</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.kashen.cm" target="_blank" >信用卡论坛</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.098.cn/" target="_blank" >餐饮网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.39ku.com" target="_blank" >化妆品批发网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://lvy.cn" target="_blank" >驴友网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.mala123.com" target="_blank" >重庆小面</a>
								</td>
								
									</tr><tr class="footer_tnav_text"><td width="100px;"></td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.carjob.com.cn/" target="_blank" >中国汽车人才网 </a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.0898bus.com" target="_blank" >海南租车</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.xycha.cn" target="_blank" >信阳毛尖</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.emay.cn" target="_blank" >短信验证码</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.atzuche.com" target="_blank" >租车网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://058.cn/" target="_blank" >58创业加盟网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.qihaoip.com" target="_blank" >7号网</a>
								</td>
								
									</tr><tr class="footer_tnav_text"><td width="100px;"></td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.54lol.com" target="_blank" >lol天赋</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.027zpw.com" target="_blank" >环球资源网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.yygod.com" target="_blank" >YY八卦</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.jzzbp.com/" target="_blank" >新闻资讯</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.guazheng.org/" target="_blank" >挂靠网</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.xin.com/quanguo/" target="_blank" >二手车</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.cn12365.org" target="_blank" >防伪标签</a>
								</td>
								
									</tr><tr class="footer_tnav_text"><td width="100px;"></td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://nc.leju.com/" target="_blank" >南昌房产</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://bztzl.com" target="_blank" >跑车排行榜</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://zhishi.scarbbs.com" target="_blank" >疤痕疙瘩</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.chuzong.com" target="_blank" >网上商城</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.xyzyw.cn/" target="_blank" >藏红花</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.jiamengbang.net" target="_blank" >汽车贴膜</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.yihaicn.com" target="_blank" >乐谱网</a>
								</td>
								
									</tr><tr class="footer_tnav_text"><td width="100px;"></td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.0755400.com" target="_blank" >400电话申请</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.qykh2009.com" target="_blank" >B2B网站</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.fuliansheng.com" target="_blank" >福联升</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.zhuanqituan.com" target="_blank" >专汽团</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.53410.cn" target="_blank" >谷歌地图</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="http://www.jia.com/wuxi/" target="_blank" >无锡装修</a>
								</td>
								
						
								<td style="padding-left: 5px;width: 120px;">
									<a href="javascript:goToTop();" target="_blank" >友链QQ:1295961119</a>
								</td>
								
									</tr><tr class="footer_tnav_text"><td width="100px;"></td>
								
						
						</tr>
					</table>
			</div>
		</div>
	</div>

<div class="footer">
  <div class="footer_cn">
        		<div class="footer_tnav">
                
                	<ul>
                    		<li style="width:200px;">
                            		<h2>关于凹凸租车</h2>
                                    <div class="footer_tnav_text">
                                    <!--  	<a href="/programIndroWeb" target="_blank">流程介绍</a><br />-->
                                    	<a href="http://www.atzuche.com/platformWeb" target="_blank" rel="nofollow">平台规则</a><br />
                                    	<a href="http://www.atzuche.com/ownerDutyLawWeb" target="_blank" rel="nofollow">车主责任和法律解读</a><br />
                                    	<a href="http://www.atzuche.com/vipServiceWeb" target="_blank" rel="nofollow">凹凸租车会员服务协议</a>
                                    </div>
                            </li>
                    		<li style="width:160px;">
                            		<h2>凹凸租车服务</h2>
                                    <div class="footer_tnav_text">
                                    	<a href="http://www.atzuche.com/ownerIndroWeb" target="_blank" rel="nofollow">车主帮助</a><br />
                            			<a href="http://www.atzuche.com/renterIndroWeb" target="_blank" rel="nofollow">租客帮助</a><br />
                                    	
                                    	<a href="http://www.atzuche.com/safeItemWeb" target="_blank" rel="nofollow">保险条款</a><br />
                                    	<a href="http://www.atzuche.com/secretWeb" target="_blank" rel="nofollow">隐私协议</a>
                                    </div>
                            </li>
                    		<li style="width:289px;">
                       		  <h2>联系我们</h2>
                                    <div class="footer_tnav_text">24小时客服热线：<span class="fonter_tnavgr">400-668-0202</span><br />
                                     	公司总机：<span class="fonter_tnavgr">021-61920202</span><br />
                                     	
						                              客服邮箱：<span class="fonter_tnavgr">hello@atzuche.com</span><br />
						                              新浪微博：<span class="fonter_tnavgr"><a href="http://weibo.com/atzuche" target="_blank" rel="nofollow">@凹凸租车</a></span>
						            </div>
                      		</li>
                    		<li style="width:161px;">
                            		<h2  style="text-align: center;">官方微信：凹凸租车</h2>
                                    <div class="footer_tnav_text"><img style="float:left;margin-left:25px" src="http://carphoto.atzuche.com/web/images/eeecasdf_04.jpg" width="105" height="105" alt="凹凸租车-官方微信：凹凸租车" /></div>
                            </li>
                    		<li style="width:130px;">
                            		<h2 style="text-align: center;">APP下载</h2>
                                    <div class="footer_tnav_text"><img style="float:left;margin-left:15px" src="http://carphoto.atzuche.com/web/images/dddcode.jpg" width="105" height="105" alt="凹凸租车-APP下载" /></div>
                            </li>
                    </ul>
                
                </div>
                
    <div class="copy">
     ©2014 上海新共赢信息科技有限公司版权所有<br />
     <!--     ©2014 共颖信息科技（上海）有限公司版权所有<br />-->
      沪ICP备14010921号-2 京公网安备号11010502026705
      <a name="bot" id="bot"></a></div>
        
  </div>

</div>
<a href="javascript:goToTop();" class="goToTop"></a>
</body>
</html>
