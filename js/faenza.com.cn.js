
 $(function() {
     $(".LazyLoad").lazyload({
        effect: "fadeIn",
        effect_speed: 750
    })
 });

 function reSizeWindow() {
 	var body_width = $(window).width();//获取页面宽度
 	if (body_width > 720) {
 		$(document).ready(function () {
 			$('#menu li').hover(

				function () {

					$(this).children('ul').stop(true, true).slideDown(300);

					$(this).find('a:first').addClass('hover');

				}, function () {

					$(this).children('ul').stop(true, true).slideUp(300);

					$(this).find('a:first').removeClass('hover');

				}

			);

 		});

 	}

 }

 reSizeWindow();

 $(window).resize(function () {

 	reSizeWindow();

 });

 $(function () {
 	var timer = null;
 	var index = 2;
 	$(window).scroll(function () {
 		var newsTypeID = "";
 		var PageMax = $(".fpageNum").find("option").length;
 		var winHs = $(window).scrollTop() + $(window).height();
 		var winTs = $(".pro_con_bg .add_pic:last").offset().top;
 		if (winHs >= winTs) {
 			//console.log(index+"-"+PageMax);
 			if (index <= PageMax) {
 				clearTimeout(timer);
 				$(".fpage_status").show();
 				timer = setTimeout(function () {
 					$.ajax({
 						"type": "post",
 						"url": "getProductPageAjax.html?proTypeID=",
 						"data": { "proTypeID": newsTypeID, "pageIndex": index },
 						"dataType": "html",
 						"success": function (data) {
 							var res = eval('data');
 							console.log(index);
 							$(".news_loadingDiv").append(res);
 							$(".news_loadingDiv .add_pic").fadeIn("slow");
 							index++;
 						},
 						"error": function () {
 							$(".fpage_status").show().html('<div style="text-align:center;font-size:15px;color:#999;">亲，服务器没响应！</div>');
 						}
 					});
 				}, 350);
 			} else {
 				$(".fpage_status").show().html('<div style="text-align:center;font-size:15px;color:#999;">已经最后一页啦！</div>');

 			}
 		}

 	});
 })

 function bannerShow() {
 	var scrw = $(".inside_banner").width();


 	var img = $(".touchslider-item img:first"); //获取img元素
 	var picRealWidth, picRealHeight;
 	$("<img/>") // 在内存中创建一个img标记
		.attr("src", $(img).attr("src"))
		.load(function () {
			picRealWidth = this.width;
			picRealHeight = this.height;
			$("#tempDiv").height(scrw * picRealHeight / picRealWidth + "px");
		});


 	var scrw_height = $("#test_banner").height();
 	var scrw_width = $("#test_banner").width();
 	document.getElementById("tempDiv").style.height = scrw * scrw_height / scrw_width + "px";
 	$(".touchslider-item img").width(scrw);

 	$(".touchslider-demo").touchSlider({
 		mouseTouch: true

 	});
 }
 bannerShow();

 $(window).resize(function () {

 	bannerShow();

 });