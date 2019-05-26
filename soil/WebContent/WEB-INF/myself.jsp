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
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->

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
					<li><a href="../index/about"><i class="fa fa-star"> </i>我要找地</a></li>
					<li><a href="../index/contact"><i class="fa fa-thumbs-up">
						</i>土地资讯</a></li>
					<li><a href="../index/services"><i class="fa fa-picture-o">
						</i>帮助中心</a></li>
					<c:if test="${user!=null}">
						<li><a class="active scroll" href="../index/myself"><i
								class="fa fa-envelope-o"> </i>${user.name}</a></li>
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
					<form id="supply_form" method="post" action="/supply/add">
						<div class="t_blockj_box">
							<div class="margin-top30"></div>
							<h1 style="text-align: center;">个人信息中心</h1>
							<div class="block_box_br border-none">
								<div class="infor_box_lf">

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>用户名
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="userName"
												value="${user.userName}" id="userName">
											<div class="clear"></div>
										</div>

									</div>




									<div class="block_bar margin-top40 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>密码
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="password"
												type="password" id="password">
											<div class="clear"></div>
										</div>

									</div>
									<input name="type" type="hidden" value="${user.type}" id="type">

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>姓名
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="name"
												value="${user.name}" id="name">
											<div class="clear"></div>
										</div>

									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>性别
										</div>
										<div class="block_bar_rt">
										<c:if test="${user.sex=='男'}">1</c:if>
											<input type="radio" name="sex" value="男" name="sex"
												checked="checked">男 <input type="radio" name="sex"
												value="女" name="sex" checked="checked">女
											<div class="clear"></div>
										</div>

									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>电话号码
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="phone"
												value="${user.phone}" id="phone">
											<div class="clear"></div>
										</div>

									</div>

									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>电话号码
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="age" value="${user.age}"
												id="age">
											<div class="clear"></div>
										</div>

									</div>




									<div class="blockj_type blockj_hide">

										<button class="wrap_release" id="Immediate_elease"
											type="submit">修改个人信息</button>

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
