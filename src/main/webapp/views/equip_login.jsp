<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${APP_PATH}/static/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript"
	src="${APP_PATH}/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${APP_PATH}/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	type="text/css">
<title>设备登录</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<%@ include file="inc/equip_menu.jsp"%>
		</div>
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>设备登录</h1>
						<hr>
					</div>
				</div>
				<div class="row">
					<table class="table table-hover" id="equip_table">
						<thead>
							<tr>
								<th>#</th>
								<th>设备名称</th>
								<th>地址</th>
								<th>端口</th>
								<th>登录名</th>
								<th>方式</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>