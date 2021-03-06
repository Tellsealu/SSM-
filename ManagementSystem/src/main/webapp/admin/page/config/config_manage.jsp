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
<link href="${pageContext.request.contextPath}/static/common/manage/base.css" rel="stylesheet"/>
<!-- 引入manage 的基础css -->
</head>
<style>
body{
	padding-top: 10px;
}
.layui-table-view {
	margin: 0px 0 !important;
}
/*修改table里复选框  有点靠上*/
.layui-table-cell .layui-form-checkbox {
    top: 6px;
}
.layui-table-toolbar{
	overflow: hidden;
	width: 100%;
}

/*修复单元格元素，单选框在我的layui-v2.1.5  有点向上的bug 原始是8px改为0px  再宽一点。原始不是60  */
.layui-form-switch{
	width: 60px;
	margin-top: 0px;
}
</style>
<body>
<script>
var w ;//窗口的宽
var h ;//窗口的高

//检测定义的宽和高，是否合适。
function checkWindow(){
	console.log("窗口的宽是:"+$(document).width());
	console.log("窗口的高是:"+$(document).height());
	
    //$(window).height()获取当前窗体的高度
    //$(document).height()获取当前文档的高度
    
	if(h>$(window).height()){
		h = ($(window).height()-50);
	}
	if(w>$(document).width()){
		w = ($(document).width()-50);
	}
}

//打开编辑窗口
function edit(id){
	w = 700;
	h = 1200;
	checkWindow();
	layer.open({
	  type: 2,
	  title: '修改',
	  shadeClose: true,
	  shade: 0.8,
	  area: [w+'px', h+'px'],
	  content: '/houtai/config/edit?id='+id //iframe的url
	});
}


//子窗口调用 的  关闭窗口方法 
function closeDlg(msg){
	 layer.closeAll();
	 layer.msg(msg);
	 location.replace(location.href);
}

function refresh_(){
	location.replace(location.href);
}

function seeImg(url){
	w = 700;
	h = 600;
	checkWindow();
	//iframe层
	layer.open({
	  type: 2,
	  title: '图片',
	  shadeClose: true,
	  shade: 0.8,
	  area: [w+'px', h+'px'],
	  content: "${pageContext.request.contextPath}"+url //iframe的url
	});
}

</script>

		
	<div class="layui-form">
	  <table class="layui-table">
	    <colgroup>
	      <col width="150">
	      <col width="150">
	    </colgroup>
	    
	    <thead>
	      <tr>
	        <th>值</th>
	        <th>内容</th>
	      </tr> 
	    </thead>
	    <tbody>
	      
	      <tr>
	        <td>【网站标题】</td>
	        <td>${config.domain_name }</td>
	      </tr>
	      
	      <tr>
	        <td>【网站地址】</td>
	        <td>${config.web_site }</td>
	      </tr>
	      
	      
	    </tbody>
	  </table>
	</div>


<button onclick="edit(1)" class="layui-btn">修改配置</button>

<button onclick="refresh_()" class="layui-btn">刷新</button>
 
</div>

<script>
	layui.use([ 'laydate', 'laypage', 'layer', 'table', 'carousel',
			'upload', 'element' ], function() {
		var laydate = layui.laydate //日期
		, laypage = layui.laypage //分页
		layer = layui.layer //弹层
		, table = layui.table //表格
		, carousel = layui.carousel //轮播
		, upload = layui.upload //上传
		, element = layui.element//元素操作
		,form = layui.form; 
	});
</script>


</body>
</html>
