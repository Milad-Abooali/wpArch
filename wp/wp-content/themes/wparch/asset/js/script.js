$(document).ready(function (t) {

    $('.widget_newsletterwidget .tnp-submit').addClass('ibg-color');


    var e, n, a;
    function o() {
        var t = $(window).scrollTop();
        500 < t && t < 5e3 ? ($("#wellcomebox").removeClass("wellcomestart"), $("#wellcomebox").addClass("wellcome")) : ($("#wellcomebox").removeClass("wellcome"), $("#wellcomebox").addClass("wellcomestart"));
    }
    $("input[type=text],input[type=email],textarea").addClass("form-control"),
        $("input[type=submit]").addClass("btn btn-success"),
        $("input[type=reset]").addClass("btn btn-info"),
        $(".newsimg").addClass("thumbnail"),
        $(".publishnews img, .rightblockss img, .leftblockss img, .publishnewsview img").addClass("img-responsive"),
        $("#publishnewsview img").each(function () {
            $(this).removeAttr("style");
        }),
        $("#publishnewsview table").each(function () {
            $(this).addClass("table"),
                $(this).removeAttr("style"),
                $(".menu li").hover(
                    function () {
                        $(this).find("ul:first").stop(!0, !0).slideDown(480);
                    },
                    function () {
                        $(this).find("ul:first").slideUp(488);
                    }
                );
        }),
        785 < $(window).width() &&
            $("ul.nav li.dropdown").hover(
                function () {
                    $(this).find(".dropdown-menu").stop(!0, !0).delay(200).slideDown(500);
                },
                function () {
                    $(this).find(".dropdown-menu").stop(!0, !0).delay(200).fadeOut(500);
                }
            ),
        $(function () {
            $(window).scroll(o), o();
        }),
        (e = document),
        (n = "mouseout"),
        (a = function (t) {
            (t.pageY <= 30 || event.clientY < 30) && null == t.toElement && null == t.relatedTarget && 1 == i && $(".lightbox").slideDown();
        }),
        (i = 1),
        e.addEventListener ? e.addEventListener(n, a, !1) : e.attachEvent && e.attachEvent("on" + n, a),
        $("a.close , .lightbox").click(function () {
            $(".lightbox").slideUp(), (i = 0);
        }),
        $("div.bhoechie-tab-menu>div.list-group>li").hover(function (t) {
            t.preventDefault(), $(this).siblings("li.active").removeClass("active"), $(this).addClass("active");
            var e = $(this).index();
            $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active"), $("div.bhoechie-tab>div.bhoechie-tab-content").eq(e).addClass("active");
        }),
        $(document).delegate('*[data-toggle="lightbox"]', "click", function (t) {
            t.preventDefault(), $(this).ekkoLightbox();
        }),
        $(".overlay").click(function () {
            return (window.location = $(this).find("a").attr("href")), !1;
        }),
        $("a[rel=mgroup]").on("click", function () {
            return (
                (function (t) {
                    var e = t;
                    $("#image-gallery-title").text(e.attr("title")), $("#image-gallery-image").attr("src", e.attr("href")), $("#image-gallery").modal();
                })($(this)),
                !1
            );
        }),
        $(document).ready(function (t) {
            $("input[type=text],input[type=email],textarea").addClass("form-control"),
                $("input[type=submit]").addClass("btn btn-success"),
                $("input[type=reset]").addClass("btn btn-info"),
                $(".newsimg").addClass("thumbnail"),
                $(".publishnews img, .rightblockss img, .leftblockss img, .publishnewsview img").addClass("img-responsive"),
                $("#publishnewsview img").each(function () {
                    $(this).removeAttr("style");
                }),
                $("#publishnewsview table").each(function () {
                    $(this).addClass("table"),
                        $(this).removeAttr("style"),
                        $(".menu li").hover(
                            function () {
                                $(this).find("ul:first").stop(!0, !0).slideDown(480);
                            },
                            function () {
                                $(this).find("ul:first").slideUp(488);
                            }
                        );
                }),
                785 < $(window).width() &&
                    $("ul.nav li.dropdown").hover(
                        function () {
                            $(this).find(".dropdown-menu").stop(!0, !0).delay(200).slideDown(500);
                        },
                        function () {
                            $(this).find(".dropdown-menu").stop(!0, !0).delay(200).fadeOut(500);
                        }
                    ),
                $("div.bhoechie-tab-menu>div.list-group>li").hover(function (t) {
                    t.preventDefault(), $(this).siblings("li.active").removeClass("active"), $(this).addClass("active");
                    var e = $(this).index();
                    $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active"), $("div.bhoechie-tab>div.bhoechie-tab-content").eq(e).addClass("active");
                }),
                $(document).delegate('*[data-toggle="lightbox"]', "click", function (t) {
                    t.preventDefault(), $(this).ekkoLightbox();
                }),
                $(".overlay").click(function () {
                    return (window.location = $(this).find("a").attr("href")), !1;
                }),
                $("a[rel=mgroup]").on("click", function () {
                    return (
                        (function (t) {
                            var e = t;
                            $("#image-gallery-title").text(e.attr("title")), $("#image-gallery-image").attr("src", e.attr("href")), $("#image-gallery").modal();
                        })($(this)),
                        !1
                    );
                });
        });
    $(document).ready(function () {
        $("a.track").each(function (t, e) {
            var i = (e = $(e)).attr("href"),
                n = "_blank" == e.attr("target");
            e.click(function () {
                return (
                    (function (t, e) {
                        ga("send", "event", "outbound", "click", t, {
                            hitCallback: function () {
                                e || (document.location = t);
                            },
                        }),
                            e && window.open(t);
                    })(i, n),
                    !1
                );
            });
        });
    });
}),
    (function (t, e, i) {
        (t.yektanetAnalyticsObject = i),
            (t[i] =
                t[i] ||
                function () {
                    t[i].q.push(arguments);
                }),
            (t[i].q = t[i].q || []);
        var n = new Date(),
            a = n.getFullYear().toString() + "0" + n.getMonth() + "0" + n.getDate() + "0" + n.getHours(),
            o = e.getElementsByTagName("script")[0],
            l = e.createElement("script");
        (l.async = 1), (l.type = "text/javascript"), (l.src = "https://cdn.yektanet.com/rg_woebegone/scripts/143/rg.complete.js?v=" + a), o.parentNode.insertBefore(l, o);
    })(window, document, "yektanet");
