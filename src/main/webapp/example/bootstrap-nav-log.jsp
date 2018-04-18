<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8" />
<title>首页案例</title>
<!--引入bootstrap的JS，CSS文件-->
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../css/bootstrap-3.3.7-dist/js/bootstrap.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="../css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	type="text/css">
</head>
<body style="background-color: antiquewhite;">
	<!--构建导航栏（nav）响应式导航栏-->
	<nav class="navbar navbar-default"
		style="background-color: antiquewhite;">
		<!--应用到BOOTSTRAP的项目必须在其DIV中的class值添加container或container-fluid(流式布局)-->
		<div class="container">
			<!--这里制作LOGO和缩小页面后的展开按钮-->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#aaaa" aria-expanded="false">
					<span style="color: hotpink"><b>展开</b></span>

				</button>
				<img src="../images/login/fly.png" />
			</div>
			<!--这里制作导航首页，论坛等各个按钮-->
			<div class="collapse navbar-collapse" id="aaaa">
				<ul class="nav  navbar-nav">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="#">新闻</a></li>
					<li><a href="#">论坛</a></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">全部 <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
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
					<a href="#" class="navbar-link">用户登录</a> | <a href="#"
						class="navbar-link">免费注册</a>
				</div>

			</div>
		</div>
	</nav>

	<!--这里又见到container了！此DIV制作用户输入界面及登录按钮-->
	<div class="container">
		<!--利用FORM表单来做，应用bootstrap中的各种现成的样式，通过col-md-offset-X来调节该DIV的位置。-->
		<form class="form-horizontal col-md-offset-3 ">
			<div class="form-group">
				<div class="col-md-8 text-center">
					<h3>用户登录</h3>
				</div>
			</div>
			<!--这里制作用户名跟输入框，利用col-md-X（中等屏幕）来设置div跟label的大小  
                手机屏幕用col-xs-X参数设置大小，超大屏幕用col-lg-X设置  
                值得注意的是，COL栅格系统最多把屏幕分为12列，所以同一行不能超过12列的分配。-->
			<div class="form-group">
				<label class="col-md-2 control-label">用户名</label>
				<div class="col-md-4">
					<input type="text" id="txtUserName" class="form-control"
						placeholder="输入用户名" />
				</div>
			</div>
			<!--这里同上-->
			<div class="form-group">
				<label class="col-md-2 control-label">用户密码</label>
				<div class="col-md-4">
					<input type="password" class="form-control" placeholder="输入密码" />
				</div>
			</div>

			<!--这里制作登录按钮，相关代码还有一段JavaScript的，在下面。-->
			<div class="form-group text-center">
				<div class="col-md-6">
					<button autocomplete="off" data-loading-text="正在登录..."
						class="btn btn-danger" type="button" id="cmdLogin">登录</button>
				</div>
			</div>

		</form>
	</div>

	<!--这里制作一个模态框，相关还有一句JavaScript代码-->
	<div class="modal" id="aa">
		<div class="col-md-6 col-md-offset-3"
			style="background: #FFFFFF; border-radius: 6px; margin-top: 150px; line-height: 30pt;">
			<p class="page-header">你好，天气不错</p>
			<p>Overflowing text to show scroll behavior Cras mattis
				consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
				facilisis in, egestas eget quam. Morbi leo risus, porta!</p>
			<p class="text-right">
				<button class="btn btn-success" onclick='$("#aa").modal("hide")'>关闭</button>
			</p>
		</div>
	</div>

	<script>
		//      这一句代码是调用了bootstrap的函数,直接传入ID即可使用.  
		$('#aa').modal("show")
		//      这里是根据登录按钮的事件写的一段JavaScript代码,应对不同事件产生不同的效果.  
		function login() {
			//假设是服务器交互方法  
			$("#cmdLogin").button("reset");
		}
		$(document).ready(function() {
			$("#cmdLogin").popover({
				content : "用户名和密码必须填写<b>错误错误</b>",
				"title" : "错误"
			})

			$("#cmdLogin").click(function() {

				if ($("#txtUserName").val() != "") {
					$("#cmdLogin").popover("hide");
					alert("登录成功");
				}
			})
		})
	</script>
</body>
</html>
