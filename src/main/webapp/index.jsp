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

</head>
<body>
	<table height="100%" width="100%">
		<tr>
			<td align="center">
				<table width="800" height="662"
					background="static/img/login/imac1.png" style="margin-top: 40px">
					<!-- 搭建显示页面 -->
					<tr>
						<td align="center" style="margin-top: 0px"><h2>欢迎登录IT系统支撑</h2></td>
						<td align="center">
							<form method="post" name="loginForm" id="loginForm"
								action="checkuser" onsubmit="return(validate());">
								<table>
									<tr>
										<td>
												<span class="glyphicon glyphicon-star" aria-hidden="true"></span> 用户名：
										</td>
										<td>
												<input type="text" class="form-control" name="inputName"
													placeholder="请输入登录名">
										</td>
									</tr>
									<tr>
										<td>
											<span class="glyphicon glyphicon-star" aria-hidden="true"></span> 密码：
										</td>
										<td>
												<input type="password" class="form-control"
													name="inputPassword" placeholder="请输入密码">
											</td>
									</tr>
									<tr>
										<td>
											<div class="form-group">
												<input type="submit" id="login_btn"
													class="btn btn-primary btn-lg" value="登陆" />
											</div>
										</td>
										<td>
											<div class="form-group">
												<input type="reset" id="login_btn"
													class="btn btn-primary btn-lg" value="重置" />
											</div>
										</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
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
	/* $("#login_btn").click(function() {
		//发送ajax请求，保存更新的信息
		$.ajax({
			url : "${APP_PATH}/checkuser/",
			type : "POST",
			data : $("#loginForm").serialize(),
			success:function(data){
				if(data==0)
					 window.location.href = "${APP_PATH}/views/aa.jsp";
				
			}
		});
	}); */
</script>
</html>
