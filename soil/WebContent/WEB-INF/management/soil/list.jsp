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
<script type="text/javascript" src="../web/htmlframe/plugings/wangEdit/wangEditor.js"></script>

<script type="text/javascript">
	$(function() {
		init("");
	})

	function init(keyword) {
		var table = document
				.querySelector('table[grid-manager="demo-ajaxPageCode"]');
		table
				.GM({
					ajax_url : '../soils/list',
					ajax_type : 'POST',
					query : {
						pluginId : 1,
						'keyword' : keyword
					},
					supportAjaxPage : true,
					supportCheckbox : false,
					columnData : [
							{
								key : 'region',
								text : '所在区域'
							},
							{
								key : 'type',
								text : '类型'
							},
							{
								key : 'userId',
								text : '用户'
							},
							{
								key : 'price',
								text : '价格'
							},
							{
								key : 'length',
								text : '长度'
							},
							{
								key : 'width',
								text : '宽度'
							},
							{
								width : '100px',
								text : '面积',
								template : function(action, rowObject) {
									return (rowObject.length*rowObject.width)
											+'平方米';
								}
							},
							{
								key : 'state',
								text : '是否已读',
								remind : 'the action',
								template : function(action, rowObject) {
									if(rowObject.isReplay==true){
										return "已出租";
									}else{
										return "未出租";
									}
								}
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
							}]

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
					<h4 class="modal-title">添加土地信息</h4>
				</div>
				<form id="data" action="../soils/add" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<input type="hidden" id="id">
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group" lang="username">
									<label for="username">所在区域：</label> <input type="text"
										class="form-control" name="region" id="region"
										placeholder="所在区域" data-val="true"
										data-val-required="请填写 &#39;所在区域&#39;。"> <span
										class="field-validation-error" data-valmsg-for="region"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							
							<div class="col-lg-12">
								<div class="form-group" lang="realName">
									<label for="realName">类型：</label> <input type="text"
										class="form-control" name="type" id="type" placeholder="类型"
										data-val="true" data-val-required="请填写 &#39;类型&#39;。">
									<span class="field-validation-error" data-valmsg-for="type"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group" lang="realName">
									<label for="realName">创建用户：</label> <input type="text"
										class="form-control" name="userId" id="userId" placeholder="创建用户"
										data-val="true" data-val-required="请填写 &#39;创建用户&#39;。">
									<span class="field-validation-error" data-valmsg-for="userId"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							
							<div class="col-lg-12">
								<div class="form-group" lang="phone">
									<label for="phone">宽度：</label> <input type="text"
										class="form-control" name="width" id="width"
										placeholder="宽度" data-val="true"
										data-val-required="请填写 &#39;宽度&#39;。"> <span
										class="field-validation-error" data-valmsg-for="width"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group" lang="phone">
									<label for="phone">长度：</label> <input type="text"
										class="form-control" name="length" id="length"
										placeholder="长度" data-val="true"
										data-val-required="请填写 &#39;长度&#39;。"> <span
										class="field-validation-error" data-valmsg-for="length"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group" lang="phone">
									<label for="phone">价格：</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="价格" data-val="true"
										data-val-required="请填写 &#39;价格&#39;。"> <span
										class="field-validation-error" data-valmsg-for="price"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group" lang="phone">
									<label for="phone">上传图片：</label> <input type="file"
										class="form-control" name="blFile" id="blFile"
										placeholder="上传图片" data-val="true"
										data-val-required="请填写 &#39;上传图片&#39;。"> <span
										class="field-validation-error" data-valmsg-for="blFile"
										data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<label for="phone">土地描述：</label> 
									<input type="hidden" name="description" id="description"> 
									<div class="editW"></div>
								</div>
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="submit" class="btn btn-primary" id="add">保存</button>
							</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<script type="text/javascript">
		var E = window.wangEditor
		var editor2 = new E('.editW')
		editor2.create()
	
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
			var l=editor2.txt.html();
			$("#description").val(l);
			/*
			layui.use('layer',function() {
				layer = layui.layer;
				var id = $("#id").val();
				var url;
				var msg;
				var data;
				if (id == "") {
					url = "../soils/add";
					msg = "添加成功";
					data = $("#data").serialize();
				} else {
					url = "../soils/update";
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
			*/
	});

		//删除
		function deleteInfo(ob) {
			layui.use('layer', function() {
				layer = layui.layer;
				layer.confirm("确认要删除吗，删除后不能恢复", {
					title : "删除确认"
				}, function(index) {

					$.ajax({
						url : "../soils/detele",
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
				url : '../soils/findById',
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