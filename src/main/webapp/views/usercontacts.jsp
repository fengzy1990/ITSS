<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- 引入jQuery样式 -->
<script type="text/javascript"
	src="${APP_PATH}/static/js/jquery-2.2.4.min.js"></script>
<!-- 引入样式 -->
<link
	href="${APP_PATH}/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH}/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row" style="background-color: black;">
			<%@ include file="inc/top.jsp"%>
		</div>
		<div class="row">
			<!-- 搭建显示页面 -->
			<div class="container">
				<!-- 标题 -->
				<div class="row">
					<div class="col-md-12">
						<h1>厂商-联系人</h1>
						<hr>
					</div>
				</div>
				<!-- 按钮 -->
				<div class="row">
					<div class="col-md-6 col-md-offset-5">
						<!--页面的搜索框-->
						<div class="navbar-form navbar-left visible-lg-block">
							<div class="input-group">
								<input type="text" id="user_select_input" class="form-control"
									placeholder="输入关键字"> <span class="input-group-btn">
									<button class="btn btn-success" id="user_select_btn">搜索</button>
									<button type="button" class="btn btn-primary"
										id="user_add_modal_btn">新增</button>
									<button type="button" class="btn btn-danger"
										id="user_delete_all_btn">删除</button>
								</span>
							</div>
						</div>

					</div>
				</div>
				<!-- 表格数据 -->
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-condensed" id="users_table">
							<thead>
								<tr>
									<th><input type="checkbox" id="check_all" /></th>
									<th>#</th>
									<th>姓名</th>
									<th>所属机构</th>
									<th>手机号</th>
									<th>邮箱</th>
									<th>QQ</th>
									<th>微信</th>
									<th>所辖系统</th>
									<th>备注</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
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
		var fun = "allusercontacts";//进入页面默认为所有用户
		
		//页面加载完成后，发送ajax请求，得到分页数据
		$(function() {
			to_page(fun, 1);

		});
		function to_page(fun, pn) {
			var vargs = $("#user_select_input").val();
			//alert(vargs);
			//alert(pn);
			if (fun == "allusercontacts") {
				$.ajax({
					url : "${APP_PATH}/allusercontacts",
					data : "pn=" + pn,
					type : "GET",
					success : function(result) {
						//console.log(result);
						//请求成功后，解析json,显示员工和分页信息
						build_users_table(result);
						build_page_info(result);
						build_page_nav(result);
					}
				});
			} else if (fun == "selectcontacts") {
				$.ajax({
					url : "${APP_PATH}/selectcontacts",
					data : {
						args : vargs,
						pn : pn
					},
					dataType:"json",
					type : "GET",
					success : function(result) {
						//console.log(result);
						//请求成功后，解析json,显示员工和分页信息
						build_users_table(result);
						build_page_info(result);
						build_page_nav(result);
					}
				});
			}

		}
		//显示每条职工数据函数
		function build_users_table(result) {
			$("#users_table tbody").empty();
			var contacts = result.extend.pageInfo.list;
			$
					.each(
							contacts,
							function(index, item) {
								//alert(item.empName);
								var checkBoxId = $("<td><input type='checkbox' class='check_item'/></td>");
								var idTd = $("<td></td>").append(item.id);
								var userNameTd = $("<td></td>").append(
										item.username);
								var userOriginTd = $("<td></td>").append(
										item.userorigin);
								var userPhoneTd = $("<td></td>").append(
										item.userphone);
								var userEmailTd = $("<td></td>").append(
										item.useremail);
								var userQQTd = $("<td></td>").append(
										item.userqq);
								var userWechatTd = $("<td></td>").append(
										item.userwechat);
								var userSystemTd = $("<td></td>").append(
										item.usersystem);
								var userRemarkTd = $("<td></td>").append(
										item.userremark);
								//编辑按钮的update_btn用来定义编辑弹出模态框事件
								var editBtn = $("<button></button>")
										.addClass(
												"btn btn-info btn-sm update_btn")
										.append(
												$("<span></span>")
														.addClass(
																"glyphicon glyphicon-pencil"))
										.append(" 编辑");
								//为编辑按钮添加自定义属性，可以在更新数据时，知道是哪条数据,不能使用empIdTd，这是一个Object对象
								editBtn.attr("update-id", item.id);
								var delBtn = $("<button></button>")
										.addClass(
												"btn btn-warning btn-sm delete_btn")
										.append(
												$("<span></span>")
														.addClass(
																"glyphicon glyphicon-trash"))
										.append(" 删除");
								//删除按钮添加自定义属性，可以在删除数据时，知道是哪条数据
								delBtn.attr("del-id", item.id);
								var btnTd = $("<td></td>").append(editBtn)
										.append(delBtn);
								$("<tr></tr>").append(checkBoxId).append(idTd)
										.append(userNameTd)
										.append(userOriginTd).append(
												userPhoneTd)
										.append(userEmailTd).append(userQQTd)
										.append(userWechatTd).append(
												userSystemTd).append(
												userRemarkTd).append(btnTd)
										.appendTo("#users_table tbody");
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
					to_page(fun, 1);
				});
				prePageLi.click(function() {
					to_page(fun, result.extend.pageInfo.pageNum - 1);
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
					to_page(fun, result.extend.pageInfo.pageNum + 1);
				});
				lastPageLi.click(function() {
					to_page(fun, result.extend.pageInfo.pages);
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
					to_page(fun, item);
				});
				ul.append(numPageLi);

			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");
		}
		//ajax请求，绑定点击事件，绑定的是模态框中的按钮
		$("#user_add_modal_btn").click(
				function() {
					//每次弹出模态框，清楚弹出模态框中的数据
					$("#userAddModal form")[0].reset();
					$("#userAddModal form").find("*").removeClass(
							"has-success has-error");
					$("#userAddModal form").find(".help-block").text("");
					//$("#empName_add_input").next("span").text(" ");
					//$("#email_add_input").next("span").text(" ");
					//发送ajax请求，查出部门名称,以下两种方式都可以
					//getDepts("#dept_add_select");
					//getDepts("#userAddModal select");
					//弹出模态框
					$("#userAddModal").modal({
						backdrop : "static"
					});
				});

		/* 		function getDepts(element) {
		 $(element).empty();
		 $.ajax({
		 url : "${APP_PATH}/depts",
		 type : "get",
		 success : function(result) {
		 //console.log(result);
		 $.each(result.extend.depts, function() {
		 var optionEle = $("<option></option>").append(
		 this.deptName).attr("value", this.deptId);
		 optionEle.appendTo(element);
		 });
		 }
		 });
		 } */
		//校验函数
		function validate_add_form() {
			//首先要拿到数据，使用正则表达式
			//验证手机号是否正常
			var userPhone = $("#userPhone_add_input").val();
			var regPhone = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
			if (!regPhone.test(userPhone)) {
				show_validate_msg("#userPhone_add_input", "error", "手机号不符合规则！");
				return false;
			} else {
				show_validate_msg("#userPhone_add_input", "success", "手机号符合规则！");
			}
			var email = $("#userEmail_add_input").val();
			var regEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			if (!regEmail.test(email)) {
				//alert("邮箱格式不符合规则！");
				//取消使用弹窗的方式进行提醒，美化校验结果。
				show_validate_msg("#userEmail_add_input", "error", "邮箱格式不符合规则！");
				return false;
			} else {
				show_validate_msg("#userEmail_add_input", "success",
						"邮箱格式符合规则！");
			}
			return true;
		}
		//校验信息显示函数
		function show_validate_msg(element, status, msg) {
			//清除元素的校验状态
			$(element).parent().removeClass("has-success has-error");
			$(element).next("span").text(" ");
			if ("success" == status) {
				$(element).parent().addClass("has-success");
				$(element).next("span").text(msg);
			} else if ("error" == status) {
				$(element).parent().addClass("has-error");
				$(element).next("span").text(msg);
			}
		}
		//为用户名添加事件，内容改变后执行对应函数。
		setTimeout(function() {
			$("#empName_add_input").change(
					function() {
						//发送ajax请求，校验用户名是否可用
						var empName = this.value;
						$.ajax({
							url : "${APP_PATH}/checkuser",
							data : "empName=" + empName,
							type : "post",
							success : function(result) {
								if (result.code == 100) {
									show_validate_msg("#empName_add_input",
											"success", "用户名可用!");
									$("#usercontact_save_btn").attr("ajax-va",
											"success");
								} else {
									show_validate_msg("#empName_add_input",
											"error", result.extend.val_msg);
									$("#usercontact_save_btn").attr("ajax-va",
											"error");
								}
							}
						});
					});
		});
		//为保存按钮添加事件
		setTimeout(function() {
			$("#usercontact_save_btn")
					.click(
							function() {
								//提交表单数据保存
								//先提交给服务器进行数据校验，这边是前端校验，即使绕过前段校验，还有后端JSR303校验
								if (!validate_add_form()) {
									return false;
								}
								//在执行ajax请求，首先要拿到ajax请求的校验值
								if ($(this).attr("ajax-va") == "error") {
									return false;
								}
								$
										.ajax({
											url : "${APP_PATH}/usercontacts",
											type : "POST",
											data : $("#userAddModal form")
													.serialize(),
											success : function(result) {
												if (result.code == 100) {
													//保存成功，关闭模态框，跳转到最后一页，显示插入的数据
													$("#userAddModal").modal(
															'hide');
													to_page(fun, totalRecord);
												} else {
													//后台显示信息
													//console.log(result);
													//那个字段错误信息就显示那个字段的，这里是后端校验，从后端拿到的校验信息
													/* EmployeeController中定义了email,empName的校验，如果出现错误errorFields中就会
													出现email，如果没有错误就是出现undefined  */
													if (undefined != result.extend.errorFields.userName) {
														show_validate_msg(
																"#userName_add_input",
																"error",
																result.extend.errorFields.userName);
													}
													if (undefined != result.extend.errorFields.userOrigin) {
														show_validate_msg(
																"#userOrigin_add_input",
																"error",
																result.extend.errorFields.userOrigin);
													}
													if (undefined != result.extend.errorFields.userPhone) {
														show_validate_msg(
																"#userPhone_add_input",
																"error",
																result.extend.errorFields.userPhone);
													}
													if (undefined != result.extend.errorFields.userEmail) {
														show_validate_msg(
																"#userEmail_add_input",
																"error",
																result.extend.errorFields.userEmail);
													}
													if (undefined != result.extend.errorFields.userQQ) {
														show_validate_msg(
																"#userQQ_add_input",
																"error",
																result.extend.errorFields.userQQ);
													}
													if (undefined != result.extend.errorFields.userWechat) {
														show_validate_msg(
																"#userWechat_add_input",
																"error",
																result.extend.errorFields.userWechat);
													}
													if (undefined != result.extend.errorFields.userSystem) {
														show_validate_msg(
																"#userSystem_add_input",
																"error",
																result.extend.errorFields.userSystem);
													}
													if (undefined != result.extend.errorFields.userRemark) {
														show_validate_msg(
																"#userRemark_add_input",
																"error",
																result.extend.errorFields.userRemark);
													}
												}
											}
										});
							});
		});
		//为编辑按钮绑定事件，但是页面首先加载完成后，发送ajax请求得到数据后才显示出编辑删除按钮，所以直接.click（）方法绑定不上。
		//JQuery有live方法，新的版本没有live方法，用on方法代替。
		$(document).on(
				"click",
				".update_btn",
				function() {
					//alert("edit");
					//每次弹出更新模态框时，清除之前验证提示和验证结果状态
					$("#userUpdateModal form").find("*").removeClass(
							"has-success has-error");
					$("#userUpdateModal form").find(".help-block").text("");
					//首先查出员工信息，然后查出部门信息，以下两种方式都可以
					//getDepts("#userUpdateModal select");
					//getDepts("#dept_update_select");
					getUser($(this).attr("update-id"));

					//把员工id即，编辑按钮上的id传递给更新按钮
					$("#user_update_btn").attr("update-id",
							$(this).attr("update-id"));
					//弹出模态框
					$("#userUpdateModal").modal({
						backdrop : "static"
					});
				});
		//删除按钮绑定
		$(document).on("click", ".delete_btn", function() {
			//弹出确认删除
			//alert($(this).parents("tr").find("td:eq(1)").text());
			var userName = $(this).parents("tr").find("td:eq(2)").text();
			var userId = $(this).attr("del-id");
			if (confirm("确认删除【" + userName + "】吗？")) {
				//去人删除ajax请求。
				$.ajax({
					url : "${APP_PATH}/usercontacts/" + userId,
					type : "DELETE",
					success : function(result) {
						//alert(result.msg);
						to_page(fun, currentNumPage);
					}
				});

			}
		});
		//根据id查找对应的用户信息
		function getUser(id) {
			$.ajax({
				url : "${APP_PATH}/usercontacts/" + id,
				type : "GET",
				success : function(result) {
					//console.log(result);
					var userData = result.extend.userContacts;
					$("#userName_update_input").val(userData.username);
					$("#userOrigin_update_input").val(userData.userorigin);
					$("#userPhone_update_input").val(userData.userphone);
					$("#userEmail_update_input").val(userData.useremail);
					$("#userQQ_update_input").val(userData.userqq);
					$("#userWechat_update_input").val(userData.userwechat);
					$("#userSystem_update_input").val(userData.usersystem);
					$("#userRemark_update_input").val(userData.userremark);
				}
			})
		}
		//点击更新，更新员工信息，此处点击事件是绑定更新模态框中更新按钮
		setTimeout(function() {
			$("#user_update_btn")
					.click(
							function() {
								//验证手机号是否正常
								var userPhone = $("#userPhone_update_input")
										.val();
								var regPhone = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
								if (!regPhone.test(userPhone)) {
									show_validate_msg(
											"#userPhone_update_input", "error",
											"手机号不符合规则！");
									return false;
								} else {
									show_validate_msg(
											"#userPhone_update_input",
											"success", "手机号符合规则！");
								}
								//验证邮箱 
								var userEmail = $("#userEmail_update_input")
										.val();
								var regEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
								if (!regEmail.test(userEmail)) {
									//alert("邮箱格式不符合规则！");
									show_validate_msg(
											"#userEmail_update_input", "error",
											"邮箱格式不符合规则！");
									return false;
								} else {
									show_validate_msg(
											"#userEmail_update_input",
											"success", "邮箱格式符合规则！");
								}
								//发送ajax请求，保存更新的信息
								$
										.ajax({
											url : "${APP_PATH}/usercontacts/"
													+ $(this).attr("update-id"),
											type : "PUT",
											data : $("#userUpdateModal form")
													.serialize(),
											success : function(result) {
												//alert(result.msg);
												if (result.code == 100) {
													$("#userUpdateModal")
															.modal("hide");
													to_page(fun, currentNumPage);
												} else {
													alert("更新失败！");
												}
											}

										});
							});
		});
		//点击更新员工信息，更新中的模态框按钮的更新事件
		setTimeout(function() {
			$("#user_update_btn").click(function() {

				//发送ajax请求，保存更新的信息
				$.ajax({
					url : "${APP_PATH}/emp/" + $(this).attr("update-id"),
					type : "PUT",
					data : $("#userUpdateModal form").serialize(),
					success : function(result) {
						//alert(result.msg);
						if (result.code == 100) {
							$("#userUpdateModal").modal("hide");
							to_page(fun, currentNumPage);
						} else {
							alert("更新失败！");
						}
					}

				});
			});
		});
		//完成全选或全不选功能
		$("#check_all").click(function() {
			//attr获取checkbox的原生属性checked是undefined，原生属性用prop方法获得。attr获取自定义属性
			//alert($(this).prop("checked"));
			$(".check_item").prop("checked", $(this).prop("checked"));
		});
		//为每个check_item绑定点击事件，当一页的都选中后，check_all也设置为true.
		//因为check_item也是后来创建的，所以也用on方法绑定。
		$(document)
				.on(
						"click",
						".check_item",
						function() {
							//判断当前选择个数是否全部选中
							var flag = $(".check_item:checked").length == $(".check_item").length
							$("#check_all").prop("checked", flag);
						});
		//批量删除
		$("#user_delete_all_btn")
				.click(
						function() {
							var userNames = "";//用于显示
							var userDelIds = "";//用于标记删除
							//遍历状态为checked的check_item
							$.each($(".check_item:checked"), function() {
								//找到check_item的父元素tr，然后找到第三个td
								userNames += $(this).parents("tr").find(
										"td:eq(2)").text()
										+ "，";
								userDelIds += $(this).parents("tr").find(
										"td:eq(1)").text()
										+ "_"
							});
							//去除字符串最后一位逗号。
							userNames = userNames.substring(0,
									userNames.length - 1);
							userDelIds = userDelIds.substring(0,
									userDelIds.length - 1);
							if (confirm("确认这些【" + userNames + "】都删除吗？")) {
								$.ajax({
									url : "${APP_PATH}/usercontacts/"
											+ userDelIds,
									type : "DELETE",
									success : function(result) {
										alert(result.msg);
										to_page(fun, currentNumPage);
									}
								});
							}
						})
		//查询
		$("#user_select_btn").click(function() {
			var args = $("#user_select_input").val();
			fun = "selectcontacts";//当提交为查询后，所有函数调用改向to_page的查询方法
			$.ajax({
				url : "${APP_PATH}/selectcontacts",
				data : "args=" + args,
				type : "GET",
				success : function(result) {
					build_users_table(result);
					build_page_info(result);
					build_page_nav(result);

				}
			})
		})
	</script>
