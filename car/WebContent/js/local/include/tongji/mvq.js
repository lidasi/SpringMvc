var memNo = $("[data-key=memNo]").val();
var nickName = $("[data-key=nickName]").val();

var _mvq = window._mvq || [];
window._mvq = _mvq;
_mvq.push(['$setAccount', 'm-110033-0']);


if (nickName != null && nickName != "") {
    _mvq.push(['$setGeneral', '', '', /*用户名*/ nickName, /*用户id*/memNo]);//如果不传用户名、用户id，此句可以删掉
}
_mvq.push(['$logConversion']);

(function () {
    var mvl = document.createElement("script");
    mvl.type = "text/javascript";
    mvl.async = true;
    mvl.src = ("https:" == document.location.protocol ? "https://static-ssl.mediav.com/mvl.js" : "http://static.mediav.com/mvl.js");
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(mvl, s);
})();

