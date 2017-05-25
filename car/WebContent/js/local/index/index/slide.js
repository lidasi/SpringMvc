$(".foucebox").slide({
    effect: "fold", autoPlay: false, delayTime: 300, startFun: function (i) {
        $(".foucebox .showDiv").eq(i).find("h2").css({display: "none", bottom: 0}).animate({
            opacity: "show",
            bottom: "10px"
        }, 150);
        $(".foucebox .showDiv").eq(i).find("p").css({display: "none", bottom: 0}).animate({
            opacity: "show",
            bottom: "10px"
        }, 150);
    }
});