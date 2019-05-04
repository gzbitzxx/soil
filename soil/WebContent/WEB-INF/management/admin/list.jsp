<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../web/iconfont/iconfont.css" />
<link rel="stylesheet" href="../web/htmlframe/style/flat-ui.css" />
<link rel="stylesheet" href="../web/htmlframe/style/demo.css" />
<link rel="stylesheet" href="../web/htmlframe/style/bootstrap.min.css" />
<link rel="stylesheet" href="../web/htmlframe/iconfont/font-awesome-4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="../web/htmlframe/plugings/layui/css/layui.css" media="all">
<link rel="stylesheet" href="../web/htmlframe/plugings/grid_manager/GridManager.min.css">
<style type="text/css">
.GridManager-ready td{
		text-align:center;
	}
	.input-group-btn .btn{
		background-color: #ffffff;
    	border: 1px solid #bdc3c7;
    	color: #bdc3c7;
    	line-height: 18px;
    	height: 34px;
	}
	
	.pagination li.active,
	.pagination li.active:focus, 
	.pagination li.active:hover {
    	background-color: rgb(28, 192, 159);
    	color: #fff;
    	z-index: 2;
	}
	
	
	
</style>
<script src="../web/htmlframe/js/jquery.min.js"></script>
<script src="../web/htmlframe/js/jquery.validate.min.js"></script>
<script src="../web/htmlframe/js/jquery.validate.unobtrusive.min.js"></script>
<script src="../web/htmlframe/plugings/grid_manager/GridManager.min.js"></script>
<script src="../web/htmlframe/js/bootstrap.min.js"></script>
<script src="../web/htmlframe/plugings/layui/layui.js"></script>
<script type="text/javascript">
	$(function() {
		init("");
	})

	function init(keyword) {
		var table = document
				.querySelector('table[grid-manager="demo-ajaxPageCode"]');
		table
				.GM({
					ajax_url : '../admin/list',
					ajax_type : 'POST',
					query : {
						pluginId : 1,
						'keyword' : keyword
					},
					supportAjaxPage : true,
					supportCheckbox : false,
					columnData : [
							{
								key : 'userName',
								text : '登录名'
							},
							{
								key : 'realName',
								text : '真实姓名'
							},
							{
								key : 'phone',
								text : '联系电话'
							},
							{
								key : 'createTime',
								text : '创建时间'
							},
							{
								key : 'action',
								remind : 'the action',
								width : '100px',
								text : '操作',
								template : function(action, rowObject) {
									return '<a style="color:rgb(28, 192, 159);" href="javascript:;" onclick="deleteInfo(\''
											+ rowObject.id
											+ '\')">删除</a>'
											+ "| "
											+ '<a style="color:rgb(28, 192, 159);" href="javascript:;" onclick="updateInfo(\''
											+ rowObject.id + '\')">编辑</a>';
								}
							} ]

				});
	}
</script>
</head>
<body style="margin-top: 20px;">
	<div class="row">
		<div class="row col-md-10" style="float:left;margin-left:10px;">
			<div class="input-group">
				<input type="text" id="key" class="form-control"> <span
					class="input-group-btn">
					<button type="button" id="serach" class="btn btn-primary">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>搜索
					</button>
				</span>
			</div>
		</div>
		<div class="col-md-1">
			<div class="form-group">
				<button type="button" data-toggle="modal" data-target="#myModal"
					class="btn">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
				</button>
			</div>
		</div>
		
	</div>
	
	<div style="clear: both;"></div>
	<div class="cls"></div>
	<table grid-manager="demo-ajaxPageCode"></table>
<!-- 添加、修改框 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">添加管理员</h4>
				</div>
				<form id="data">
					<div class="modal-body">
						<input type="hidden" id="id">
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group" lang="username">
									<label for="username">登录名：</label> <input type="text"
										class="form-control" name="userName" id="userName"
										placeholder="用户名" data-val="true"
										data-val-required="请填写 &#39;登录名&#39;。"> <span
										class="field-validation-error" data-valmsg-for="userName"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12 hiden">
								<div class="form-group" lang="no">
									<label for="password">密码：</label> <input type="password"
										class="form-control" name="password" id="password"
										placeholder="密码" data-val="true"
										data-val-required="请填写 &#39;密码&#39;。"> <span
										class="field-validation-error" data-valmsg-for="password"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div  class="col-lg-12 hiden">
								<div class="form-group" lang="class">
									<label for="truepassword">确认密码：</label> <input type="password"
										class="form-control" id="truepassword" name="truepassword"
										placeholder="确认密码" data-val="true" data-val-equalto="两次密码不匹配。"
										data-val-equalto-other="password"> <span
										class="field-validation-error" data-valmsg-for="truepassword"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group" lang="realName">
									<label for="realName">姓名：</label> <input type="text"
										class="form-control" name="realName" id="realName" placeholder="姓名"
										data-val="true" data-val-required="请填写 &#39;姓名&#39;。">
									<span class="field-validation-error" data-valmsg-for="realName"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							
							<div class="col-lg-12">
								<div class="form-group" lang="phone">
									<label for="phone">电话号码：</label> <input type="text"
										class="form-control" name="phone" id="phone"
										placeholder="电话号码" data-val="true"
										data-val-required="请填写 &#39;电话号码&#39;。"> <span
										class="field-validation-error" data-valmsg-for="phone"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary" id="add">保存</button>
							</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<script type="text/javascript">
		function RefreshGridManagerList(keyword) {
			$(".table-div").remove();
			$(".page-toolbar").remove();
			$(".cls").append('<table grid-manager="demo-ajaxPageCode"></table>');
			init(keyword);
		}
		
		$("#serach").click(function() {
					var keyword = $("#key").val();
					if (keyword != undefined && keyword != null
							&& keyword.trim() != "") {
						RefreshGridManagerList(keyword);
					}
				});
		
		$("#add").click(function() {
			if (!$('#data').valid()) {
				return;
				}
			layui.use('layer',function() {
				layer = layui.layer;
				var id = $("#id").val();
				var url;
				var msg;
				var data;
				if (id == "") {
					url = "../admin/add";
					msg = "添加成功";
					data = $("#data").serialize();
				} else {
					url = "../admin/update";
					msg = "修改成功";
					data = $("#data").serialize()+ "&id=" + id;
				}

				$.ajax({
					url : url,
					type : "POST",
					data : data,
					success : function(data) {
						if (data === "error") {
						layer.msg("请先登录");
						window.parent.location.href = "../common/login";
						} else {
						$("#myModal").modal('hide');
						layer.msg(msg);
						$("#id").val("");
						document.getElementById("data").reset();
						RefreshGridManagerList("");
					}
				}
			});
		});
	});

		//删除
		function deleteInfo(ob) {
			layui.use('layer', function() {
				layer = layui.layer;
				layer.confirm("确认要删除吗，删除后不能恢复", {
					title : "删除确认"
				}, function(index) {

					$.ajax({
						url : "../admin/detele",
						type : "POST",
						data : {
							'id' : ob
						},
						success : function(data) {
							if (data == 'ok') {
								layer.msg('删除成功');
								RefreshGridManagerList("");
							}
						}
					});

					layer.close(index);

				});
				/* */
			})

		}

		//更新信息
		function updateInfo(id) {
			$.ajax({
				url : '../admin/findById',
				data : {
					'id' : id
				},
				typr : "post",
				success : function(data) {
					data = JSON.parse(data);
					for (k in data) {
						$("#" + k).val(data[k]);
					}
					$("#myModal").modal('show');
					$(".hiden").hide()
					$("span.field-validation-error").hide();
				}
			});
		}
	</script>

</body>
</html>