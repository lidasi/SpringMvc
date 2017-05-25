function OnEnter(field) {
    if (field.value == field.defaultValue) {
        field.value = "";
    }
}
function OnExit(field) {
    if (field.value == "") {
        field.value = field.defaultValue;
    }
}
function OnEnterPass(field) {
    if (field.value == field.defaultValue) {
        field.value = "";
        field.type = "password";
    }
}
function OnExitPass(field) {
    if (field.value == "") {
        field.value = field.defaultValue;
        field.type = "text";
    }
}

function value(id) {
    var txt = $.trim($(id).val());
    if (txt == $(id).get(0).defaultValue) {
        return "";
    } else {
        return txt;
    }
}

function sbt() {
    document.getElementById("bgdiv").style.display = "block";
    document.getElementById("cndiv").style.display = "block";
    //document.getElementById("bgdiv").innerHTML = "";
    center("bgdiv");
    centera("cndiv");    

}
;
function center(obj) {
    var cndiv = document.getElementById(obj);
    cndiv.style.top = (document.documentElement.clientHeight - cndiv.offsetHeight) / 2 + "px";
    cndiv.style.left = (document.documentElement.clientWidth - cndiv.offsetWidth) / 2 + "px";
}

function centera(obja) {
    var bgdiv = document.getElementById(obja);
    bgdiv.style.top = (document.documentElement.clientHeight - cndiv.offsetHeight) / 2 + "px";
    bgdiv.style.left = (document.documentElement.clientWidth - bgdiv.offsetWidth) / 2 + "px";
}
//function cshow(){document.getElementById("bgdiv").style.display="block";}
function chide() {
    document.getElementById("bgdiv").style.display = "none";
    document.getElementById("cndiv").style.display = "none";
}

function funPlaceholder(){	/*在ie下不支持 placeholder的方法*/
    var checked = ("placeholder" in document.createElement("input"));
    $(":input[data-placeholder]").each(function (index, element) {
        var self = $(element);
        var txt = self.data("placeholder");
        if (checked) {
            self.attr("placeholder", txt);
            return;
        }

        self.wrap($('<div></div>').css({
            position: "relative",
            zoom: "1",
            border: "none",
            background: "none",
            padding: "none",
            margin: "none"
        }));
        var pos = self.position(), h = self.outerHeight(true), paddingleft = self.css('padding-left');
        var holder = $('<span></span>').text(txt).css({
            position: 'absolute',
            left: pos.left,
            top: pos.top,
            lienHeight: h,
            paddingLeft: paddingleft,   
            border:0, 
            background:'none',
            color: '#aaa'  
        }).attr("class", self.attr("class")).appendTo(self.parent());
        self.focusin(function (e) {
            holder.hide();
        }).focusout(function (e) {
            if (!self.val()) {
                holder.show();
            }
        });
        holder.click(function (e) {
            holder.hide();
            self.focus();
        });
    });

}