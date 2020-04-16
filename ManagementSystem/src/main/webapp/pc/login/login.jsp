<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- JSTL -->

${config.headStr}
${config.layuiStr}


<body>
	${msg }</br>
	<a href="${pageContext.request.contextPath }/pc/regist.jsp">去注册</a>
</body>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>后台登录</title>
		<link rel="stylesheet" type="text/css" href="../static/layui-v2.2.5/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="../static/layui-v2.2.5/layui/css/login.css" />
	</head>

<body>
		<div class="m-login-bg">
			<div class="m-login">
				<h3>后台系统登录</h3>
				<div class="m-login-warp">
				<form id="fm" class="layui-form"  action="/admin/main">
			<div class="layui-form-item">
				<label class="layui-form-label">帐号</label>
				<div class="layui-input-block">
					<input type="text" id="name" lay-verify="title" autocomplete="off" placeholder="请输入帐号" onkeydown="if(event.keyCode==13) go_login()" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码</label>
				<div class="layui-input-block">
					<input type="password" id="password" lay-verify="title" autocomplete="off" placeholder="请输入密码" onkeydown="if(event.keyCode==13) go_login()"  class="layui-input">
				</div>
			</div>
					</form>
		
		
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn layui-btn-normal" onclick="go_login()" lay-submit="" lay-filter="">登陆</button>
				<button type="reset" onclick="clearData()" class="layui-btn layui-btn-primary">取消</button>
			</div>
			
		</div>
	</div>
						</div>
						</div>
				</div>
				<p class="copyright"></p>
			</div>
		</div>
		<script src="../static/layui-v2.2.5/layui/layui.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
	$(function() {
		$("#name").focus();
	});
	
	function go_login() {
		var index = layer.load(1, {
			shade : [ 0.1, '#fff' ]
		//0.1透明度的白色背景
		});
		
		var name = $("#name").val();
		var password = $("#password").val();
		
		if (name == null || name == "") {
			layer.closeAll();
			layer.alert('请输入帐号!');
			return;
		}
		
		if (password == null || password == "") {
			layer.closeAll();
			layer.alert('请输入密码!');
			return;
		}
		
		$.post('/user/login', {
			name : name,
			password : password
		}, function(result) {
			if (result.success) {
				layer.closeAll();
				//document.location.href = "/admin/main";
				//window.open("/admin/main");
				//window.location.href = "/admin/main";
				$("#name").val("");
				$("#password").val("");
				window.location.href = "/admin/main";
			} else {
				layer.closeAll();
				layer.alert('密码错误!');
				
				$("#error").html(result.msg);
			}
		}, 'json');

	}
</script>
</head>


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
});
</script>
</body>
</html>