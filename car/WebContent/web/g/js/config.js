//测试通用参数
;(function(){
  var imgUrl = "http://at-images.oss-cn-hangzhou.aliyuncs.com/";//正式
  var at_appid = "wxed08ecec63f0dfb4";//正式
  var at_appSecret = "8a7c48a3e42136de75294f090e547d34";//正式
  var py_appid = "wx0e211dae4c0b756b";//py
  var py_appSecret = "f4a8b706a05ad523f0ea77a5d85b14de";//py
  var testImgUrl = "http://at-images-test.oss-cn-hangzhou.aliyuncs.com/";//测试
  //默认
  publicParam = { 
    debug : false,
    host  : "http://"+ location.host +"/",
    h5Path : "http://"+ location.host +"/" + "view/h5/",
    imgUrl : imgUrl,
    urlencode : "",
    ajaxUrl : "/h5/playResultStauts",
    appId : at_appid,
    appSecret : at_appSecret
  }
  switch(location.host){
    case "www.atzuche.com" : //正式
      publicParam.urlencode = "http%3a%2f%2fwww.atzuche.com%2f";
    break;
    case "121.40.145.92" : //内测ip
      publicParam.urlencode = "http%3a%2f%2f121.40.145.92%2f";
    break;
    case "web30.atzuche.com" : //内测域名
      publicParam.urlencode = "http%3a%2f%2fweb30.atzuche.com%2f";
    break;
    case "10.0.3.215:8080" : //215测试
      publicParam.urlencode = "http%3a%2f%2f10.0.3.215%3a8080%2f";
      publicParam.imgUrl = testImgUrl;
      publicParam.appId = py_appid;
      publicParam.appSecret = py_appSecret;
    break;
    case "10.0.3.203:8888" : //203测试
      publicParam.urlencode = "http%3a%2f%2f10.0.3.203%3a8888%2f";
      publicParam.imgUrl = testImgUrl;
      publicParam.appId = py_appid;
      publicParam.appSecret = py_appSecret;
    break;
    case "10.0.3.200" : //200测试
      publicParam.urlencode = "http%3a%2f%2f10.0.3.200%2f";
      publicParam.imgUrl = testImgUrl;
      publicParam.appId = py_appid;
      publicParam.appSecret = py_appSecret;
    break;
    case "10.0.3.188:8080" : //188:8080
      publicParam.urlencode = "http%3a%2f%2f10.0.3.188%3a8080%2f";
      publicParam.debug = true;
      publicParam.imgUrl = testImgUrl;
      publicParam.appId = py_appid;
      publicParam.appSecret = py_appSecret;
    break;
    case "10.0.3.188:3000" : //188:3000
      publicParam.urlencode = "http%3a%2f%2f10.0.3.188%3a3000%2f";
      publicParam.debug = true;
      publicParam.imgUrl = testImgUrl;
      publicParam.appId = py_appid;
      publicParam.appSecret = py_appSecret;
    break;
  };
  if(location.href.indexOf("/h5_dev/")!=-1){
    publicParam.h5Path = publicParam.host + "view/h5_dev/";
  }
}())
