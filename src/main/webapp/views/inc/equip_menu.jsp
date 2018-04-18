<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script src="${APP_PATH}/static/js/jquery-2.2.4.min.js"></script>
<script
	src="${APP_PATH}/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="${APP_PATH}/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	type="text/css">
<title>菜单</title>
</head>
<body>
	<nav class="navbar navbar-default"
		style="background-color: antiquewhite;"> <!--应用到BOOTSTRAP的项目必须在其DIV中的class值添加container或container-fluid(流式布局)-->
	<div class="container">

		<!--这里制作LOGO和缩小页面后的展开按钮-->
		<div class="navbar-header">
			<img src="${APP_PATH}/static/img/fly.png" width="80" height="60"
				hspace="10" vspace="2" />
		</div>
		<!--这里制作导航首页，论坛等各个按钮-->
		<div class="collapse navbar-collapse" id="aaaa">
			<ul class="nav  navbar-nav">
				<li><a href="equip_main.jsp">首页</a></li>
				<li><a href="equip_login.jsp" target="_blank">设备登录</a></li>
				<li><a href="http://www.baidu.com" target="_blank">厂家记录</a></li>
				<li><a href="equip_maintance.jsp" target="_blank">设备维护</a></li>
				<li><a class="dropdown-toggle" id="dropdownMenu"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="true">全部 <span class="caret"></span></a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenu">
						<li><a href="http://www.baidu.com" target="_blank">生活</a></li>
						<li><a href="http://www.baidu.com" target="_blank">教育</a></li>
						<li><a href="http://www.baidu.com" target="_blank">经济</a></li>
					</ul></li>
			</ul>
			<!--这里制作导航页面的搜索框-->
			<div class="navbar-form navbar-left visible-lg-block">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="输入关键字">
					<span class="input-group-btn">
						<button class="btn btn-success">搜索</button>
					</span>
				</div>
			</div>
			<!--这里制作导航栏中的用户注册和登陆链接-->
			<div class="navbar-right navbar-text">
				<a href="#" class="navbar-link">张三</a> | <a href="/logout"
					class="navbar-link">注销</a>
			</div>
		</div>
	</div>
	</nav>
</body>
</html>