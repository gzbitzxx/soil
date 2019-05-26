<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>农村土地租出交流网</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="../web/favicon.ico" />
<script type="application/x-javascript">
	
	

	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link href="../web/soil/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<script src="../web/soil/js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="../web/soil/css/style.css" rel='stylesheet' type='text/css' />
<link href="../web/soil/css/Lookup.css" rel='stylesheet' type='text/css' />
<link href="../web/soil/css/insert.css" rel='stylesheet' type='text/css' />
<link href="../web/soil/css/seek.css" rel='stylesheet' type='text/css' />
<link href="../web/soil/css/gendi.css" rel='stylesheet' type='text/css' />
<link href="../web/soil/css/insert.css" rel='stylesheet' type='text/css' />
<!-- Menu -->
<!----font-Awesome----->
<link rel="stylesheet" href="../web/soil/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<script src="../web/htmlframe/js/bootstrap.min.js"></script>
<script src="../web/htmlframe/plugings/layui/layui.js"></script>
<script type="text/javascript"
	src="../web/htmlframe/plugings/wangEdit/wangEditor.js"></script>
<script type="text/javascript">
	var E = window.wangEditor;
	var editor2 = new E('.editW');
	editor2.create();
</script>
</head>
<body>
	<div class="header">
		<div class="col-xs-4">
			<div class="logo">
				<a href="index"><img src="../web/soil/images/logo.png" alt="" /></a>
			</div>
		</div>
		<div class="col-xs-8 header_right">
			<span class="menu"></span>
			<div class="top-menu">
				<ul>
					<li><a href="../index/index"> <i class="fa fa-home"></i>首页
					</a></li>
					<li><a class="active scroll" href="../index/about"><i
							class="fa fa-star"> </i>我要找地</a></li>
					<li><a href="../index/contact"><i class="fa fa-thumbs-up">
						</i>土地资讯</a></li>
					<li><a href="../index/services"><i class="fa fa-picture-o">
						</i>帮助中心</a></li>
					<c:if test="${user!=null}">
						<li><a href="../index/myself"><i class="fa fa-envelope-o">
							</i>${user.name}</a></li>
						<li><a href="../user/loginOut"><i
								class="fa fa-envelope-o"> </i>注销</a></li>
					</c:if>
					<c:if test="${user==null}">
						<li><a href="../index/login"><i class="fa fa-envelope-o">
							</i>登录/注册 </a></li>
					</c:if>
					<div class="clearfix"></div>
				</ul>
			</div>
			<!-- script for menu -->
			<script>
				$("span.menu").click(function() {
					$(".top-menu").slideToggle("slow", function() {
						// Animation complete.
					});
				});
			</script>
			<!-- script for menu -->
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="about_top">
		<div class="container">
			<div class="about">
				<div class="idx-ad">
					<a href="#" target="_blank"> <img
						src="http://imgs01.dihe.cn/201712/2215/5a3cae3a6063b.jpg"
						title="自营" alt="自营"></a>
				</div>

				<style>
.area_choose {
	width: 578px;
}

.area_choose .area_choose_title {
	width: 558px;
}

.t_blockj_box .areaChoose {
	width: 300px;
}
</style>

				<div class="want_main">
					<form id="supply_form" method="post" action="../index/addSoil">
						<div class="t_blockj_box">
							<div class="margin-top30"></div>
							<div class="blockj_nav">
								<div class="blockj_nav_p"></div>
								<div class="blockj_nav_ul">
									<ul>

										<li class="pbu_width">1.土地基本信息</li>
										<li class="pbu_width"><span>2.完成</span></li>
										<div class="clear"></div>
									</ul>
								</div>
							</div>
							<div class="block_box_br border-none">
								<div class="infor_box_lf">

									<div class="block_bar margin-top50 clear">

										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>标题
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="title" value=""
												id="title">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">

										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>副标题
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="secondtitle" value=""
												id="secondtitle">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>使用方式
										</div>
										<div class="block_bar_rt">
											<select name="method" id="method"
												class="selectpicker form-control" data-live-search="true">
												<option value="出租" selected>出租</option>
												<option value="转让">转让</option>
											</select>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>年限
										</div>
										<div class="block_bar_rt">
											<select name="year" id="year"
												class="selectpicker form-control" data-live-search="true">
												<option value="一年以上">一年以上</option>
												<option value="两年以上">两年以上</option>
												<option value="三年以上">三年以上</option>
												<option value="四年以上">四年以上</option>
												<option value="五年以上">五年以上</option>
												<option value="其他">其他</option>
											</select>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>所在区域
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="remaining_year" value=""
												id="ass_input">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>土地类别
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="type" value="" id="type">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>宽度
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="width" value=""
												id="width">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>长度
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="length" value=""
												id="length">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>上传图片
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="blFile" value=""
												id="blFile">

											<div class="clear"></div>
										</div>
									</div>

									<div class="block_bar margin-top20 clear" id="aa">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>土地照片
										</div>
										<div class="block_bar_rt width-580">
											<div class="photo_tt">
												最多可上传10张照片，图片每张最大6M。支持jpg、png、gif格式<br>

											</div>
											<div class="img-upload photo_list_img">
												<img width="100%" src="../web/soil/images/shang.png">
												<input type="file" id="img-upload" name="blFile" multiple=""
													class="displaynone"> <input type="hidden"
													id="files_id" name="accessories" value="">
												<!-- 设为封面隐藏域 -->
												<input type="hidden" id="cover" name="accessory_id" value="">

											</div>
											<div class="clear"></div>
											</br>
										</div>
									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>描述详情
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" type="hidden"
												name="description" value="" id="description">
											<div class="editW"></div>
											<div class="clear"></div>
										</div>
									</div>



									<div class="blockj_type blockj_hide">

										<button class="wrap_release" id="Immediate_elease"
											type="submit">立即发布</button>

										<div class="clear"></div>
									</div>
									<div class="margin-top50"></div>
								</div>
					</form>


					<div class="col-md-12 grid_6" style="text-align: center;">&nbsp;</div>
					<div class="clearfix"></div>
					<div class="copy" style="margin-top: 20px;">
						<p>&nbsp;</p>
					</div>

					<div class="grid_4">
						<div class="col-md-12 grid_6" style="text-align: center;">以上是土地租赁交流网</div>
						<div class="clearfix"></div>
					</div>
					<div class="copy" style="margin-top: 20px;">
						<p>Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
					</div>
</body>
</html>
