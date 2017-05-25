function sbt01() {
    document.getElementById("bgdiv01").style.display = "block";
    document.getElementById("cndiv01").style.display = "block";
    //document.getElementById("bgdiv").innerHTML = "";
    center01("bgdiv01");
    centera01("cndiv01");
}
;
function center01(obj) {
    var cndiv01 = document.getElementById(obj);
    cndiv01.style.top = (document.documentElement.clientHeight - cndiv01.offsetHeight) / 2 + "px";
    cndiv01.style.left = (document.documentElement.clientWidth - cndiv01.offsetWidth) / 2 + "px";
}

function centera01(obja) {
    var bgdiv01 = document.getElementById(obja);
    bgdiv01.style.top = (document.documentElement.clientHeight - cndiv01.offsetHeight) / 2 + "px";
    bgdiv01.style.left = (document.documentElement.clientWidth - bgdiv01.offsetWidth) / 2 + "px";
}
//function cshow(){document.getElementById("bgdiv").style.display="block";}
function chide01() {
    document.getElementById("bgdiv01").style.display = "none";
    document.getElementById("cndiv01").style.display = "none";
}