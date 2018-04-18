<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script type="text/javascript" src="${APP_PATH}/static/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript"
	src="${APP_PATH}/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${APP_PATH}/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	type="text/css">
<title>主页</title>
</head>
<body
	style="margin: 0; border: 0; padding: 0; padding-top: 0; background-color: antiquewhite">
	<div class="container-fuid" style="font-size: 20px">

		<div class="row">
			<%@ include file="inc/equip_menu.jsp"%>
		</div>
		<div class="row">
			<div class="col-md-12">
				<blockquote>
					<p class="lead">为了保证系统正常运行，需要做如下配置。</p>
					<footer>2018-4-16</footer>
				</blockquote>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-md-offset-1">当前CRT配置路径</div>
			<div class="col-md-6">
				<label class="crtRoute" id="crtRoute">c:\Programs
					File\SecureCRT.exe</label>
			</div>
		</div>
		<div class="row">
			<form>
				<div class="form-group">
					<div class="col-md-2 col-md-offset-1">
						<label for="inputCrt">重新配置CRT路径</label>
					</div>
					<div class="col-md-4">
						<input type="file" id="inputCrt" />
					</div>
				</div>
				<button type="submit" class="btn btn-default" id="inputCrt_btn">提交更改</button>
			</form>
		</div>
	</div>

</body>
</html>