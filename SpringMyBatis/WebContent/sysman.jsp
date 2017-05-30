<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-table.css">
		<link rel="stylesheet" href="css/sysman.css" />
</head>
<body >
		<div class="container">
		<div class="mynav col-md-12" >
			<ul class="nav navbar-nav navbar-left">
				<li role="presentation" class="active"><a>后台管理系统</a></li>
			</ul>
			<ul class="nav navbar-nav  navbar-right" style="margin-right: 5px;">
				<li role="presentation" class="active"><a>消息提示&nbsp;<span class="badge">4</span></a></li>
				<li role="presentation"><a>个人中心</a></li>
			</ul>
		</div>
		</div>
		<div class="container">
			<div id="accordion" class="col-md-2 col-xs-2" style="padding: 0px 0px 0px 15px;">
				<h3>用户管理</h3>
				<div>
					<ul>
						<li><a>查看用户信息</a></li>
						<li>添加用户信息</li>
					</ul>
				</div>
				<h3>拾物管理</h3>
				<div>
					<ul>
						<li>查看拾物信息</li>
						<li>添加拾物信息</li>
					</ul>
				</div>
				<h3>寻物管理</h3>
				<div>
					<ul>
						<li>查看寻物信息</li>
						<li>添加寻物信息</li>
					</ul>
				</div>
				<h3>广告管理</h3>
				<div>
					<li>查看广告信息</li>
					<li>添加广告信息</li>
				</div>
			</div>
			<div class="col-md-10 col-xs-10" style="padding: 0px 15px 0px 2px;">
				<div id="tabs">
				  <ul>
				    <li>
				    	<a href="#tabs-5">查看所有用户</a>
				    	<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				    </li>
				    <li>
				    	<a href="#tabs-2">拾物管理</a>
				    	<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				    </li>
				    <li>
				    	<a href="#tabs-3">寻物管理</a>
				    	<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				    </li>
				    <li>
				    	<a href="#tabs-4">test</a>
				    	<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				    </li>
				    <li>
				    	<a href="#tabs-1">test5</a>
				    	<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				    </li>
				  </ul>
				  
				  <div id="tabs-1">
				  	<button type="button" class="btn btn-danger" id="delBtn">删除</button>
				  	<button type="button" class="btn btn-success">保存</button>
				  	<button id="add_tab" class="btn btn-default">添加标签页</button>
				  	<button id="addBtn" class="btn btn-default">添加行</button>
				  	<button id="addBtn2" class="btn btn-default" onclick="ajaxData()">添加table</button>
				  	<table class="table table-hover" style="margin-top: 10px;" >
					  <tr>
					    <th>account</th>
					    <th>密码</th>
					    <th>用户名</th>
					    <th>权限</th>
					    <th>操作</th>
					  </tr>
					  <tr>
					    <td>1</td>
					    <td>admin</td>
					    <td>admin</td>
					    <td>manage</td>
					    <td><span class="glyphicon glyphicon-pencil" onclick="testalert(this)"></span><span class="glyphicon glyphicon-remove"></span></td>
					  </tr>
					  	<tr>
					    <td>2</td>
					    <td>admin</td>
					    <td>admin</td>
					    <td>normal</td>
					    <td><span class="glyphicon glyphicon-pencil"></span><span class="glyphicon glyphicon-remove " data-toggle="modal" data-target="#myModal"></span></td>
					  </tr>
					  	<tr>
					    <td>3</td>
					    <td>admin</td>
					    <td>admin</td>
					    <td>manage</td>
					    <td><span class="glyphicon glyphicon-pencil"></span><span class="glyphicon glyphicon-remove"></span></td>
					  </tr>
					</table>
				  </div>
				  <div id="tabs-2">
				    <table class="table table-hover">
				    	<tr>
				    		<th>Publisher</th>
				    		<th>GoodsName</th>
				    		<th>Title</th>
				    		<th>Address</th>
				    		<th>Content</th>
				    		<th>Image</th>
				    		<th>Time</th>
				    	</tr>
				    	<tr>
				    		<td>admin</td>
				    		<td>u盘</td>
				    		<td>捡到u盘</td>
				    		<td>泽园</td>
				    		<td>在岭南师范的泽园的第一个桌子捡到的</td>
				    		<td><img src="img/upan.jpg" style="width: 150px;height: 100px;"></td>
				    		<td>2017-05-17 15:00</td>
				    	</tr>
				    	<tr>
				    		<td>admin</td>
				    		<td>u盘</td>
				    		<td>捡到u盘</td>
				    		<td>泽园</td>
				    		<td>在岭南师范的泽园的第一个桌子捡到的</td>
				    		<td><img src="img/upan.jpg" style="width: 150px;height: 100px;"></td>
				    		<td>2017-05-17 15:00</td>
				    	</tr>
				    </table>
				  </div>
				  <div id="tabs-3">
				  	<table class="table table-hover">
				  		<thead>
				  		<tr>
				    		<th>Publisher</th>
				    		<th>GoodsName</th>
				    		<th>Title</th>
				    		<th>Address</th>
				    		<th>Content</th>
				    		<th>Image</th>
				    		<th>Time</th>
				    	</tr>
				    	</thead>
				    	<tbody>
				    	<tr>
				    		<td>admin</td>
				    		<td>钥匙</td>
				    		<td>丢失钥匙一把</td>
				    		<td>树人广场</td>
				    		<td>在岭南师范的树人广场的大概在石头旁丢失的</td>
				    		<td><img src="img/key.jpg" style="width: 150px;height: 100px;"></td>
				    		<td>2017-05-17 15:00</td>
				    	</tr>
				    	<tr>
				    		<td>admin</td>
				    		<td>钥匙</td>
				    		<td>丢失钥匙一把</td>
				    		<td>树人广场</td>
				    		<td>在岭南师范的树人广场的大概在石头旁丢失的</td>
				    		<td><img src="img/key.jpg" style="width: 150px;height: 100px;"></td>
				    		<td>2017-05-17 15:00</td>
				    	</tr>
				    	</tbody>
				  	</table>
				  </div>
				  <div id="tabs-4">
				  	<table id="myexample" width="100%" class="table table-hover">
				  		<thead>
				  			<tr>
				  				<th>id</th>
				  				<th>imgsrc</th>
				  				<th>title</th>
				  				<th>myarticle</th>
				  				<th>操作</th>
				  			</tr>
				  		</thead>
				  		<tbody>
				  			<tr>
				  				<!-- <td>1</td>
				  				<td>1</td>
				  				<td>1</td>
				  				<td>1</td> -->
				  			</tr>
				  		</tbody>
				  	</table>
				  </div>
				  <div id="tabs-5">
				  <div id="toolbar">
				        <button id="remove" class="btn btn-danger" disabled>
				            <i class="glyphicon glyphicon-remove"></i> Delete
				        </button>
				    </div>
				  	<table id="mytable5"></table>
				  </div>
				</div>
				
				 <div id="dialog" title="Tab data"><!--添加标签 -->
				  <form>
				    <fieldset class="ui-helper-reset">
				      <label for="tab_title">标题</label>
				      <input type="text" name="tab_title" id="tab_title" value="" class="ui-widget-content ui-corner-all">
				      <label for="tab_content">内容</label>
				      <textarea name="tab_content" id="tab_content" class="ui-widget-content ui-corner-all"></textarea>
				    </fieldset>
				  </form>
				 </div>
			</div>
		</div> <!--end  container -->
		
		<script type="text/javascript" src="js/json2.js"></script>
		<script type="text/javascript" src="js/jquery-3.1.1.js" ></script>
		<script type="text/javascript" src="js/jquery-ui.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap-table.js"></script>
		<script type="text/javascript" src="js/bootstrap-table-editable.js"></script>
		<script type="text/javascript" src="js/sysman.js"></script>
		<script src="js/bootstrap-table-zh-CN.js"></script>
		
		
</body>
</html>