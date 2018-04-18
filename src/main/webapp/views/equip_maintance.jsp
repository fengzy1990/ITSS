<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设备维护</title>
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
						<h1>设备维护</h1>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-md-offset-8">
						<button type="button" class="btn btn-primary"
							id="user_add_modal_btn">新增</button>
						<button type="button" class="btn btn-danger"
							id="user_delete_all_btn">删除</button>
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
								<th>登录密码</th>
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