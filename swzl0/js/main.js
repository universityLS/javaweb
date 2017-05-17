
$(function(){
	$("#goodsMessageTable").dataTable({
		paging:true,
		sort:false,
		"bFilter": true,				//过滤功能
		destroy:true,					//Cannot reinitialise DataTable,解决重新加载表格内容问题
		"language": {
					'emptyTable': '没有数据',    
					'loadingRecords': '加载中...',    
					'processing': '查询中...',    
					'search': '搜索:',    
					'lengthMenu': '每页 _MENU_ 条记录',    
					'zeroRecords': '没有数据',    
					'paginate': {      
									'next':       '下一页',    
									'previous':   '上一页'    
								},    
					'info': '第 _PAGE_ 页 / 共 _PAGES_ 页',    
					'infoEmpty': '没有数据',    
					'infoFiltered': '(从 _MAX_ 条记录中筛选)'  
				}
		});
});

