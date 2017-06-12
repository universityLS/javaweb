<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/main.css" />
		<!--<script type="text/javascript" src="js/fire.js" ></script>-->
	</head>
	<body>
		<!--登陆模态框-->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		    <div class="modal-header">
		    	<ul class="nav nav-justified" role="tablist">
		    		<li role="presentation" class="active" ><a href="#login0" aria-controls="login0" role="tab" data-toggle="tab">登陆</a></li>
		    		<li role="presentation"><a href="#register" aria-controls="register" role="tab" data-toggle="tab">注册</a></li>
				</ul>
		    </div>
		    <div class="modal-body">
			  <div class="tab-content">
			    <div role="tabpanel" class="tab-pane active" id="login0">			    	
			    	<form class="form-horizontal">
			  			<div class="form-group">
			    			<label for="inputNumber0" class="col-sm-2 col-md-offset-2 col-sm-offset-2 control-label">学号</label>
			    			<div class="col-sm-5">
			      			<input type="text" class="form-control" id="inputNumber0" placeholder="User">
			    			</div>
			  			</div>
			  			<div class="form-group">
			    			<label for="inputPassword3" class="col-sm-2 col-md-offset-2 col-sm-offset-2 control-label">密码</label>
			    			<div class="col-sm-5">
			      			<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
			    			</div>
			  			</div>
			  			
			  			<div class="form-group">
			    			<div class=" col-sm-offset-4  col-sm-10">
			      				<div class="checkbox">
			        			<label>
			          			<input type="checkbox">记住密码
			        			</label>
			      				</div>
			    			</div>
			  			</div>
			  			<div class="form-group  mymodal-hengxian">
			    			<div class="col-sm-4 col-md-offset-4 col-sm-offset-4">
			      				<a href="#">忘记密码？</a>
			    			</div>
			  			</div>
			  			<div class="form-group">
			  				<div class="col-sm-offset-4 col-sm-10">
			  		<button type="button" class="btn btn-default " data-dismiss="modal" style="margin: 0px;">关闭</button>
			        <button type="submit" class="btn btn-primary ">登陆</button>
			        </div>
			        </div>
			  			</form>

			    </div>
			    <div role="tabpanel" class="tab-pane" id="register">
			    	<form class="form-horizontal">
			  			<div class="form-group">
			    			<label for="inputNumber0" class="col-sm-2 col-md-offset-2 col-sm-offset-2 control-label">学号</label>
			    			<div class="col-sm-5">
			      			<input type="text" class="form-control" id="inputNumber0" placeholder="User">
			    			</div>
			  			</div>
			  			<div class="form-group">
			    			<label for="inputPassword3" class="col-sm-2 col-md-offset-2 col-sm-offset-2  control-label">密码</label>
			    			<div class="col-sm-5">
			      			<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
			    			</div>
			  			</div>
			  			<div class="form-group">
			    			<label for="inputPassword4" class="col-sm-2 col-md-offset-2 col-sm-offset-2 control-label">密码</label>
			    			<div class="col-sm-5">
			      			<input type="password" class="form-control" id="inputPassword4" placeholder="Password">
			    			</div>
			  			</div>
			  			<div class="form-group mymodal-hengxian">
			    			<div class="col-sm-offset-4 col-sm-10">
			      				<div class="checkbox">
			        			<label>
			          			<input type="checkbox">记住密码
			        			</label>
			      				</div>
			    			</div>
			  			</div>
			  			<div class="form-group">
			  				<div class="col-sm-offset-4 col-sm-10">
			  		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button type="submit" class="btn btn-primary">注册</button>
			        </div>
			        </div>
			  			</form>
					     </div>
					</div>
				</div>
		    </div>
		    </div>
		  </div>
		  <!--模态框结束-->
		  <!--导航栏-->
<div id="mymove" >
<div class="container" id="home">
<nav class="navbar navbar-default " >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="position: relative;">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Find</a>
      
    </div>
    <div class="collapse navbar-collapse mynavbar" id="bs-example-navbar-collapse-1" >
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">主页</a></li>
        <li><a  onclick="page1animation()" style="cursor:pointer">失物招领</a></li>
        <li><a href="#test2" >发布寻物</a></li>
        <li><a data-toggle="modal" data-target="#myModal"  style="cursor:pointer">登陆</a></li><!--模态框按钮--> 
      </ul>
    </div>
</nav>
</div>
<!--导航栏-->
<div class="container">
	<div class="text-center"  id="center">
		<h1>Start Your Finding</h1>
		<div class="col-md-6 col-md-offset-3" style="text-align: center;">
		<form>
		<div class="input-group">
      			<input type="text" class="form-control mysearch" placeholder="请输入查找内容">
      			<span class="input-group-btn">
       			 <button class="btn btn-default mysearch" type="button">搜索</button>
      			</span>
		</div>
		</form>
	</div>
