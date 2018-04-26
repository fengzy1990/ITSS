<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<title>IT System Support</title>
<style>
.trtd {
	font-size: 25px;
	color: #ffffff;
	letter-spacing: 15px;
}
</style>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
	<table align="center" width="100%" height="60" border="0"
		cellpadding="0">
		<tr>
			<td align="left"><img src="${APP_PATH}/static/img/fly.png"
				height="60" align="middle" /></td>
			<td align="center" class="trtd">自主创新平台</td>
			<td align="center" style="color: #ffffff;">当前用户：<%=session.getAttribute("SESSION_USER")%>
				|<a href="userLogout">注销</a>
			</td>
		</tr>
	</table>
</body>
</html>