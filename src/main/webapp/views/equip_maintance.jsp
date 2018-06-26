<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
							id="eq_add_modal_btn">新增</button>
						<button type="button" class="btn btn-danger"
							id="eq_delete_all_btn">删除</button>
					</div>
				</div>
				<div class="row">
					<table class="table table-hover" id="eqs_table">
						<thead>
							<tr>
								<th><input type="checkbox" id="check_all" /></th>
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
					build_eqs_table(result);
					build_page_info(result);
					build_page_nav(result);
				}
			});
		}
		//显示每条职工数据函数
		function build_eqs_table(result) {
			$("#eqs_table tbody").empty();
			var contacts = result.extend.pageInfo.list;
			$
					.each(
							contacts,
							function(index, item) {
								//alert(item.empName);
								var checkBoxId = $("<td><input type='checkbox' class='check_item'/></td>");
								var idTd = $("<td></td>").append(item.eqId);
								var eqNameTd = $("<td></td>").append(
										item.eqName);
								var eqAddressTd = $("<td></td>").append(
										item.eqAddress);
								var eqPortTd = $("<td></td>").append(
										item.eqPort);
								var eqLoginnameTd = $("<td></td>").append(
										item.eqLoginname);
								var eqLoginpasswordTd = $("<td></td>").append(
										item.eqLoginpassword);
								var eqLoginmodTd = $("<td></td>").append(
										item.eqLoginmod);
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
								editBtn.attr("update-id", item.eqId);
								var delBtn = $("<button></button>")
										.addClass(
												"btn btn-warning btn-sm delete_btn")
										.append(
												$("<span></span>")
														.addClass(
																"glyphicon glyphicon-trash"))
										.append(" 删除");
								//删除按钮添加自定义属性，可以在删除数据时，知道是哪条数据
								delBtn.attr("del-id", item.eqId);
								var btnTd = $("<td></td>").append(editBtn)
										.append(delBtn);
								$("<tr></tr>").append(checkBoxId).append(idTd)
										.append(eqNameTd).append(eqAddressTd)
										.append(eqPortTd).append(eqLoginnameTd)
										.append(eqLoginpasswordTd).append(
												eqLoginmodTd).append(btnTd)
										.appendTo("#eqs_table tbody");
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
		//批量删除
		$("#eq_delete_all_btn").click(function() {
			var eqNames = "";//用于显示
			var eqDelIds = "";//用于标记删除
			//遍历状态为checked的check_item
			$.each($(".check_item:checked"), function() {
				//找到check_item的父元素tr，然后找到第三个td
				eqNames += $(this).parents("tr").find("td:eq(2)").text() + "，";
				eqDelIds += $(this).parents("tr").find("td:eq(1)").text() + "_"
			});
			//去除字符串最后一位逗号。
			eqNames = eqNames.substring(0, eqNames.length - 1);
			eqDelIds = eqDelIds.substring(0, eqDelIds.length - 1);
			//alert(eqDelIds);
			if (confirm("确认这些【" + eqNames + "】都删除吗？")) {
				$.ajax({
					url : "${APP_PATH}/equip/" + eqDelIds,
					type : "DELETE",
					success : function(result) {
						alert(result.msg);
						to_page(currentNumPage);
					}
				});
			}
		})
		//绑定增加设备按钮
		$("#eq_add_modal_btn").click(
				function() {
					$("#eqAddModal form")[0].reset();
					$("#eqAddModal form").find("*").removeClass(
							"has-success has-error");
					$("#eqAddModal form").find(".help-block").text("");
					//弹出模态框
					$("#eqAddModal").modal({
						backdrop : "static"
					});

				});
		function validate_add_form() {
			//首先要拿到数据，使用正则表达式
			//验证手机号是否正常
			var IP = $("#eqAddress_add_input").val();
			var regIP = /^(\d|[1-9]\d|1\d{2}|2[0-5][0-5])\.(\d|[1-9]\d|1\d{2}|2[0-5][0-5])\.(\d|[1-9]\d|1\d{2}|2[0-5][0-5])\.(\d|[1-9]\d|1\d{2}|2[0-5][0-5])$/;
			if (!regIP.test(IP)) {
				show_validate_msg("#eqAddress_add_input", "error", "IP地址不符合规则！");
				return false;
			} else {
				show_validate_msg("#eqAddress_add_input", "success",
						"IP地址符合规则！");
			}
			var port = $("#eqPort_add_input").val();
			var regPort = /^([0-9]|[1-9]\d{1,3}|[1-5]\d{4}|6[0-5]{2}[0-3][0-5])$/;
			if (!regPort.test(port)) {
				//alert("邮箱格式不符合规则！");
				//取消使用弹窗的方式进行提醒，美化校验结果。
				show_validate_msg("#eqPort_add_input", "error", "端口值错误！");
				return false;
			} else {
				show_validate_msg("#eqPort_add_input", "success", "端口值符合规则！");
			}
			return true;
		}
		//校验信息显示函数  has-error has-success用户设置在div标签上
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
		//为保存按钮添加事件
		setTimeout(function() {
			$("#eq_save_btn").click(function() {
				//提交表单数据保存
				//先提交给服务器进行数据校验，这边是前端校验，即使绕过前段校验，还有后端JSR303校验
				if (!validate_add_form()) {
					return false;
				}
				//在执行ajax请求，首先要拿到ajax请求的校验值
				if ($(this).attr("ajax-va") == "error") {
					return false;
				}
				$.ajax({
					url : "${APP_PATH}/equip",
					type : "POST",
					data : $("#eqAddModal form").serialize(),
					success : function(result) {
						if (result.code == 100) {
							//保存成功，关闭模态框，跳转到最后一页，显示插入的数据
							$("#eqAddModal").modal('hide');
							to_page(totalRecord);
						} else {
							//后台显示信息
							//console.log(result);
							//那个字段错误信息就显示那个字段的，这里是后端校验，从后端拿到的校验信息
							/* EmployeeController中定义了email,empName的校验，如果出现错误errorFields中就会
							出现email，如果没有错误就是出现undefined  */
							/* if (undefined != result.extend.errorFields.eqName) {
								show_validate_msg(
										"#userName_add_input",
										"error",
										result.extend.errorFields.userName);
							} */
							alert("添加设备不成功，请检查数据！");
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
					$("#eqUpdateModal form").find("*").removeClass(
							"has-success has-error");
					$("#eqUpdateModal form").find(".help-block").text("");
					//首先查出员工信息，然后查出部门信息，以下两种方式都可以
					//getDepts("#eqUpdateModal select");
					//getDepts("#dept_update_select");
					getEq($(this).attr("update-id"));

					//把员工id即，编辑按钮上的id传递给更新按钮
					$("#eq_update_btn").attr("update-id",
							$(this).attr("update-id"));
					//弹出模态框
					$("#eqUpdateModal").modal({
						backdrop : "static"
					});
				});
		//删除按钮绑定
		$(document).on("click", ".delete_btn", function() {
			//弹出确认删除
			//alert($(this).parents("tr").find("td:eq(1)").text());
			var eqName = $(this).parents("tr").find("td:eq(2)").text();
			var eqId = $(this).attr("del-id");
			if (confirm("确认删除【" + eqName + "】吗？")) {
				//去人删除ajax请求。
				//alert(eqId);
				$.ajax({
					url : "${APP_PATH}/equip/" + eqId,
					type : "DELETE",
					success : function(result) {
						//alert(result.msg);
						to_page(currentNumPage);
					}
				});

			}
		});
		//根据id查找对应的用户信息
		function getEq(eqId) {
			$.ajax({
				url : "${APP_PATH}/equip/" + eqId,
				type : "GET",
				success : function(result) {
					//console.log(result);
					//取的是模态框的对应输入框的id值
					var eqData = result.extend.equip;
					$("#eqName_update_input").val(eqData.eqName);
					$("#eqAddress_update_input").val(eqData.eqAddress);
					$("#eqPort_update_input").val(eqData.eqPort);
					$("#eqLoignName_update_input").val(eqData.eqLoginname);
					$("#eqPassword_update_input").val(eqData.eqLoginpassword);
					$("#eqLoginMode_update_input").val(eqData.eqLoginmod);
				}
			})
		}
		//点击更新，更新员工信息，此处点击事件是绑定更新模态框中更新按钮
		setTimeout(function() {
			$("#eq_update_btn")
					.click(
							function() {
								//验证邮箱 
								var IP = $("#eqAddress_update_input").val();
								var regIP = /^(\d|[1-9]\d|1\d{2}|2[0-5][0-5])\.(\d|[1-9]\d|1\d{2}|2[0-5][0-5])\.(\d|[1-9]\d|1\d{2}|2[0-5][0-5])\.(\d|[1-9]\d|1\d{2}|2[0-5][0-5])$/;
								if (!regIP.test(IP)) {
									//alert("邮箱格式不符合规则！");
									show_validate_msg(
											"#eqAddress_update_input", "error",
											"IP不符合规则！");
									return false;
								} else {
									show_validate_msg(
											"#eqAddress_update_input",
											"success", "IP符合规则！");
								}
								var Port = $("#eqPort_update_input").val();
								var regPort = /^([0-9]|[1-9]\d{1,3}|[1-5]\d{4}|6[0-5]{2}[0-3][0-5])$/;
								if (!regPort.test(Port)) {
									show_validate_msg("#eqPort_update_input",
											"error", "端口设置错误！");
									return false;
								} else {
									show_validate_msg("#eqPort_update_input",
											"success", "端口符合规则！");
								}
								//发送ajax请求，保存更新的信息
								$
										.ajax({
											url : "${APP_PATH}/equip/"
													+ $(this).attr("update-id"),
											type : "PUT",
											data : $("#eqUpdateModal form")
													.serialize(),
											success : function(result) {
												//alert(result.msg);
												if (result.code == 100) {
													$("#eqUpdateModal").modal(
															"hide");
													to_page(currentNumPage);
												} else {
													alert("更新失败！");
												}
											}

										});
							});
		});
		//点击更新员工信息，更新中的模态框按钮的更新事件
		setTimeout(function() {
			$("#eq_update_btn").click(function() {

				//发送ajax请求，保存更新的信息
				$.ajax({
					url : "${APP_PATH}/equip/" + $(this).attr("update-id"),
					type : "PUT",
					data : $("#eqUpdateModal form").serialize(),
					success : function(result) {
						//alert(result.msg);
						if (result.code == 100) {
							$("#eqUpdateModal").modal("hide");
							to_page(currentNumPage);
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
	</script>
</body>
<!-- 设备新增模态窗 -->
<div class="modal fade" id=eqAddModal tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">设备添加</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="eqName_add_input" class="col-sm-2 control-label">设备名称</label>
						<div class="col-sm-10">
							<input type="text" name="eqName" class="form-control"
								id="eqName_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="epAddress_add_input" class="col-sm-2 control-label">设备IP</label>
						<div class="col-sm-10">
							<input type="text" name="eqAddress" class="form-control"
								id="eqAddress_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqPort_add_input" class="col-sm-2 control-label">端口号</label>
						<div class="col-sm-10">
							<input type="text" name="eqPort" class="form-control"
								id="eqPort_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqLoginName_add_input" class="col-sm-2 control-label">登录名</label>
						<div class="col-sm-10">
							<input type="text" name="eqLoginname" class="form-control"
								id="eqLoginName_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqLoginPass_add_input" class="col-sm-2 control-label">登录密码</label>
						<div class="col-sm-10">
							<input type="text" name="eqLoginpassword" class="form-control"
								id="eqLoginPassword_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqLoginMode_add_input" class="col-sm-2 control-label">登录模式</label>
						<div class="col-sm-10">
							<input type="text" name="eqLoginmod" class="form-control"
								id="eqLoginMode_add_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqLoginMode_add_input" class="col-sm-2 control-label">登录模式</label>
						<div class="col-sm-10">
							<select class="form-control" name="loginmode">
								<option value="1">SSH2</option>
								<option value="1">Telnet</option>
								<option value="1">Http</option>
								<option value="1">Https</option>
								<option value="1">Telnet/SSL</option>
								<option value="1">RLogin</option>
								<option value="1">Serial</option>
								<option value="1">TAPI</option>
								<option value="1">RAW</option>
							</select>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="eq_close_btn">关闭</button>
				<button type="button" class="btn btn-primary" id="eq_save_btn">保存</button>
			</div>
		</div>
	</div>
</div>

<!-- 设备修改模态窗 -->
<div class="modal fade" id="eqUpdateModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">设备信息修改</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">

					<div class="form-group">
						<label for="eqName_update_input" class="col-sm-2 control-label">设备名称</label>
						<div class="col-sm-10">
							<input type="text" name="eqName" class="form-control"
								id="eqName_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqAddress_update_input" class="col-sm-2 control-label">设备IP</label>
						<div class="col-sm-10">
							<input type="text" name="eqAddress" class="form-control"
								id="eqAddress_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqPort_update_input" class="col-sm-2 control-label">端口号</label>
						<div class="col-sm-10">
							<input type="text" name="eqPort" class="form-control"
								id="eqPort_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqLoignName_update_input"
							class="col-sm-2 control-label">登录名</label>
						<div class="col-sm-10">
							<input type="text" name="eqLoginname" class="form-control"
								id="eqLoignName_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqPassword_update_input"
							class="col-sm-2 control-label">登录密码</label>
						<div class="col-sm-10">
							<input type="text" name="eqLoginpassword" class="form-control"
								id="eqPassword_update_input"> <span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="eqLoginMode_update_input"
							class="col-sm-2 control-label">登录方式</label>
						<div class="col-sm-10">
							<input type="text" name="eqLoginmod" class="form-control"
								id="eqLoginMode_update_input"> <span class="help-block"></span>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="eq_close.btn">关闭</button>
				<button type="button" class="btn btn-primary" id="eq_update_btn">更新</button>
			</div>
		</div>
	</div>
</div>
</html>