</div>
</div>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
</br></br></br></br></br></br></br></br>
</div>
<!--菜单按钮-->
<div id="myleftmenu" style="position: absolute">
	<a class="btn btn-success" id="mymenu">菜单</a>
	<span class="leftbar" id="leftbar">
		<ul class="nav myleftnav  " >
			<li style=" border-radius: 10px 10px 0 0;"><a style="cursor:pointer">关闭</a></li>
			<li><a href="#" style="cursor:pointer">主页</a></li>
			<li><a href="#test1" style="cursor:pointer">失物招领</a></li>
			<li><a href="#test2" style="cursor:pointer">最新消息</a></li>
			<li style=" border-radius: 0 0 10px 10px ;">登陆</li>
		</ul>
	</span>
</div>
<!--菜单按钮结束-->
<div class="container" >
	<div class="grid">
		<div class="grid-sizer"></div>
		<div class="gutter-sizer"></div>
	  <div class="grid-item" ><img src="img/gongzai.jpg" > <hr ><p><strong>丢失校园卡</strong></p><p>在去泽园吃饭的路上饭卡一不小心就飞走了</p><p style="text-align:right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/upan.jpg" >    <hr ><p><strong>湛江-招领启示</strong></p><p>星期六去艾溪湖远足走着走着就没了QAQ一个白色的台电U盘</p><p style="text-align:right;color: red;">35分钟前</p></div>
	  <div class="grid-item" ><img src="img/book.jpg" >    <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/bottle.jpg" >  <hr ><p>丢了杯子</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/computer.jpg" ><hr ><p>丢失校园卡</p></div>
	  <div class="grid-item" ><img src="img/key.jpg" >     <hr ><p><strong>寻物启示</strong></p><p><p>星期六去艾溪湖远足走着走着就没了QAQ一个白色的台电U盘</p><p style="text-align:right;color: red;">15分钟前</p></div>
	  <div class="grid-item" ><img src="img/phone.jpg" >   <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/shoot.jpg" >   <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/wallet.jpg" >  <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/cungao.jpg" >  <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/gongzai.jpg" > <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/yusan.jpeg" >  <hr ><p><strong>寻物启示</strong></p><p>星期六去艾溪湖远足走着走着就没了QAQ一个白色的台电U盘</p><p style="text-align:right;color: red;">40分钟前</p></div>
	  <div class="grid-item" ><img src="img/pag.jpg" >     <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/wallet.jpg" >       <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><p>丢失U盘</p>                <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/shoot.jpg" >        <hr ><p><strong>丢失校园卡</strong></p><p>星期六去艾溪湖远足走着走着就没了QAQ一个白色的台电U盘</p></div>
	  <div class="grid-item" ><img src="img/xiaoyuan.jpg" > <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/upan.jpg" >         <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/gongzai.jpg" ><hr ><p><strong>丢失校园卡</strong></p><p>在去泽园吃饭的路上饭卡一不小心就飞走了</p><p style="text-align:right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/upan.jpg" >    <hr ><p><strong>湛江-招领启示</strong></p><p></p>星期六去艾溪湖远足走着走着就没了QAQ一个白色的台电U盘</p><p style="text-align:right;color: red;">35分钟前</p></div>
	  <div class="grid-item" ><img src="img/book.jpg" >    <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/bottle.jpg" >  <hr ><p>丢了杯子</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/computer.jpg" ><hr ><p>丢失校园卡</p></div>
	  <div class="grid-item" ><img src="img/gongzai.jpg" ><hr ><p><strong>丢失校园卡</strong></p><p>在去泽园吃饭的路上饭卡一不小心就飞走了</p><p style="text-align:right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/upan.jpg" >    <hr ><p><strong>湛江-招领启示</strong></p><p></p>星期六去艾溪湖远足走着走着就没了QAQ一个白色的台电U盘</p><p style="text-align:right;color: red;">35分钟前</p></div>
	  <div class="grid-item" ><img src="img/book.jpg" >    <hr ><p>丢失图书</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/bottle.jpg" >  <hr ><p>丢了杯子</p><p></p><p style="text-align: right;color: red;">10分钟前</p></div>
	  <div class="grid-item" ><img src="img/computer.jpg" ><hr ><p>丢失校园卡</p></div>
	</div>
</div>
<button class="btn btn-success" onclick="myajax();">添加</button>
<footer style="text-align: center;margin-top: 50px;">
	<a>校园失物招领平台@2017</a>
	
</footer>

		<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/main.js" ></script>
		<script type="text/javascript" src="js/json2.js"></script>
		<script type="text/javascript" src="js/masonry.pkgd.js"></script>
		<script type="text/javascript" src="js/imagesloaded.pkgd.js" ></script>
	</body>
</html>