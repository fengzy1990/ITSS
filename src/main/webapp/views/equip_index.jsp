<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/login.css" />
<script type="text/javascript" src="${APP_PATH}/static/js/login.js"></script>
</head>

<body>
	<marquee>欢迎登陆自主创新平台!!!</marquee>
	<div id="login_frame">

		<p id="image_logo">
			<img src="../static/img/fly.png">
		</p>

		<form method="post" action="${APP_PATH}/static/js/login.js">

			<p>
				<label class="label_input">用户名</label><input type="text"
					id="username" class="text_field" />
			</p>
			<p>
				<label class="label_input">密码</label><input type="password"
					id="password" class="text_field" />
			</p>

			<div id="login_control">
				<input type="button" id="btn_login" value="登录" onclick="login();" />
				<a id="forget_pwd" href="equip_forget_pwd.html">忘记密码？</a>
			</div>
		</form>
	</div>

</body>
</html>