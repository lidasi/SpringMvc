$(function () {
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
            color: '#aaa',
            border:0,
            background:'none',
            'box-shadow':'none'            
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
});
