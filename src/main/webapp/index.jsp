<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>IT支撑系统 - 登录</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- web路径问题
	不易/开始的相对路径，找资源，是以当前资源的路径为基准，经常出现问题。
	以/开始的相对路径，找资源，是以服务器的路径为标准（http://xxx:9909）
 -->
<!-- 引入jQuery样式 -->
<script type="text/javascript"
	src="${APP_PATH}/static/js/jquery-1.12.4.min.js"></script>
<!-- 引入样式 -->
<link
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
.center-vertical {
	position: relative;
	top: 50%;
	transform: translateY(-50%);
}

.col-center-block {
	float: none;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>

<body>
	<!-- 搭建显示页面 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1></h1>
			</div>
		</div>
		<div class="col-xs-6 col-md-4 col-center-block">
			<form method="post" name="loginForm"  id="loginForm">
				<div class="form-group">
					<label for="inputName">用户名</label> <input type="text"
						class="form-control" name="inputName" placeholder="请输入登录名">
				</div>
				<div class="form-group">
					<label for="inputPassword">密码</label> <input type="password"
						class="form-control" name="inputPassword" placeholder="请输入密码">
				</div>
				<button type="button" id="login_btn" class="btn btn-primary btn-lg"
					onclick="validate()">登录</button>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		function validate() {
			if (document.loginForm.inputName.value == "") {
				alert('请输入登录名！');
				document.loginForm.inputName.focus();
				return false;
			}
			if (document.loginForm.inputPassword.value == "") {
				alert('请输入密码！');
				document.loginForm.inputPassword.focus();
				return false;
			}

			return true;
		}
		$("#login_btn").click(function() {
			//发送ajax请求，保存更新的信息
			$.ajax({
				url : "${APP_PATH}/checkuser/",
				type : "POST",
				data : $("#loginForm").serialize(),
			});
		});
	</script>
</body>
</html>