</body>
<!-- 员工新增模态窗 -->
<div class="modal fade" id="userAddModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">联系人添加</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="userName_add_input" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-10">
							<input type="text" name="username" class="form-control"
								id="userName_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userOrigin_add_input" class="col-sm-2 control-label">所属机构</label>
						<div class="col-sm-10">
							<input type="text" name="userorigin" class="form-control"
								id="userOrigin_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userPhone_add_input" class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-10">
							<input type="text" name="userphone" class="form-control"
								id="userPhone_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userEmail_add_input" class="col-sm-2 control-label">email</label>
						<div class="col-sm-10">
							<input type="text" name="useremail" class="form-control"
								id="userEmail_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userQQ_add_input" class="col-sm-2 control-label">QQ</label>
						<div class="col-sm-10">
							<input type="text" name="userqq" class="form-control"
								id="userQQ_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userWechat_add_input" class="col-sm-2 control-label">微信</label>
						<div class="col-sm-10">
							<input type="text" name="userwechat" class="form-control"
								id="userWechat_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userSystem_add_input" class="col-sm-2 control-label">管辖系统</label>
						<div class="col-sm-10">
							<textarea type="text" name="usersystem" class="form-control"
								id="userSystem_add_input"></textarea>
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userRemark_add_input" class="col-sm-2 control-label">备注</label>
						<div class="col-sm-10">
							<textarea type="text" name="userremark" class="form-control"
								id="userRemark_add_input"></textarea>
							<span class="help-block"></span>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="usercontact_close_btn">关闭</button>
				<button type="button" class="btn btn-primary"
					id="usercontact_save_btn">保存</button>
			</div>
		</div>
	</div>
