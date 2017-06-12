$(function(){
	
	var $grid = $('.grid').imagesLoaded( function() {
		  // init Masonry after all images have loaded
		 	$grid.masonry({
		    // options...
			    columnWidth: '.grid-sizer',
				gutter: '.gutter-sizer',
				itemSelector: '.grid-item',
				percentPosition: true
		 	});
			});
	
	$('.grid').imagesLoaded()
.always( function( instance ) {    //always事件，在所有图片都加载完成（成功与否不论）时触发
  console.log('all images loaded');
})
.done( function( instance ) {    //done事件，在所有图片都加载成功时触发
  console.log('all images successfully loaded');
})
.fail( function() {    //fail事件，在所有图片都加载完成，并且至少有一张图片加载失败时触发
  console.log('all images loaded, at least one is broken');
})
.progress( function( instance, image ) {    //progress事件，在每一张图片加载完成时都触发一次
  var result = image.isLoaded ? 'loaded' : 'broken';    //判断当前图片加载成功与否
  console.log( 'image is ' + result + ' for ' + image.img.src );
});
//	$("#test1").click(function(){
//		$('.grid').append("<div class="grid-item" ></div>");
//	});
//	var $grid = $('.grid').masonry({
//itemSelector: '.grid-item',
//percentPosition: true,
//columnWidth: '.grid-sizer'
//});
//// layout Isotope after each image loads
//$grid.imagesLoaded().progress( function() {
//$grid.masonry();
//});  
//	
	
//	$('.grid').masonry({
//// options
//itemSelector: '.grid-item',
//columnWidth: 20%
//});
//
//var elem = document.querySelector('.grid');
//var msnry = new Masonry( elem, {
//// options
//itemSelector: '.grid-item',
//columnWidth: 20%
//});
//
//// element argument can be a selector string
////   for an individual element
//var msnry = new Masonry( '.grid', {
//// options
//});
	
	
	
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

var mymenu=$("#mymenu");
var win=$(window); //得到窗口对象
var sc=$(document);//得到document文档对象。
win.scroll(function(){
if(sc.scrollTop()>=500){
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
function myajax2(imgsrc, title, article){
    var $elem = $("<div class='grid-item'><img src='"+imgsrc+"'><hr ><p><strong>"+title+"</strong></p><p>"+article+"</p><p style='text-align:right;color: red;'>10分钟前</p></div>");    
    $('.grid').append($elem);
	//等图片加载完后才渲染新添加的小块
    $elem.imagesLoaded( function() {                             
    $('.grid').masonry('appended', $elem );               
    });
   }

function myajax(){
	$.ajax({
		type:"GET",
		data:{},
		url:"indexPage.spring?t=" + new Date().getTime(),
		contentType:"application/json",
		dataType:"json",
		success:function(data, type){
			for(var i = 0; i< data.length; i++){
				var record = data[i];
				myajax2(record.imgsrc, record.title, record.article);
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrom){
			alert(XMLHttpRequest.status);
		}
	});
}
