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
					<table class="table table-hover" id="equips_table">
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
				<!-- 分页信息 -->
				<div class="row">
					<div class="col-md-6" id="page_info_area"></div>
					<div class="clo-md-6" id="page_nav_area"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var totalRecord, currentNumPage;//用来调用增加完数据后，用记录数作为页码，这样pageinfo总会显示最后一页
		//页面加载完成后，发送ajax请求，得到分页数据
		$(function() {
			to_page(1);

		});
		function to_page(pn) {
			$.ajax({
				url : "${APP_PATH}/getEquips",
				data : "pn=" + pn,
				type : "GET",
				success : function(result) {
					//console.log(result);
					//请求成功后，解析json,显示员工和分页信息
					build_equips_table(result);
					build_page_info(result);
					build_page_nav(result);
				}
			});
		}
		//显示每条职工数据函数
		function build_equips_table(result) {
			$("#equips_table tbody").empty();
			var contacts = result.extend.pageInfo.list;
			$.each(contacts,function(index, item) {
								//alert(item.empName);
				var idTd = $("<td></td>").append(item.eqId);
				var eqNameTd = $("<td></td>").append(item.eqName);
				var eqAddressTd = $("<td></td>").append(item.eqAddress);
				var eqPortTd = $("<td></td>").append(item.eqPort);
				var eqLoginnameTd = $("<td></td>").append(item.eqLoginname);
				var eqLoginmodTd = $("<td></td>").append(item.eqLoginmod);
				//编辑按钮的update_btn用来定义编辑弹出模态框事件
				var loginBtn = $("<button></button>").addClass(
						"btn btn-info btn-sm login_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-log-in")).append(" 登录");
				//为编辑按钮添加自定义属性，可以在更新数据时，知道是哪条数据,不能使用empIdTd，这是一个Object对象
				loginBtn.attr("login-id", item.id);
				var btnTd = $("<td></td>").append(loginBtn);
				$("<tr></tr>").append(idTd).append(
						eqNameTd).append(eqAddressTd).append(eqPortTd)
						.append(eqLoginnameTd).append(eqLoginmodTd).append(btnTd).appendTo(
								"#equips_table tbody");
			});
		}
		//解析分页信息
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append(
					"当前第" + result.extend.pageInfo.pageNum + "页，共"
							+ result.extend.pageInfo.pages + "页，共"
							+ result.extend.pageInfo.total + "条记录");
			totalRecord = result.extend.pageInfo.total;
			currentNumPage = result.extend.pageInfo.pageNum;
		}
		//解析分页条数据
		function build_page_nav(result) {
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");
			var firstPageLi = $("<li></li>").append(
					$("<a></a>").append("首页").attr("href", "#"));
			var prePageLi = $("<li></li>").append(
					$("<a></a>").append("&laquo;"));
			if (!result.extend.pageInfo.hasPreviousPage) {
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {
				//绑定点击事件
				firstPageLi.click(function() {
					to_page(1);
				});
				prePageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum - 1);
				});
			}
			var nextPageLi = $("<li></li>").append(
					$("<a></a>").append("&raquo;"));
			var lastPageLi = $("<li></li>").append(
					$("<a></a>").append("末页").attr("href", "#"));
			if (!result.extend.pageInfo.hasNextPage) {
				nextPageLi.addClass("diasbled");
				lastPageLi.addClass("disabled");
			} else {
				nextPageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum + 1);
				});
				lastPageLi.click(function() {
					to_page(result.extend.pageInfo.pages);
				});
			}
			ul.append(firstPageLi).append(prePageLi);
			$.each(result.extend.pageInfo.navigatepageNums, function(index,
					item) {
				var numPageLi = $("<li></li>")
						.append($("<a></a>").append(item));
				if (result.extend.pageInfo.pageNum == item) {
					numPageLi.addClass("active");
				}
				numPageLi.click(function() {
					to_page(item);
				});
				ul.append(numPageLi);

			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");
		}
		
		//删除按钮绑定
		$(document).on("click", ".login_btn", function() {
			//弹出确认删除
			//alert($(this).parents("tr").find("td:eq(1)").text());
			var eqIP = $(this).parents("tr").find("td:eq(2)").text();
			var eqId = $(this).attr("login-id");
			if (confirm("确认登录IP为【" + eqIP + "】吗？")) {
				//去人删除ajax请求。
				$.ajax({
					url : "${APP_PATH}/loginEquip/" + eqId,
					type : "PUT",
					success : function(result) {
						//alert(result.msg);
						to_page(currentNumPage);
					}
				});

			}
		});
	</script>
</body>
</html>