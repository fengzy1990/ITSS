<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>IT System Support</title>
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
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row" style="background-color: black;">
			<%@ include file="inc/top.jsp"%>
		</div>
		<div class="row">
			<div class="container">
				<div class="row">
					<h2>请选择要进入的系统模块</h2>
				</div>
				<div class="row">
					<table class="table table-hover">
						<tr>
							<td><ul>
									<li><a href="views/usercontacts.jsp">维护厂家联系人</a></li>
								</ul></td>
							<td><ul>
									<li><a href="#">机房设备维护</a></li>
								</ul></td>
							<td><ul>
									<li><a href="views/equip_index.jsp">系统维护操作</a></li>
								</ul></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<%@ include file="inc/foot.jsp"%>
		</div>
	</div>
</body>
</html>
