<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>用户详细信息</title>
</head>
<body>
<!-- 装载容器 -->
<div class="container">
<!-- 左侧导航 -->
<div class="col-sm-4">
	<nav role="navigation">
		<ul class="nav nav-pills nav-stacked test-center">
			<li role="presentation" class="active"><a href="#">我的个人资料</a></li>
			<li role="presentation" ><a href="#">Home</a></li>
			<li role="presentation" ><a href="#">修改密码</a></li>
			<li role="presentation" ><a href="#">Home</a></li>
		</ul>
	</nav>
</div><!-- end of col-sm-4 左侧导航-->
<div class="col-sm-6">
<!-- 用户详细信息表单，查看，修改后点击保存即提交表单保存 -->
<form action="#" class="form-horizontal" role="form">
  <div class="form-group">
	<label for="account" class="col-sm-3 control-label">用户昵称：</label>
	<div class=" col-sm-8 input-group">
		<span class="input-group-addon"><span class="glyphicon glyphicon-user "></span></span>
		<input type="text" autofocus required id="account"placeholder="昵称" class="form-control">
	</div>
  </div>
	<div class="input-group">
		<span class="input-group-addon">
		个性签名&nbsp;<span class="glyphicon glyphicon-user "></span>
		</span>		
		<input type="text" id="personalSignature"
		 placeholder="个性签名" class="form-control">
	</div>
	<div class="input-group">
		<span class="input-group-addon">
		手机号码&nbsp;<span class="glyphicon glyphicon-user "></span>
		</span>		
		<input type="text" id="mobile"
			 placeholder="手机号码" class="form-control">
	</div>
	<div class="form-group">
		<label for="landline" class="col-sm-3 control-label ">固定电话：</label>
		<div class="col-sm-5">
			<input type="text" id="landline"
			 placeholder="固定电话" class="form-control">
		</div>
	</div>
	<div class="form-group">
		<label for="qq_num" class="col-sm-3 control-label ">QQ号码：</label>
		<div class="col-sm-5">
			<input type="text" id="qq_num"
			 placeholder="QQ号码" class="form-control">
		</div>
	</div>
	<div class="form-group">
		<label for="wechat" class="col-sm-3 control-label ">微信号：</label>
		<div class="col-sm-5">
			<input type="text" id="wechat"
			 placeholder="微信号" class="form-control">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-3 control-label ">e-mail：</label>
		<div class="col-sm-5">
			<input type="text" id="email"
			 placeholder="e-mail" class="form-control">
		</div>
	</div>
	<div class="form-group">
		<label for="other" class="col-sm-3 control-label ">其他：</label>
		<div class="col-sm-5">
			<input type="text" id="other"
			 placeholder="其他" class="form-control">
	</div>
	</div>
	<div class="form-group center-block">
		<button class="btn btn-success" type="submit">保存修改</button>
		<button class="btn btn-warning" type="reset">恢复修改</button>
	</div>
</form>
</div><!-- end of col-sm-8 and the main form -->
</div><!-- end of container -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>