var contextPath = $("[data-key=contextPath]").val();
window.onscroll = function () {
    tooltipScrollTop('#datetimepickerDiv');
}
//右边菜单滑动初始化
$.fn.ready(function () {
	recomCarListInit();//推荐车辆加载
    dateTimeInit();
    initBrand();  //品牌列表初始化
    $('#brandSelect').dropkick({//品牌
        mobile: true,
        change: function (value, label) {
            var brand = value;
            if (brand == "" || brand == null) {
                $("#dk_container_brandSelect").find("a").first().text("选择品牌");
                return false;
            }

            $.ajax({
                type: "get",
                dataType: "json",
                url: contextPath + "/carParamBrand/" + brand,
                success: function (result) {
                    var type = $("#typeSelect");
                    $('#typeSelect').dropkick('reset');//重置联动其他下拉
                    $('#numSelect').dropkick('reset');
                    $('#yearSelect').dropkick('reset');
                    var first = type.find("option").get(0);
                    var dk_options = $("#dk_container_typeSelect").find(".dk_options_inner"); //ul
                    dk_options.empty();
                    type.empty();
                    $('#numSelect').empty();
                    $('#yearSelect').empty();
                    type.append(first);
                    for (var i = 0; i < result.data.length; i++) {
                        type.append("<option value='" + result.data[i].id + "' >" + result.data[i].txt + "</option>");
                        dk_options.append("<li ><a data-dk-dropdown-value=" + result.data[i].id + ">" + result.data[i].txt + "</a></li>");
                    }
                }
            });
            label = label.substring(3, label.length);
            $("#dk_container_brandSelect").find("a").first().text(label);
            $("#dk_container_typeSelect").addClass("defaultq").removeAttr("disabled");
            $('#dk_container_numSelect').removeClass("defaultq").attr("disabled", true);
            $('#dk_container_yearSelect').removeClass("defaultq").attr("disabled", true);
        }
    });
    $('#typeSelect').dropkick({//车型
        mobile: true,
        change: function (value, label) {
            var type = value;
            if (type == "" || type == null) {
                $("#dk_container_typeSelect").find("a").first().text("选择车型");
                return false;
            }
            $.ajax({
                type: "get",
                dataType: "json",
                url: contextPath + "/carParamType/" + type,
                success: function (result) {
                    var num = $("#numSelect");
                    $('#numSelect').dropkick('reset');
                    $('#yearSelect').dropkick('reset');
                    var first = num.find("option").get(0);
                    var dk_options = $("#dk_container_numSelect").find(".dk_options_inner"); //ul
                    dk_options.empty();
                    num.empty();
                    num.append(first);
                    for (var i = 0; i < result.data.length; i++) {
                        num.append("<option value='" + result.data[i].id + "," + result.data[i].msrp + "' >" + result.data[i].txt + "</option>");
                        dk_options.append("<li ><a data-dk-dropdown-value=" + result.data[i].id + "," + result.data[i].msrp + ">" + result.data[i].txt + "</a></li>");
                    }
                }
            });
            $("#dk_container_numSelect").addClass("defaultq").removeAttr("disabled");
            $('#dk_container_yearSelect').removeClass("defaultq").attr("disabled", true);
        }
    });
    $('#numSelect').dropkick({//型号
        mobile: true,
        change: function (value, label) {
            var type = value;
            if (type == "" || type == null) {
                $("#dk_container_numSelect").find("a").first().text("选择型号");
                return false;
            }
            $('#yearSelect').dropkick('reset');
            var date = new Date();
            var year = date.getFullYear();
            var dk_options = $("#dk_container_yearSelect").find(".dk_options_inner"); //ul
            dk_options.empty();
            for (var i = year; i >= 2005; i--) {
                $("#yearSelect").append("<option value='" + i + "'>" + i + "年" + "</option>");
                dk_options.append("<li ><a data-dk-dropdown-value=" + i + ">" + i + "年" + "</a></li>");
            }
            $("#dk_container_yearSelect").addClass("defaultq").removeAttr("disabled");
        }
    });
    $('#yearSelect').dropkick({//月份
        mobile: true,
        change: function (value, label) {
            var type = value;
            if (type == "" || type == null) {
                $("#dk_container_yearSelect").find("a").first().text("选择出厂年月份");
                return false;
            }
            priceCount();//计算
        }
    });
    $("#carPriceReset").click(function () {
        $("#brandSelect").dropkick('reset');//重置联动其他下拉
        $(".default").dropkick('reset');
        $(".default").find(".dk_options_inner").empty();
        $(".default").removeClass("defaultq");
        $(".default").attr("disabled", true);
        $("#dayPrice").html("0/天");
    });
});