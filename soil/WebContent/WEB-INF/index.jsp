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
<link href='#css?family=Grand+Hotel:400' rel='stylesheet'
	type='text/css'>
<link href='#css?family=Roboto'
	rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>
<!-- Menu -->

<!-- css耕地-->
<style type="text/css">
.idx-list-title {
	padding-bottom: 10px;
	margin-bottom: 23px;
	position: relative;
}

.clear {
	clear: both !important;
	zoom: 1;
}

.idx-list-title .list-icon {
	width: 5px;
	height: 25px;
	border-radius: 5px;
	float: left;
}

.idx-middler .idx-list-title div {
	float: left;
}

.color-bg-blue {
	background: #2cb1d1;
}

.idx-list-title .title {
	font-size: 25px;
	color: #666;
	line-height: 1;
	margin-left: 10px;
}

.list-more {
	position: absolute;
	top: 0;
	right: 0;
	font-size: 14px;
	color: #999;
}

a {
	color: #636363;
	text-decoration: none !important;
}

a, button {
	outline: 0 !important;
}

a {
	color: #337ab7;
	text-decoration: none;
}

a {
	background-color: transparent;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

user agent stylesheet
a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
}

.idx-middler .idx-list-title div {
	float: left;
}

.idx-ad {
	width: 1160px;
	height: 80px;
	margin: 20px 0;
	background: #ccc;
}
</style>
<!-- css耕地-->


<script src="../web/soil/js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>

