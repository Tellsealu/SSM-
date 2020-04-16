<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title}</title>

<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- JSTL -->

${config.headStr}

${config.layuiStr}

<!-- 加入移动布局 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no"/>
<!-- 加入移动布局 -->

<!-- 引入manage 的基础css -->
<script	src="${pageContext.request.contextPath}/static/common/manage/manage_base.js"></script>
<link href="${pageContext.request.contextPath}/static/common/manage/manage_base.css" rel="stylesheet"/>
<!-- 引入manage 的基础css -->

</head>
<style>

/*修改table表格  左右内边框 为0*/
.layui-table-cell {
	padding-left: 0px;
	padding-right: 0px;
	text-align: center;
}
/*修改table表格 左右内边框 为0*/

</style>
<body>
<script>
var blobal_ids;
var blobal_ids_len;

var w ;//窗口的宽
var h ;//窗口的高



//子窗口调用 的  关闭窗口方法 
function closeDlg(msg){
	 layer.closeAll();
	 layer.msg(msg);
	 reload_data();
}

//相当前刷新  重新加载
function reload_data(){
	var q = $("#q").val();
	var date1  = $("#startDateTime").val();
	var date2 = $("#endDateTime").val();
	
	table.reload('table', {
		 where: {q:q,date1:date1,date2:date2
	        }
    });
}


</script>

<div class="layui-form" style="min-width:1000px;">

<div class="layui-table-toolbar" style="margin-bottom: 3px; ">
	<div class="layui-btn-group">
	    <button class="layui-btn layui-btn-sm layui-btn-normal" onclick="reload_data()"><i class="layui-icon">&#x1002;</i>刷新</button>
 	 </div>
</div>

<div class="layui-form layui-form-pane" style="margin-bottom: 3px; "  >
	<div class="layui-form-item" style="margin-bottom: 1px; min-width:1051px;">
		<label class="layui-form-label">开始时间</label>
		<div class="layui-input-inline">
			<input type="text" class="layui-input" v-model="startDateTime" value="<fmt:formatDate value="${activity.startDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"  id="startDateTime" placeholder="">
		</div>
		<label class="layui-form-label">截止时间</label>
		<div class="layui-input-inline">
			<input type="text" class="layui-input" v-model="endDateTime" value="<fmt:formatDate value="${activity.endDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"  id="endDateTime" placeholder="">
		</div>
		
	    <label class="layui-form-label" style="width: 97px;">模糊查询</label>
	    <div class="layui-input-inline" style="  width: 150px; margin-right: -1px;">
	      <input class="layui-input" id="q" onkeydown="if(event.keyCode==13) reload_data()" placeholder="" ">
	    </div>
	    <div class="layui-input-inline" style="  width: 113px;">
	    	<a class="layui-btn layui-btn-normal" onclick="reload_data()">查询</a>
	    </div>
    </div>
</div>


<table class="layui-hide"   id="table" lay-filter="table"></table> 

<script type="text/html" id="format_goods">
	{{# for(var i=0;i<d.info.size();i++){ }}
	{{#     }  }}
</script>




<script type="text/html" id="format_createUser">
  {{#  if(d.createUserId != null){ }}
	 {{d.createUser.trueName}}
  {{#  } else { }}
  {{#  } }}
</script>





<script>
		layui.use([ 'laydate', 'laypage', 'layer', 'table', 'carousel',
				'upload', 'element' ], function() {
			var laydate = layui.laydate //日期
			, laypage = layui.laypage //分页
			layer = layui.layer //弹层
			, table = layui.table //表格
			, carousel = layui.carousel //轮播
			, upload = layui.upload //上传
			, element = layui.element; //元素操作
			  table.render({
			    elem: '#table'
			    ,url: '${table_url}',
			    height: 'full-100',
			   cols: [[
			        
			           
			       {checkbox: true, width:50, fixed: true},
			      {field:'clientName', title: '客户姓名', width:80 ,style:'font-size: 12px; '}
			       ,{field:'carno', title: '卡号', width:120,  style:'font-size: 12px;'}
			       
			      ,{field:'money', title: '消费金额', width:80,  style:'font-size: 12px;'}
			      ,{field:'balance', title: '卡余额', width:80,  style:'font-size: 12px;' }
			      ,{field:'createDateTime', title: '创建时间', width:200,style:'font-size: 12px;'}
			      ,{field:'createUserId', title: '创建人', width:150,style:'font-size: 12px;',templet: '#format_createUser' }
			      ,{field:'remark', title: '备注', width:150,style:'font-size: 12px;'}
			    ]]
			    ,id: 'table'
			    ,page: true
			    ,limits:[10,50,100,200,500,1000],
			   limit:100
			  });
			
			//监听工具条 table_bar
				table.on('tool(table)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
					var data = obj.data //获得当前行数据
					, layEvent = obj.event; //获得 lay-event 对应的值
					if (layEvent === 'bill') {
						if(data.id)
						bill(data.id)
					} else if (layEvent === '') {
						see_hongbao(data.id);
					} else if (layEvent === 'edit') {
						if(data.id)
						open_edit(data.id);
						
					} else if(layEvent === 'deposit'){
						if(data.id)
						deposit(data.id);
					}else if(layEvent ==='consumption'){
						if(data.id)
						consumption(data.id);
					}
				});
			
		
			
			
				//日期时间选择器
				  laydate.render({
				    elem: '#startDateTime'
				    ,type: 'datetime'
				  });
				  laydate.render({
				    elem: '#endDateTime'
				    ,type: 'datetime'
				  });
				
		});
</script>


</body>
</html>
