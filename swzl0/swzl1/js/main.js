$(function(){
	var leftactive1=$("#leftbar");
$("#mymenu").click(function(){
	leftactive1.removeClass("leftbar");
	leftactive1.addClass("leftbaractive");
});
$("div:not(#myleftmenu)").click(function(){ 
	leftactive1.removeClass("leftbaractive");
	leftactive1.addClass("leftbar");
});
$("#myleftmenu span ul li").eq(0).click(function(){
	leftactive1.removeClass("leftbaractive");
	leftactive1.addClass("leftbar");
});
//$("#carousel-example-generic").on("slide.bs.carousel", function () {
//　　　　var carouselData = $(this).data("bs.carousel');
//　　　　var currentIndex = carouselData.getActiveIndex();//当前图片的索引，注意：这并不是下一张图的索引号
//	alert(currentIndex);
//　　　　var items = carouselData.$items;//所有图片的包裹div的数组
//});


//var nav=$(".navbar-default"); //得到导航对象
var mymenu=$("#mymenu");
var win=$(window); //得到窗口对象
var sc=$(document);//得到document文档对象。
win.scroll(function(){
if(sc.scrollTop()>=800){
  mymenu.css("visibility","visible");  
}else{
  mymenu.css("visibility","hidden") ;
}
});
});
function page1animation(){
	document.getElementById("test1").scrollIntoView();
	var addcss=document.getElementById("mylpage1");
	addcss.style.cssText="animation: leftpage1 1.8s;position: relative;"
	var addcss1=document.getElementById("myrpage1");
	addcss1.style.cssText="animation: rightpage1 1.8s;position: relative;"
}
function _scrollTo(id){
　　　　var _id = document.getElementById(id);
　　　　window.scrollTo(0,_id.offsetTop);
　　}