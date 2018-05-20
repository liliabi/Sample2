
$(function(){		   
//头页登录
$("#navul > li").not(".navhome").hover(function(){$(this).addClass("navmoon")},function(){$(this).removeClass("navmoon")})


var maxwidth = 580;
$(".news_text img").each(function(){
  if ($(this).width() > maxwidth) {
   $(this).width(maxwidth);}
   }); 
}); 
function $tomato(id) {
	return document.getElementById(id);
}
function runCode(obj) {
	var winname = window.open('', "_blank", '');
	winname.document.open('text/html', 'replace');
	winname.document.writeln(obj.value);
	winname.document.close();
}


