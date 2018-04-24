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
	src="${APP_PATH}/static/js/jquery-2.2.4.min.js"></script>
<!-- 引入样式 -->
<link
	href="${APP_PATH}/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH}/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
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
</script>
</head>
<style>
.center {
	align: center;
	text-align: center;
}

label {
	font-family: 'Times New Roman', Times, serif;
	font-size: 20px;
}
</style>
<body style="background-image: url('static/img/timg.jpg');">
	<div class="container" style="height: 50%; vertical-align: middle;">
		<div class="row">&nbsp;</div>
		<div class="row">&nbsp;</div>
		<div class="row">&nbsp;</div>
		<div class="row">&nbsp;</div>
		<div class="row">
			<div class="col-md-6">
				<div class="jumbotron"
					style="background-image: url('static/img/bgindex.jpg'); b: 1px solid red;">
					<h1>Hello,ITSS!</h1>
					<p>ITSS, Information Internet support system.</p>
					<p>
						<a class="btn btn-primary btn-lg" href="#" role="button">Learn
							more</a>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<table width="100%" height="100%"
					style="justify-content: center; align: center; background-size: 100%; background-repeat: no-repeat;">
					<!-- 搭建显示页面 -->
					<thead>
						<tr style="padding-top: 10%;">
							<th><h1 class="center">Welcome,Login ITSS!</h1></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<form class="form-horizontal" method="post" name="loginForm"
									id="loginForm" action="checkuser"
									onsubmit="return(validate());">
									<div class="form-group">
										<label for="inputName">用户名：</label> <input type="text"
											class="form-control" name="inputName" id="inputName">
									</div>
									<div class="form-group">
										<label for="inputPassword">密 码：</label> <input type="password"
											class="form-control" name="inputPassword" id="inputPassword">
									</div>
									<div class="form-group center">
										<input type="submit" id="login_btn"
											class="btn btn-primary btn-lg" value="登陆" /> <input
											type="reset" id="login_btn" class="btn btn-primary btn-lg"
											value="重置" />
									</div>
								</form>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