<link rel="stylesheet" href="../web/soil/fonts/css/font-awesome.min.css">
<script src="../web/soil/js/easyResponsiveTabs.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default',
			width : 'auto',
			fit : true
		});
	});
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
					<li><a class="active scroll" href="../index/index"> <i
							class="fa fa-home"></i>首页
					</a></li>
					<li><a href="../index/about"><i class="fa fa-star"> </i>我要找地</a></li>
					<li><a href="../index/contact"><i class="fa fa-thumbs-up">
						</i>土地资讯</a></li>
					<li><a href="../index/services"><i class="fa fa-picture-o">
						</i>帮助中心</a></li>
					<c:if test="${user!=null}">
						<li><a href="#"><i class="fa fa-envelope-o"> </i>${user.name}</a></li>
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

	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides" id="slider">
				<li><img src="../web/soil/images/banner1.jpg"
					class="img-responsive" alt="" />
					<div class="banner_desc">
						<div class="container">
							<h1>土地租赁交流网</h1>
							<h2>农村土地租赁承包网络平台</h2>
						</div>
						<div class="details">
							<div class="container">
								<div class="col-xs-10 dropdown-buttons">
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地区域</option>
												<option value="null">黔南</option>
												<option value="AX">黔东南</option>
												<option value="AX">黔西南</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地类型</option>
												<option value="null">耕地</option>
												<option value="AX">园地</option>
												<option value="AX">林地</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地面积</option>
												<option value="null">5以下亩</option>
												<option value="AX">30亩</option>
												<option value="AX">50亩</option>
												<option value="AX">100+亩</option>

											</select>
										</div>
									</div>
								</div>
								<div class="col-xs-2 submit_button">
									<form>
										<a href="about.html"><i></i><input type="submit"
											value="搜索"></i></a>
									</form>
								</div>
								<div class="clearfix"></div>
							</div></li>
				<li><img src="../web/soil/images/banner3.jpg"
					class="img-responsive" alt="" />
					<div class="banner_desc">
						<div class="container">
							<h1>土地租赁交流网</h1>
							<h2>农村土地租赁承包网络平台</h2>
						</div>
						<div class="details">
							<div class="container">
								<div class="col-xs-10 dropdown-buttons">
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地区域</option>
												<option value="null">黔南</option>
												<option value="AX">黔东南</option>
												<option value="AX">黔西南</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地类型</option>
												<option value="null">水田</option>
												<option value="AX">水浇地</option>
												<option value="AX">旱地</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地面积</option>
												<option value="null">1亩</option>
												<option value="AX">5亩</option>
												<option value="AX">10亩</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-xs-2 submit_button">
									<form>
										<a href="about.html"><i></i><input type="submit"
											value="搜索"></i></a>
									</form>
								</div>
								<div class="clearfix"></div>
							</div></li>
				<li><img src="../web/soil/images/banner2.jpg"
					class="img-responsive" alt="" />
					<div class="banner_desc">
						<div class="container">
							<h1>土地租赁交流网</h1>
							<h2>农村土地租赁承包网络平台</h2>
						</div>
						<div class="details">
							<div class="container">
								<div class="col-xs-10 dropdown-buttons">
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地区域</option>
												<option value="null">黔南</option>
												<option value="AX">黔东南</option>
												<option value="AX">黔西南</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地类型</option>
												<option value="null">水田</option>
												<option value="AX">水浇地</option>
												<option value="AX">旱地</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 dropdown-button">
										<div class="section_room">
											<select id="country" onchange="change_country(this.value)"
												class="frm-field required">
												<option value="null">土地面积</option>
												<option value="null">1亩</option>
												<option value="AX">5亩</option>
												<option value="AX">10亩</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-xs-2 submit_button">
									<form>
										<a href="about.html"><i></i><input type="submit"
											value="搜索"></i></a>
									</form>
								</div>
								<div class="clearfix"></div>
							</div></li>
			</ul>
		</div>
	</div>
	<div class="smart_details"></div>

	<!-- ------------------------------------------------------- -->
	<div class="about_top">
		<div class="container">
			<div class="about">
				<div class="idx-list-title clear">
					<div class="list-icon color-bg-blue"></div>
					<div class="title">
						<a href="#" target="_blank" title="耕地流转">耕地</a>
					</div>
					<a class="list-more" href="#" target="_blank">更多地块 &gt;</a>
				</div>
			</div>
			<div class="service_grid">
				<c:forEach var="soil" items="${soils}">

					<div class="col-md-3 service_box">
						<a class="fancybox" href="images/img1.jpg"
							data-fancybox-group="gallery" title="Product Name"><img
							src="${soil.picture}" class="img-responsive" alt="" /><span>
						</span></a>
						<h3> ${soil.type} </h3>
						<p>
							${soil.title} （${soil.secondtitle}）</br>区域：${soil.region}</br>用途：${soil.description}<span>
								<a href="../index/detail?id=${soil.id}">[查看详情]</a>
							</span>
						</p>
					</div>

				</c:forEach>

				<div class="clearfix"></div>
			</div>
			
			<!-- ------------------ -->
			<div class="idx-ad">
				<a href="#" target="_blank"> <img
					src="http://imgs01.dihe.cn/201809/1916/5ba20f1d11675.jpg"
					title="粤港澳大湾区土地投资联盟" alt="粤港澳大湾区土地投资联盟"></a>
			</div>
			<div class="idx-list-title clear">
				<div class="list-icon color-bg-blue"></div>
				<div class="title">
					<a href="#" target="_blank" title="耕地流转">园地</a>
				</div>
				<a class="list-more" href="#" target="_blank">更多地块 &gt;</a>
			</div>
			<!-- ------------------ -->
			<div class="service_grid">
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan1.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan1.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						四川省泸州古蔺县茶园转让&nbsp;（位置好，水井，蓄水池，土质好，红土，山地地形）</br>区域：四川-泸州-古蔺</br>用途：园林/茶园<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan2.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan2.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						贵州省黔南布依族苗族自治州贵定县&nbsp;（土壤质地好，黄土，场地平整，设施充足）</br>区域：贵州-黔南-贵定</br>用途：果园/<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan3.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan3.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						贵州省黔南布依族苗族自治州龙里县&nbsp;（土壤质地好，红土，平地类型，交通发达）</br>区域：贵州-黔南-龙里</br>用途：菜园/种植各类蔬菜<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan4.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan4.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						贵州省安顺市关岭布依族苗族&nbsp;（土壤质地好，黄土，山地类型，离城市近）</br>区域：贵州-安顺-关岭布依族苗族</br>用途：林地/养殖<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="service_grid">
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan5.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan5.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						贵州省毕节市织金县50亩茶园&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-毕节-织金</br>用途：茶园<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan6.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan6.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						贵州省安顺市西秀县&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-安顺-西秀</br>用途：果园/农家乐/旅游胜地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan7.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan7.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						云南省西双版纳傣族景洪&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：云南省-西双版纳傣族-景洪</br>用途：其他园林/种养结合<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/yuan8.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/yuan8.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>园地</h3>
					<p>
						贵州省贵阳市乌当区40亩茶园&nbsp;（土壤质好，黄土壤，设施齐全，交通发达）：贵州-贵阳-乌当区</br>用途：茶园<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- ------------------ -->
			<div class="idx-ad">
				<a href="#" target="_blank"> <img
					src="http://imgs01.dihe.cn/201712/2215/5a3cae3a6063b.jpg"
					title="地合自营" alt="地合自营"></a>
			</div>
			<div class="idx-list-title clear">
				<div class="list-icon color-bg-blue"></div>
				<div class="title">
					<a href="#" target="_blank" title="耕地流转">林地</a>
				</div>
				<a class="list-more" href="#" target="_blank">更多地块 &gt;</a>
			</div>
			<!-- ------------------ -->
			<div class="service_grid">
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling1.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling1.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						惠水长安乡长腊村租出（位置好，水源丰富，土质好）</br>区域：贵州-黔南-惠水</br>用途：耕地<span> <a href="#">[...]</a></span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling2.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling2.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling3.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling3.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling4.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling4.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="service_grid">
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling5.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling5.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling6.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling6.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling7.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling7.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="col-md-3 service_box">
					<a class="fancybox" href="images/ling8.jpg"
						data-fancybox-group="gallery" title="Product Name"><img
						src="../web/soil/images/ling8.jpg" class="img-responsive" alt="" /><span>
					</span></a>
					<h3>林地</h3>
					<p>
						贵州省惠水县长安乡长腊村&nbsp;（土壤质地好，黄土，山地类型,离城市近）</br>区域：贵州-南阳-宛城</br>用途：耕地<span>
							<a href="#">[...]</a>
						</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="grid_4">
			<div class="col-md-12 grid_6" style="text-align: center;">以上是土地租赁交流网</div>
			<div class="clearfix"></div>
		</div>
		<div class="copy" style="margin-top: 20px;">
			<p>Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
		</div>
	</div>
</body>
</html>