</div>

<!-- 员工修改模态窗 -->
<div class="modal fade" id="userUpdateModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">联系人修改</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">

					<div class="form-group">
						<label for="userName_update_input" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-10">
							<input type="text" name="username" class="form-control"
								id="userName_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userOrigin_update_input"
							class="col-sm-2 control-label">所属机构</label>
						<div class="col-sm-10">
							<input type="text" name="userorigin" class="form-control"
								id="userOrigin_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userPhone_update_input" class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-10">
							<input type="text" name="userphone" class="form-control"
								id="userPhone_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userEmail_update_input" class="col-sm-2 control-label">email</label>
						<div class="col-sm-10">
							<input type="text" name="useremail" class="form-control"
								id="userEmail_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userQQ_update_input" class="col-sm-2 control-label">QQ</label>
						<div class="col-sm-10">
							<input type="text" name="userqq" class="form-control"
								id="userQQ_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userWechat_update_input"
							class="col-sm-2 control-label">微信</label>
						<div class="col-sm-10">
							<input type="text" name="userwechat" class="form-control"
								id="userWechat_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userSystem_update_input"
							class="col-sm-2 control-label">管辖系统</label>
						<div class="col-sm-10">
							<textarea type="text" name="usersystem" class="form-control"
								id="userSystem_update_input"></textarea>
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="userRemark_update_input"
							class="col-sm-2 control-label">备注</label>
						<div class="col-sm-10">
							<textarea type="text" name="userremark" class="form-control"
								id="userRemark_update_input"></textarea>
							<span class="help-block"></span>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="emp_close.btn">关闭</button>
				<button type="button" class="btn btn-primary" id="user_update_btn">更新</button>
			</div>
		</div>
	</div>
</div>
</html>