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
<body>
<script>
var global_ids;
var global_ids_len;

var w ;//窗口的宽
var h ;//窗口的高

//添加
function add(){
	w = 600;
	h = 500;
	checkWindow();
	//iframe层
	layer.open({
	  type: 2,
	  title: '添加',
	  shadeClose: true,
	  shade: 0.8,
	  area: [w+'px', h+'px'],
	  content: '/houtai/clientType/add' //iframe的url
	});
}

//打开编辑窗口
function open_edit(id){
	w = 600;
	h = 500;
	checkWindow();
	layer.open({
	  type: 2,
	  title: '修改',
	  shadeClose: true,
	  shade: 0.8,
	  area: [w+'px', h+'px'],
	  content: '/houtai/clientType/edit?id='+id //iframe的url
	});
}

//子窗口调用 的  关闭窗口方法 
function closeDlg(msg){
	 layer.closeAll();
	 layer.msg(msg);
	 reload_data();
}

//相当前刷新  重新加载
function reload_data(){
	table.reload('table', {
		 where: {
	        }
    });
}
 
function del(ids){
	var index = layer.load(1, {
		  shade: [0.1,'#fff'] //0.1透明度的白色背景
	});
	$.post('/admin/clientType/delete',{ids:ids},function(result){
		if(result.success){
			layer.closeAll();
			layer.msg('删除成功');
			reload_data();
		}else{
			layer.closeAll();
			layer.msg(result.msg);
		}
	},'json');
}

function table_edit_update(id,field,value){
	$.post('/admin/clientType/update?'+field+'='+value,{id:id},function(result){
		if(result.success){
			layer.msg('修改成功');
		}else{
			layer.closeAll();
			layer.msg(result.msg);
		}
	},'json');
}
</script>

<div class="layui-form" style="min-width:1000px;">

<div class="layui-table-toolbar" style="margin-bottom: 3px; ">
	<div class="layui-btn-group">
		<button onclick="add()"  class="layui-btn   layui-btn-warm layui-btn-sm"><i class="layui-icon">&#xe654;</i>添加</button>
		<button onclick="delSelected()" class="layui-btn layui-btn-sm layui-btn-danger"><i class="layui-icon">&#xe640;</i>删除</button>
	    <button class="layui-btn layui-btn-sm layui-btn-normal" onclick="reload_data()"><i class="layui-icon">&#x1002;</i>刷新</button>
 	 </div>
</div>
<table class="layui-hide"   id="table" lay-filter="table"></table> 
<script type="text/html" id="table_bar">
<div class="layui-btn-group">
	<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="edit">修改</a>
</div>

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
			    ,url: '/admin/clientType/list',
			    height: 'full-100',
			   cols: [[
			       {checkbox: true, fixed: true},
			      {field:'id', title: 'ID', width:120,style:'font-size: 7px;' },
			      {field:'order_', title: '排序号', width:120, edit: 'text'},
			      {field:'name', title: '类型名称', width:120, edit: 'text' },
			      {fixed:'right', width:120,title: '操作',  toolbar: '#table_bar'}
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
				
				//监听单元格编辑
				  table.on('edit(table)', function(obj){
				    var value = obj.value //得到修改后的值
				    ,data = obj.data //得到所在行所有键值
				    ,field = obj.field; //得到字段
				    //layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
				    table_edit_update(data.id,field,value);
				  });
				
		});
</script>


</body>
</html>
