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
					<a href="#" target="_blank"> <img
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

									<a href="#" target="_blank" title="贵州黔东南苗族侗族榕江县10亩耕地 — 水浇地出租">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/gz0.jpg"
										data-original="images/gz0.jpg" alt="贵州黔东南苗族侗族榕江县10亩耕地 — 水浇地出租"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="贵州黔东南苗族侗族榕江县10亩耕地 — 水浇地出租">
											<span></span>贵州黔东南苗族侗族榕江县10亩耕地 — 水浇地出租
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-水浇地"> <a href="#">耕地</a>-
												<a href="#">水浇地</a>
											</span> <span>出租</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔东南苗族侗族-榕江县">
													<a href="#">贵州</a>-<a href="#">黔东南苗族侗族</a>-<a href="#">榕江县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="10.00亩">10.00亩</div>
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
											800<br> <span>元/亩/年</span>
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

									<a href="#" target="_blank" title="贵州省黔西县文峰3亩耕地 — 旱地转让"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/gz1.jpg"
										data-original="images/gz1.jpg" alt="贵州省黔西县文峰3亩耕地 — 旱地转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="贵州省黔西县文峰3亩耕地 — 旱地转让"> <span></span>贵州省黔西县文峰3亩耕地
											— 旱地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-旱地-转让"> <a href="#">耕地</a>-
												<a href="#">旱地</a>
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-毕节-黔西">
													<a href="#">贵州</a>-<a href="#">毕节</a>-<a href="#">黔西</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="3.00亩">3.00亩</div>
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

									<a href="#" target="_blank" title="贵州贵阳花溪区30亩耕地 — 水田出租"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/gz2.png"
										data-original="images/gz2.png" alt="贵州贵阳花溪区30亩耕地 — 水田出租"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="贵州贵阳花溪区30亩耕地 — 水田出租"> <span></span>贵州贵阳花溪区30亩耕地
											— 水田出租
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-水田 出租"> <a href="#">耕地</a>-
												<a href="#">水田</a>/

											</span> <span>出租</span>
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
												<div class="tt" title="30.00亩">30.00亩</div>
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

									<a href="#" target="_blank" title="贵州黔西南州兴义市顶效村8亩地低价出租"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/gz3.jpg"
										data-original="images/gz3.jpg" alt="贵州黔西南州兴义市顶效村8亩地低价出租"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="贵州黔西南州兴义市顶效村8亩地低价出租"> <span></span>贵州黔西南州兴义市顶效村8亩地低价出租
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-旱地/小麦,农庄  出租"> <a
												href="#">耕地</a>- <a href="#">旱地</a>/ <a href="#">小麦</a>, <a
												href="#">农庄</a>
											</span> <span>出租</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔西南布依族苗族-兴义">
													<a href="#">贵州</a>-<a href="#">黔西南布依族苗族</a>-<a href="#">鲁甸县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="8.00亩">8.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="10年">10年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_free">分站地源</li>
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											3200<br> <span>元/亩/年</span>
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

									<a href="#" target="_blank" title="贵州黔西南布依族苗族贞丰县200亩耕地 — 旱地出租">
										<img width="100%" height="100%" class="_lazy"
										src="../web/soil/images/gz4.jpg"
										data-original="images/gz4.jpg"
										alt="贵州黔西南布依族苗族贞丰县200亩耕地 — 旱地出租" style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="贵州黔西南布依族苗族贞丰县200亩耕地 — 旱地出租">
											<span></span>贵州黔西南布依族苗族贞丰县200亩耕地 — 旱地出租
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-旱地   出租"> <a href="#">耕地</a>-
												<a href="#">旱地</a>/

											</span> <span>租出</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔西南布依族苗族-贞丰县">
													<a href="#">贵州</a>-<a href="#">黔西南布依族苗族</a>-<a href="#">贞丰县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="200.00亩">200.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="50年">50年</div>
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
											<br> <span>面议</span>
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

									<a href="#" target="_blank" title="黔南三都县110.00亩种植土地出租"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/img43.jpg"
										data-original="images/img43.jpg" alt="黔南三都县110.00亩种植土地出租"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="黔南三都县110.00亩种植土地出租"> <span></span>黔南三都县110.00亩种植土地出租
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-旱地/旱地,农庄出租"> <a
												href="#">耕地</a>- <a href="#">旱地</a>/ <a href="#">旱地</a>, <a
												href="#">农庄</a>
											</span> <span>出租</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔南布依族苗族-三都县">
													<a href="#">贵州</a>-<a href="#">黔南布依族苗族</a>-<a href="#">三都县</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="110.00亩">110.00亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="14年">14年</div>
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
											800<br> <span>元/亩/年</span>
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

									<a href="#" target="_blank" title="好花红镇1.6亩旱地转让"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/img20.jpg"
										data-original="images/img20.jpg" alt="好花红镇1.6亩旱地转让"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="好花红镇1.6亩旱地转让"> <span></span>好花红镇1.6亩旱地转让
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-旱地/家庭农场转让"> <a
												href="#">耕地</a>- <a href="#">旱地</a>/ <a href="#">家庭农场</a>
											</span> <span>转让</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔南-惠水">
													<a href="#">贵州</a>-<a href="#">黔南</a>-<a href="#">惠水</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="1.6亩">1.6亩</div>
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
												<li class="type_free">电话核实</li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											600<br> <span>元/亩/年</span>
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

									<a href="#" target="_blank" title="黔南 - 龙里土地出租可以做养殖场"> <img
										width="100%" height="100%" class="_lazy"
										src="../web/soil/images/img31.jpg"
										data-original="images/img31.jpg" alt="黔南 - 龙里土地出租可以做养殖场"
										style="display: inline;">
									</a>
									<div class="main_rt_scc">
										<!-- <i class="fa fa-heart-o _collect_btn" data-supply_id="555054"></i> -->
									</div>
								</div>
								<div class="main_contentBox">
									<div class="main_content_title">
										<a href="#" target="_blank" title="黔南 - 龙里土地出租可以做养殖场"> <span></span>黔南
											- 龙里土地出租可以做养殖场
										</a>
									</div>
									<div class="main_content">
										<div class="main_content_tt">
											<span class="main_ctn" title="耕地-旱地/旱地,农庄出租"> <a
												href="#">耕地</a>- <a href="#">旱地</a>/ <a href="#">旱地</a>, <a
												href="#">农庄</a>
											</span> <span>出租</span>
										</div>
										<div class="main_content_dz">
											<div class="dz_address padding-left0">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/4.png"></div>-->
												<div class="tt" title="贵州-黔南-龙里">
													<a href="#">贵州</a>-<a href="#">黔南</a>-<a href="#">龙里</a>
												</div>
												<div class="clear"></div>
												<div class="dz_position"></div>
											</div>
											<div class="dz_number">
												<!--<div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/9.png"></div>-->
												<div class="tt" title="3.2亩">3.2亩</div>
												<div class="clear"></div>
												<div class="dz_number_position"></div>
											</div>
											<div class="dz_address">
												<!-- <div class="img"><img width="100%" src="//static.dihe.cn/static/pc/webone/images/1.png"></div>-->
												<div class="tt" title="15年">15年</div>
												<div class="clear"></div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="main_content_list">
											<ul class="w600">
												<li class="type_recommend">个人地源</li>
												<li class="type_free">电话核实</li>

												<div class="clear"></div>
											</ul>
										</div>
									</div>
									<div class="main_rtt">
										<div class="money">
											<br> <span>面议</span>
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
						<a href="insertSoil" target="_blank" class=""><img
							width="100%" src="../web/soil/images/mian2.png" alt="我要租出土地"></a>
					</div>
					<div class="w_sidebar_m1" title="委托找地">
						<a href="foundSoil" target="_blank" class=""><img width="100%"
							src="../web/soil/images/mian3.png" alt="委托找地"></a>
					</div>
					<div class="w_sidebar_content1">
						<div class="w_sidebar_title1">土地政策</div>
						<div class="w_sidebar_art">
							<a href="#" target="_blank">
								<div class="title">我国农机购置补贴政策调整</div>
								<div class="time">2019-04-09</div>
							</a>
						</div>
						<div class="w_sidebar_art">
							<a href="#" target="_blank">
								<div class="title">《国有建设用地出让地价评估技术规范》解读</div>
								<div class="time">2019-02-07</div>
							</a>
						</div>
						<div class="w_sidebar_art">
							<a href="#" target="_blank">
								<div class="title">《第三次全国国土调查技术规程》2月1日起实施</div>
								<div class="time">2019-02-07</div>
							</a>
						</div>
						<div class="w_sidebar_art">
							<a href="#" target="_blank">
								<div class="title">《自然资源部办公厅关于进一步规范储备土地抵押融资加快批而未供土地处置有关问题的通知》政策解读</div>
								<div class="time">2019-02-06</div>
							</a>
						</div>
						<div class="w_sidebar_art">
							<a href="#" target="_blank">
								<div class="title">《城乡建设用地增减挂钩节余指标跨省域调剂实施办法》解读</div>
								<div class="time">2019-02-06</div>
							</a>
						</div>
					</div>
					<div class="w_sidebar_content2">
						<div class="w_sidebar_title2">精选好地</div>
						<div class="w_sidebar_box2">
							<a href="#" target="_blank">
								<div class="w_sidebar_m2">
									<img width="100%" src="../web/soil/images/mian4.jpg"
										alt="全国优质油茶基地山林地项目转让出租">
								</div>
								<div class="tt">全国优质油茶基地山林地项目转让出租</div>
							</a>
						</div>
						<div class="w_sidebar_box2">
							<a href="#" target="_blank">
								<div class="w_sidebar_m2">
									<img width="100%" src="../web/soil/images/mian5.jpg"
										alt="稻虾种养年收百万：全国优质小龙虾养殖用地鱼塘水田推荐">
								</div>
								<div class="tt">稻虾种养年收百万：全国优质小龙虾养殖用地鱼塘水田推荐</div>
							</a>
						</div>
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