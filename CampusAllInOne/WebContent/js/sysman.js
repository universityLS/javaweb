$(function(){
	    var jsonMess;
	    var editor;
		var account = 1;
		var accounts = 1;
		var lostmessacc = 1;
		function testalert(){
			alert("123");
		}
//		$("td").attr("contenteditable",'true');
		$("#accordion").accordion({
			event:"mouseover",
			heightStyle: "content"//非自动高度
		});
		var tabTitle = $( "#tab_title" ),
	      tabContent = $( "#tab_content" ),
	      tabTemplate = "<li><a href='#{href}'>#{label}</a> <span class='ui-icon ui-icon-close' role='presentation'>Remove Tab</span></li>",
	      tabCounter = 6;
	 
	    var tabs = $( "#tabs" ).tabs({
	    	 event: "mouseover",
	    	 heightStyle:"content"
	    });
	    
	    // 模态对话框的初始化：自定义按钮和一个重置内部表单的 "close" 回调
	    var dialog = $( "#dialog" ).dialog({
	      autoOpen: false,
	      modal: true,
	      buttons: {
	        Add: function() {
	          addTab();
	          $( this ).dialog( "close" );
	        },
	        Cancel: function() {
	          $( this ).dialog( "close" );
	        }
	      },
	      close: function() {
	        form[ 0 ].reset();
	      }
	    });
	 
	    // addTab 表单：当提交时调用 addTab 函数，并关闭对话框
	    var form = dialog.find( "form" ).submit(function( event ) {
	      addTab();
	      dialog.dialog( "close" );
	      event.preventDefault();
	    });
	 
	    // 实际的 addTab 函数：使用上面表单的输入添加新的标签页
	    function addTab() {
	      var label = tabTitle.val() || "Tab " + tabCounter,
	        id = "tabs-" + tabCounter,
	        li = $( tabTemplate.replace( /#\{href\}/g, "#" + id ).replace( /#\{label\}/g, label ) ),
	        tabContentHtml = tabContent.val() || "Tab " + tabCounter + " content.";
	 
	      tabs.find( ".ui-tabs-nav" ).append( li );
	      tabs.append( "<div id='" + id + "'><p style='word-wrap: break-word; word-break: normal;'>" + tabContentHtml + "</p></div>" );
	      tabs.tabs( "refresh" );
	      tabCounter++;
	    }
	 
	    // addTab 按钮：值打开对话框
	    $( "#add_tab" )
	      .button()
	      .click(function() {
	        dialog.dialog( "open" );
	      });
	 
	    // 关闭图标：当点击时移除标签页
	    tabs.delegate( "span.ui-icon-close", "click", function() {
	      var panelId = $( this ).closest( "li" ).remove().attr( "aria-controls" );
	      $( "#" + panelId ).remove();
	      tabs.tabs( "refresh" );
	    });
//	 	$("#tabs ul li").bind("click",function(){
//	 		$("table").toggle("slide", 100 )
//	 	});
	    tabs.bind( "keyup", function( event ) {
	      if ( event.altKey && event.keyCode === $.ui.keyCode.BACKSPACE ) {
	        var panelId = tabs.find( ".ui-tabs-active" ).remove().attr( "aria-controls" );
	        $( "#" + panelId ).remove();
	        tabs.tabs( "refresh" );
	      }
	    });
	    //表格删除一行数据,deltabl为新增加的行添加事件
//	    function deltabl(num){
//	    	
//	    	account = account + 1 ;//加一避免重复添加click事件
//	    	$("#" + num).bind("click",function(){
//	    	if(confirm("确定删除？")){
//	    		console.log($(this));
//	    	$(this).parent().parent().remove();}
//	    });
//	    }
	    
	    //编辑td事件
//	    $("span.glyphicon-pencil").bind("click",function(){
//	    	$(this).parent().parent().attr("contenteditable",'true');
//	    	$(this).parent().attr("contenteditable",'false');
//	    	$(this).parent().parent().blur(function(){
//	    		if(confirm("确定保存修改")){
//	    			//保存到数据库
//	    		}
//	    		$(this).unbind("click");
//	    	});
//	    });
	    
//	     $("#delBtn").bind("click", function(){
//		  //alert($("input:checked"));
//		  $("input:checked").parent().parent().remove(); 
//		 });
//		 $("#addBtn").bind("click",function(){
//		 	$("#tabs-1 table").append('<tr><td>a</td><td>a</td><td>a</td><td>a</td><td><span class="glyphicon glyphicon-pencil"  onclick="delline(this);"></span><span id="'+account+'" class="glyphicon glyphicon-remove"></span></td></tr>');
//		 	deltabl(account);
//		 });

});
	var $mytable = $('#mytable5').bootstrapTable({
		 columns: [{
		        field: 'myid',
		        title: 'ID',
		    }, {
		        field: 'imgsrc',
		        title: 'IMGSRC'
		    }, {
		        field: 'title',
		        title: 'TITLE',
//		        editable: true,
//	            footerFormatter: TitleFormatter
		    }, {
		        field: 'myarticle',
		        title: 'ARTICLE',
//		        editable: true,
//		        footerFormatter: ArticleFormatter
		    }, {
		        field: 'opera',
		        title: 'OPERA',
	            formatter: function(value,row,index){
	            	var e = '<span class="glyphicon glyphicon-pencil"></span>';
	            	var d = '<span id="remove" class="glyphicon glyphicon-remove" onclick="delline('+ row.myid +')"></span>';
	            	return e+d;
	            }
		    }
		    
		    ],
		    data: ajaxData(),
		    onClickCell:function(field, value, row, $element){
		    },
//		    url: '/Home/GetDepartment', //请求后台的URL（*）
//		    method: 'get', //请求方式（*）
		    toolbar: '#toolbar', //工具按钮用哪个容器
//		    striped: true, //是否显示行间隔色
		    cache: false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		    pagination: true, //是否显示分页（*）
//		    sortable: false, //是否启用排序
//		    sortOrder: "asc", //排序方式
//		    queryParams: oTableInit.queryParams,//传递参数（*）
//		    sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
//		    pageNumber:1, //初始化加载第一页，默认第一页
		    pageSize: 10, //每页的记录行数（*）
		    pageList: [10, 25, 50, 100], //可供选择的每页的行数（*）
		    search: true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
//		    strictSearch: true,
//		    showColumns: true, //是否显示所有的列
		    showRefresh: true, //是否显示刷新按钮
//		    minimumCountColumns: 2, //最少允许的列数
		    clickToSelect: true, //是否启用点击选中行
//		    height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
//		    uniqueId: "ID", //每一行的唯一标识，一般为主键列
//		    showToggle:true, //是否显示详细视图和列表视图的切换按钮
//		    cardView: false, //是否显示详细视图
//		    detailView: false, //是否显示父子表

	});
	$("#remove").click(function () {
		console.log("点击了remove");
    });
function delline(ids){
	console.log(ids);
	$('#mytable5').bootstrapTable('remove', {
         field: 'myid',
         values: ids
     });
}
//$("span.glyphicon-remove").bind("click",function(){
//	if(confirm("确定删除remove？")){
//	$(this).parent().parent().remove();}
//});
function mess(myid, imgsrc, title, article){
	 this.myid = myid;
	 this.imgsrc = imgsrc;
	 this.title = title;
	 this.myarticle = article;
}

function ajaxData(){
	 var myMess = new Array();
		$.ajax({
			type:"GET",
			data:{},
			url:"indexPage.spring?t=" + new Date().getTime(),
			contentType:"application/json",
			dataType:"json",
			async: false,
			success:function(data,type){
				for(var i = 0; i< data.length; i++){
					var record = data[i];
					myMess[i] = new mess(record.myid, '<img src='+ record.imgsrc +' style="width: 150px;height: 100px;">', record.title, record.myarticle);
				}
				jsonMess=$.parseJSON(JSON.stringify(myMess));
			}
		});
		console.log(jsonMess);
		return jsonMess;
	}