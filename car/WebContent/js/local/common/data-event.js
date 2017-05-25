$(function () {
    $("[data-link]").click(function () {
        console.log("link");
        var $this = $(this);
        var uri = $this.data("link");
        location.href = uri;
    });

    $("[data-toggle]").mouseenter(function () {
        var selector = $(this).data("toggle");
        $(selector).show();
    });

    $("[data-toggle]").mouseleave(function () {
        var selector = $(this).data("toggle");
        $(selector).hide();
    });

    $("[data-open]").click(function () {
        console.log("open");
        var target = $(this).data("open");
        $(target).show();
    });

    $("[data-close]").click(function () {
        console.log("close");
        var target = $(this).data("close");
        $(target).hide();
    });


});