<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<style type="text/css">
.body {
	margin-top: 0;
	border: 0;
	width: 100%;
	height: 30;
	background-image: url("${APP_PATH}/static/img/banner.jpg");
	background-size : 100%; 
	background-repeat: repeat-x;
}

</style>

</head>
<body class="body">
	<div style="text-align: right;margin-right: 10;">
		<font color="#FF0000">当前用户：<!-- <%=session.getAttribute("SESSION_USER")%> --></font>
	</div>
</body>
</html>
