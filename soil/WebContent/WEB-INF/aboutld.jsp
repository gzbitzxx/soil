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
	
	
	 
addEventListener("load", function() { 
	setTimeout(hideURLbar, 0); 
	}, false); 
function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<link href="../web/soil/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<script src="../web/soil/js/jquery-1.11.1.min.js"></script>
<link href="../web/soil/css/style.css" rel='stylesheet' type='text/css' />

<link href="../web/soil/css/Lookup.css" rel='stylesheet' type='text/css' />

<link href='#css?family=Grand+Hotel:400' rel='stylesheet'
	type='text/css'>

<link href='#css?family=Roboto'
	rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>

<!-- Menu -->
<link href="../web/soil/css/Lookup.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="../web/soil/fonts/css/font-awesome.min.css">

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
						<li><a href="../index/myself"><i class="fa fa-envelope-o"> </i>${user.name}</a></li>
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
					<a href="#" > <img
						src="http://imgs01.dihe.cn/201712/2215/5a3cae3a6063b.jpg"
						title="自营" alt="自营"></a>
				</div>

				<div class="want_main">
					<div class="want_title">
						<a href="index">土地租出网</a> &gt; <a href="#">我要找地</a> &gt; <a
							href="#" title="全国土地">全国土地</a>
					</div>
					<div class="want_nav">
						<div class="seleteDiv want_nav_area pd-15">
							<div class="left">区域</div>
							<div class="rt">
								<div class="china">
									<span> <a href="#">全部</a>
									</span>
									<ul class="selete_rt">
										<li><a href="#" title="北京">北京</a></li>
										<li><a href="#" title="天津">天津</a></li>
										<li><a href="#" title="河北">河北</a></li>
										<li><a href="#" title="山西">山西</a></li>
										<li><a href="#" title="内蒙古">内蒙古</a></li>
										<li><a href="#" title="辽宁">辽宁</a></li>
										<li><a href="#" title="吉林">吉林</a></li>
										<li><a href="#" title="黑龙江">黑龙江</a></li>
										<li><a href="#" title="上海">上海</a></li>
										<li><a href="#" title="江苏">江苏</a></li>
										<li><a href="#" title="浙江">浙江</a></li>
										<li><a href="#" title="安徽">安徽</a></li>
										<li><a href="#" title="福建">福建</a></li>
										<li><a href="#" title="江西">江西</a></li>
										<li><a href="#" title="山东">山东</a></li>
										<li><a href="#" title="河南">河南</a></li>
										<li><a href="#" title="湖北">湖北</a></li>
										<li><a href="#" title="湖南">湖南</a></li>
										<li><a href="#" title="广东">广东</a></li>
										<li><a href="#" title="广西">广西</a></li>
										<li><a href="#" title="海南">海南</a></li>
										<li><a href="#" title="重庆">重庆</a></li>
										<li><a href="#" title="四川">四川</a></li>
										<li><a href="about?type=1" title="贵州">贵州</a></li>
										<li><a href="#" title="云南">云南</a></li>
										<li><a href="#" title="西藏">西藏</a></li>
										<li><a href="#" title="陕西">陕西</a></li>
										<li><a href="#" title="甘肃">甘肃</a></li>
										<li><a href="#" title="青海">青海</a></li>
										<li><a href="#" title="宁夏">宁夏</a></li>
										<li><a href="#" title="新疆">新疆</a></li>
										<li><a href="#" title="台湾">台湾</a></li>
										<li><a href="#" title="香港">香港</a></li>
										<li><a href="#" title="澳门">澳门</a></li>
										<li><a href="#" title="海外">海外</a></li>
										<div class="clear"></div>
									</ul>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>

						<div class="seleteDiv want_nav_type">
							<div class="left">分类</div>
							<div class="rt">
								<div class="supply_wh active ">
									<span><a href="http://dihe.cn/supply/">不限</a></span>
									<ul class="type_find">
										<div class="clear"></div>
										<li><a href="abouts?type=1" title="耕地">耕地</a></li>
										<li><a href="abouts?type=2" title="园地">园地</a></li>
										<li><a href="abouts?type=3" title="林地">林地</a></li>
										<li><a href="#" title="草地">草地</a></li>
										<li><a href="#" title="住宅用地">住宅用地</a></li>
										<li><a href="#" title="公共管理与公共服务用地">公共管理与公共服务用地</a></li>
										<li><a href="#" title="特殊用地">特殊用地</a></li>
										<li><a href="#" title="交通运输用地">交通运输用地</a></li>
										<li><a href="#" title="水域及水利设施用地">水域及水利设施用地</a></li>
										<li><a href="#" title="其他土地">其他土地</a></li>
										<div class="clear"></div>
									</ul>
									<div class="clear"></div>
								</div>
								<div class="li_list hidden"></div>
							</div>
							<div class="clear"></div>
						</div>


						<div class="seleteDiv want_nav_way ">
							<div class="left">方式</div>
							<div class="rt">
								<div class="supplyDefault  active">
									<span><a href="#">不限</a></span>
								</div>
								<ul class="type_mode">
									<li class="active"><a href="#"></a></li>
									<li><a href="#" title="出租">出租</a></li>
									<li><a href="#" title="转包">转包</a></li>
									<li><a href="#" title="互换">互换</a></li>
									<li><a href="#" title="抵押">抵押</a></li>
									<li><a href="#" title="合作开发">合作开发</a></li>
									<div class="clear"></div>
								</ul>
							</div>
							<div class="clear"></div>
						</div>


						<div class="seleteDiv want_nav_area hide-row"
							style="display: block;">
							<div class="left">面积</div>
							<div class="rt">
								<div class="supplyDefault  active">
									<span><a href="http://dihe.cn/supply/">不限</a></span>
								</div>
								<ul class="type_area">
									<li><a href="#" title="5亩以下">5亩以下</a></li>
									<li><a href="#" title="5~100亩">10~50亩</a></li>
									<li><a href="#" title="50~100亩">50~100亩</a></li>
									<li><a href="#" title="100~500亩">100~500亩</a></li>
									<div class="clear"></div>
								</ul>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
						</div>

						<div class="seleteDiv want_nav_year hide-row"
							style="display: block;">
							<div class="left">年限</div>
							<div class="rt">
								<div class="supplyDefault  active">
									<span><a href="http://dihe.cn/supply/">不限</a></span>
								</div>
								<ul class="type_age">
									<li class="active"><a href="#"></a></li>
									<li><a href="#">5年以下</a></li>
									<li><a href="#">5~10年</a></li>
									<li><a href="#">10~20年</a></li>
									<li><a href="#">20~30年</a></li>
									<div class="clear"></div>
								</ul>
							</div>
							<div class="clear"></div>
						</div>
						<div class="open">
							<span class="open-text">收起选项</span> <span class="arrowy"
								style="background-position: 0px 0px;"></span>
						</div>
					</div>
				</div>





				<!--左侧边栏结束-->
				<div class="s_main">
					<div class="s_content" style="float: left;">
						<div class="s_content_nav">
							<div class="s_content_nav_lf">
								<ul id="ol">
									<li class="active"><a title="默认排序" href="#">默认排序</a></li>
									<li class=""><a rel="nofollow" title="发布时间排序" href="#">发布时间</a></li>
									<li class=""><a rel="nofollow" title="面积排序" href="#">面积</a></li>
									<li class=""><a rel="nofollow" title="浏览量排序" href="#">浏览量</a></li>
								</ul>
							</div>
							<div class="s_content_nav_right">
								<div class="img1">
									<img width="100%" src="../web/soil/images/8.png">
								</div>
								<div class="img2">
									<img width="100%" src="../web/soil/images/2.png">
								</div>
							</div>
							<div class="clear"></div>
						</div>

						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州遵义红花岗120亩有林地转让"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling7.jpg"
										data-original="images/ling7.jpg" alt="贵州遵义红花岗120亩有林地转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州遵义红花岗120亩有林地转让"> <span></span>贵州遵义红花岗120亩有林地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地/竹林,庄园,农庄"> <a
												href="#">林地</a>- <a href="#">有林地</a>/ <a href="#">竹地</a>, <a
												href="#">庄园</a>
											</span> <span>出租</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-遵义-红花岗">
													<a href="#">贵州</a>-<a href="#">遵义</a>-<a href="#">红花岗</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="120.00亩">120.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="35年">35年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											面议<br>
											<span>元/亩/年</span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>


						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州黔东南苗族侗族凯里80亩林地 — 有林地转让">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling1.jpg"
										data-original="images/ling1.jpg"
										alt="贵州黔东南苗族侗族凯里80亩林地 — 有林地转让" style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州黔东南苗族侗族凯里80亩林地 — 有林地转让">
											<span></span>贵州黔东南苗族侗族凯里80亩林地 — 有林地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地  转让"> <a href="#">林地</a>-
												<a href="#">有林地</a>
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔东南苗族侗族-凯里">
													<a href="#">贵州</a>-<a href="#">黔东南苗族侗族</a>-<a href="#">凯里</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="80.00亩">80.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="30年">30年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											<span>面议</span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>


						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州贵阳市辖区100亩林地 — 其他林地转让">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling2.jpg"
										data-original="images/ling2.jpg" alt="贵州贵阳市辖区100亩林地 — 其他林地转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州贵阳市辖区100亩林地 — 其他林地转让">
											<span></span>贵州贵阳市辖区100亩林地 — 其他林地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-其他林地   转让"> <a
												href="#">林地</a>- <a href="#">其他林地</a>/

											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-贵阳">
													<a href="#">贵州</a>-<a href="#">贵阳</a><a href="#"></a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="100.00亩">100.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="20年">20年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>
												<li class="type_free"></li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											面议<span></span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>


						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州省贵阳市花溪区17亩有林地转让"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling3.jpg"
										data-original="images/ling3.jpg" alt="贵州省贵阳市花溪区17亩有林地转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州省贵阳市花溪区17亩有林地转让"> <span></span>贵州省贵阳市花溪区17亩有林地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地/林地,庄园   转让"> <a
												href="#">林地</a>- <a href="#">有林地</a>/ <a href="#">林地</a>, <a
												href="#">庄园</a>
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-贵阳-花溪">
													<a href="#">贵州</a>-<a href="#">贵阳</a>-<a href="#">花溪</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="17.00亩">17.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="39年">39年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_free">个人地源</li>
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											面议<span></span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>


						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#" 
										title="贵州黔东南苗族侗族从江县贯洞镇腊阳136亩林地 — 有林地入股"> <img width="100%"
										height="100%" class="_lazy" src="../web/soil/images/ling4.jpg"
										data-original="images/ling4.jpg"
										alt="贵州黔东南苗族侗族从江县贯洞镇腊阳136亩林地 — 有林地入股" style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" 
											title="贵州黔东南苗族侗族从江县贯洞镇腊阳136亩林地 — 有林地入股"> <span></span>贵州黔东南苗族侗族从江县贯洞镇腊阳136亩林地
											— 有林地入股
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地/林地  入股"> <a
												href="#">林地</a>- <a href="#">有林地</a>/ <a href="#">林地</a>


											</span> <span>入股</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔东南苗族侗族-从江县">
													<a href="#">贵州</a>-<a href="#">黔东南布依族苗族</a>-<a href="#">从江</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="136.00亩">136.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="44年">44年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											<br>
											<span>面议</span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>

						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州毕节七星关区水箐镇燎原370亩林地 — 有林地转让">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling5.jpg"
										data-original="images/ling5.jpg"
										alt="贵州毕节七星关区水箐镇燎原370亩林地 — 有林地转让" style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" 
											title="贵州毕节七星关区水箐镇燎原370亩林地 — 有林地转让"> <span></span>贵州毕节七星关区水箐镇燎原370亩林地
											— 有林地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地/林地   转让"> <a
												href="#">林地</a>- <a href="#">有林地</a>/ <a href="#">林地</a>
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-毕节-七星关">
													<a href="#">贵州</a>-<a href="#">毕节</a>-<a href="#">七星关</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="370.00亩">370.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="41年">41年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											6800<br>
											<span>元/亩/年</span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>





						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州省紫云县117亩林地资源林权转让"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling6.jpg"
										data-original="images/ling6.jpg" alt="贵州省紫云县117亩林地资源林权转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州省紫云县117亩林地资源林权转让"> <span></span>贵州省紫云县117亩林地资源林权转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-灌木林地/灌木  转让"> <a
												href="#">林地</a>- <a href="#">灌木林地</a>/ <a href="#">灌木</a>
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-安顺-紫云苗族布依族">
													<a href="#">贵州</a>-<a href="#">安顺</a>-<a href="#">紫云苗族布依族</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="117.00亩">117.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="44年">44年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											面议<br>
											<span></span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>


						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#" 
										title="贵州黔东南苗族侗族从江县往洞镇信地118亩林地 — 有林地入股"> <img width="100%"
										height="100%" class="_lazy" src="../web/soil/images/ling8.jpg"
										data-original="images/ling8.jpg"
										alt="贵州黔东南苗族侗族从江县往洞镇信地118亩林地 — 有林地入股" style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" 
											title="贵州黔东南苗族侗族从江县往洞镇信地118亩林地 — 有林地转包"> <span></span>贵州黔东南苗族侗族从江县往洞镇信地118亩林地
											— 有林地入股
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地   转包"> <a
												href="#">林地</a>- <a href="#">有林地</a>
											</span> <span>转包</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔南-龙里">
													<a href="#">贵州</a>-<a href="#">黔东南苗族侗族</a>-<a href="#">从江县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="118亩">118亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="45年">45年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											<br>
											<span>面议</span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>


						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州毕节金沙县100亩林地 — 有林地转让">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling10.png"
										data-original="images/ling10.png" alt="贵州毕节金沙县100亩林地 — 有林地转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州毕节金沙县100亩林地 — 有林地转让">
											<span></span>贵州毕节金沙县100亩林地 — 有林地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地  转让"> <a href="#">林地</a>-
												<a href="#">有林地</a>/
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-毕节-金沙县">
													<a href="#">贵州</a>-<a href="#">毕节</a>-<a href="#">金沙县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="100.00亩">100.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="40年">40年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											10<br>
											<span></span>万元/亩
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div id="mainBox" class="_quick_collect_box">
							<div class="main">
								<div class="main_img">

									<a href="#"  title="贵州遵义遵义县500亩林地 — 有林地出租">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/ling9.jpg"
										data-original="images/ling9.jpg" alt="贵州遵义遵义县500亩林地 — 有林地出租"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#"  title="贵州遵义遵义县500亩林地 — 有林地出租">
											<span></span>贵州遵义遵义县500亩林地 — 有林地出租
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="林地-有林地  出租"> <a href="#">林地</a>-
												<a href="#">有林地</a> <span>出租</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-遵义-遵义县">
													<a href="#">贵州</a>-<a href="#">遵义</a>-<a href="#">遵义县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="500.00亩">500.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="30年">30年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											面议<br>
											<span></span>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>








						<div class="digg">
							<div class="pages container">
								<div class="pages-number pull-right">
									<ul class="pagination">
										<li class="a-no"><a href="javascript:;">上一页</a></li>
										<li class="active"><a href="#" data-page="1">1</a></li>
										<li><a href="about.html">下一页</a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>





				<div class="w_sidebar ">
					<div class="w_sidebar_m1" title="我要租出土地">
						<a href="insert.html"  class=""><img
							width="100%" src="../web/soil/images/mian2.png" alt="我要租出土地"></a>
					</div>
					<div class="w_sidebar_m1" title="委托找地">
						<a href="Seek.html"  class=""><img width="100%"
							src="../web/soil/images/mian3.png" alt="委托找地"></a>
					</div>
					<div class="clear"></div>
				</div>
			</div>





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
