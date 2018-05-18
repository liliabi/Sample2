var trim_Version = navigator.appVersion.replace(/[ ]/g, "");
if (navigator.appName == "Microsoft Internet Explorer" && (trim_Version.indexOf("MSIE6.0") != -1 || trim_Version.indexOf("MSIE7.0") != -1 || trim_Version.indexOf("MSIE8.0") != -1)) {
    alert("抱歉，您所使用的浏览器版本过低，可能导致了您在浏览上的不便，\r\n为此您可以选择 360浏览器 / 谷歌浏览器 / 火狐 / 猎豹 / 搜狗 等主流浏览器，\r\n从而获得更好的浏览体验。")
}
jQuery(function () {
    jQuery(".history .list li a").click(function () {
        jQuery(this).addClass("hover");
        jQuery(this).prevAll().removeClass("hover");
        jQuery(this).nextAll().removeClass("hover");
        jQuery(this).parent().attr("data-num", jQuery(this).index() + 1);
        jQuery(".history .fl-left ul").hide().fadeIn();
        jQuery(".history .fl-left ul li span").html(jQuery(this).find("span").html());
        jQuery(".history .fl-left ul p").html(jQuery(this).attr("data-nr"));
        jQuery(".history .img").attr("src", jQuery(this).attr("data-img")).hide().fadeIn();
    })
    jQuery(".history .list > a").click(function () {
        var a = jQuery(".history .list li");
        var num = a.attr("data-num");
        var all = a.children().length;
        var id = jQuery(this).attr("class");
        if (id == 'prev' && num == 1) {
            num = all;
        }
        else if (id == 'prev' && num != 1) {
            num = num - 1;
        }
        if (id == 'next' && num != all) {
            num = Number(num) + 1;
        }
        else if (id == 'next' && num == all) {
            num = 1;
        }
        var b = a.children().eq(num - 1);
        a.attr("data-num", num);
        a.children().removeClass("hover");
        b.addClass("hover");
        jQuery(".history .fl-left ul").hide().fadeIn();
        jQuery(".history .fl-left ul li span").html(b.find("span").html());
        jQuery(".history .fl-left ul p").html(b.attr("data-nr"));
        jQuery(".history .img").attr("src", b.attr("data-img")).hide().fadeIn();
    })
    jQuery(".pro .list a").hover(function () {
        jQuery(this).addClass("hover");
        jQuery(this).prevAll().removeClass("hover");
        jQuery(this).nextAll().removeClass("hover");
        jQuery(this).parent().children().each(function () {
            jQuery(this).find("img").attr("src", jQuery(this).find("img").attr("data-src1"));
        })
        jQuery(this).find("img").attr("src", jQuery(this).find("img").attr("data-src"));
        jQuery(this).parent().parent().nextAll().removeClass("autoheight")
        jQuery(this).parent().parent().nextAll().eq(jQuery(this).index()).addClass("autoheight");
    })
    jQuery(".map li").click(function () {
        jQuery(this).parent().children().children("div").removeClass("nl_radius");
        jQuery(this).children("div").addClass("nl_radius");
        var txt = jQuery(this).find("span").html();
        jQuery(".map_list ul").each(function () {
            if (jQuery(this).attr("data-name") == txt) {
                jQuery(this).fadeIn();
            }
            else {
                jQuery(this).hide();
            }
        })
    })
});