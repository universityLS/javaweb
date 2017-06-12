<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
<body>
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
				<a href="#tabs-1">查看所有用户</a>
				<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				</li>
				<li>
					<a href="#tabs-2">查看所有用户</a>
				<span class="ui-icon ui-icon-close" role="presentation">移除标签页</span>
				</li>
			</ul>
			<div id="tabs-1">
				<div id="toolbar" class="btn-group">
					<button id="btn_add" type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
			        </button>
			        <button id="btn_edit" type="button" class="btn btn-default">
			              <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
			         </button>
			         <button id="btn_delete" type="button" class="btn btn-default">
			              <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
			         </button>
			    </div>
				<table id="table">
				</table>
				</div>
				<div id="tabs-2">
				<button id="add_tab" class="btn btn-default">添加标签页</button>
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
		 <div id="editdialog" title="编辑内容">
		 	<form>
		 		图片：<input id="imgput_b" type="file">
		 		<img id="imgput" alt="" src="" style="width: 150px;height: 100px;">
		 		<br>
		 		标题：<input id="input1" type="text" value="123">
		 		<br>
		 		内容：<textarea id="input2" rows="4" cols="40"></textarea><br>
		 		<button type="button" onclick="InsertThingsMess()">保存修改</button>
		 		<button>取消</button>
		 	</form>
		 </div>
	</div>
</div>

	<script type="text/javascript" src="js/json2.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.1.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/jquery-ui.js" ></script>
	
	<script type="text/javascript" src="js/bootstrap-table.js"></script>
	<script type="text/javascript" src="js/bootstrap-table-editable.js"></script>
	<script type="text/javascript" src="js/Sys.js"></script>
	<script src="js/bootstrap-table-zh-CN.js"></script>
	<script>
	$(function () {
	    //1.初始化Table
	    var oTable = new TableInit();
	    oTable.Init();

	    //2.初始化Button的点击事件
	    var oButtonInit = new ButtonInit();
	    oButtonInit.Init();
	    
	    $("#editdialog").dialog({
	    	autoOpen:false,
	    	width:500,
	    	height:400
	    });
	    
	});
	var imgname;
	$("#imgput_b").on("change",function(){
		imgname = this.files[0].name;
		
   	 var objUrl = getObjectURL(this.files[0]);
   	 
   	 if (objUrl) {
   		 $("#imgput").attr("src", objUrl) ; //将图片路径存入src中，显示出图片
   		 }
   });
   function getObjectURL(file) {
   	 var url = null ;
   	 if (window.createObjectURL!=undefined) { // basic
   	 url = window.createObjectURL(file) ;
   	
   	 } else if (window.URL!=undefined) { // mozilla(firefox)
   	 url = window.URL.createObjectURL(file) ;
   	
   	 } else if (window.webkitURL!=undefined) { // webkit or chrome
   	 url = window.webkitURL.createObjectURL(file) ;
   	
   	 }
   	 return url ;
   	 }
	function ThingsMess(imgsrc,title,myarticle){
		this.imgsrc = imgsrc;
		this.title = title;
		this.myarticle = myarticle;
	}
	function InsertThingsMess(){
		console.log(imgname+$("#input1").val()+$("#input2").val());
		var thingsmess = new ThingsMess(imgname,$("#input1").val(),$("#input2").val());
		var jsonthingsmess = JSON.stringify(thingsmess);
		console.log(jsonthingsmess);
		$.ajax({
			type: "POST",
			data: jsonthingsmess,
			url: "insertThingsMess.action?t=" + new Date().getTime(),
			contentType: "application/json"
		});
		/* $.post("insertThingsMess.action?t=" + new Date().getTime(),{jsonString: jsonthingsmess}); */
	}
	var TableInit = function () {
	    var oTableInit = new Object();
	    //初始化Table
	    oTableInit.Init = function () {
	        $('#table').bootstrapTable({
	            url: 'indexPage.action?t=' + new Date().getTime(),//请求后台的URL（*）
	            method: 'POST',                      //请求方式（*）
	            toolbar: '#toolbar',                //工具按钮用哪个容器
	            striped: true,                      //是否显示行间隔色
	            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
	            pagination: true,                   //是否显示分页（*）
	            sortable: false,                     //是否启用排序
	            sortOrder: "asc",                   //排序方式
	            queryParams: oTableInit.queryParams,//传递参数（*）
	            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
	            editable: true,
	            pageNumber:1,                       //初始化加载第一页，默认第一页
	            pageSize: 3,                       //每页的记录行数（*）
	            pageList: [3, 6, 9, 12],        //可供选择的每页的行数（*）
	            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
	            strictSearch: true,
	            showColumns: true,                  //是否显示所有的列
	            showRefresh: true,                  //是否显示刷新按钮
	            minimumCountColumns: 2,             //最少允许的列数
	            /* clickToSelect: true, */                //是否启用点击选中行
	            /* height: 500, */                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
	            showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
	            cardView: false,                    //是否显示详细视图
	            detailView: false,                   //是否显示父子表
	            columns: [
	                      /* {
	                checkbox: true
	            },  */
	            {
	                field: 'id',
	                title: 'ID号'
	            }, 
	            {
	            	field: 'lost_found_flag',
	            	title: 'lost_found_flag'
	            },
	            {
	            	field: 'title',
	            	title: 'title'
	            },
	            {
	            	field: 'goods_name',
		            title: 'goods_name'
	            },
	            {
	            	field: 'description',
		            title: 'description'
	            },
	            
	            {
	                field: 'img_path',
	                title: 'img_path',
	                formatter: function(value,row,index){
                        return '<img src='+ value +' style="width: 150px;height: 100px;">';
                    }
	            }, {
	                field: 'publish_datetime',
	                title: 'publish_datetime'
	            }, 
	            {
	                field: 'catetory_id',
	                title: 'catetory_id'
	            },{
	                field: 'user_id',
	                title: 'user_id'
	            }, 
	            {
	            	field: 'finish_flag',
	                title: 'finish_flag'
	            }],
	            onClickRow: function (row, tr) {
	            	editdialog(row);
	            }
	        });
	    };

	    function editdialog(row){
	    	$("#imgput").attr("src",row.imgsrc);
	    	$("#input1").attr("value",row.title);
	    	$("#input2").val(row.myarticle);
	    	$("#editdialog").dialog("open");
	    	/* console.log("调用了函数editdialog"+row.myarticle); */
	    }
	    
	    //得到查询的参数
	    oTableInit.queryParams = function (params) {
	        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
	            limit: params.limit,   //页面大小
	            offset: params.offset,  //页码
	            departmentname: $("#txt_search_departmentname").val(),
	            statu: $("#txt_search_statu").val()
	        };
	        return temp;
	    };
	    return oTableInit;
	};


	var ButtonInit = function () {
	    var oInit = new Object();
	    var postdata = {};

	    oInit.Init = function () {
	        //初始化页面上面的按钮事件
	    };

	    return oInit;
	};
	
	</script>
</body>
</html>