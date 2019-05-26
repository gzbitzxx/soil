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
<!-- Menu -->
<!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->

</head>
<body>
	<div class="header">
		<div class="col-xs-4">
			<div class="logo">
				<a href="index"><img       src="../web/soil/images/logo.png" alt="" /></a>
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
						      src="../web/soil/images/soil222.jpg" title="自营  " alt="自营"></a>
				</div>
			</div>


			<div class="area-details-container">
				<div class="ads-addIndex">
					<div class="ads-addIndex-inner">
						<a href="index.xml">土地租出网</a> <a href="#" title="河南土地流转">贵州土地租出</a>
						&gt; <a href="#" title="南阳土地流转">贵阳土地租出</a> &gt; <a href="#"
							title="惠水土地租出">乌当土地租出</a> &gt; <a href="javascript:void(0)"
							title="惠水土地租出">东风200亩耕地 — 水浇地转让</a>
					</div>
				</div>
				<div class="ads-container clear">
					<div class="ads-detail">
						<p class="ads-detail-title">东风200亩耕地 — 水浇地转让</p>
						<ul class="ads-detail-label clear">
							<li class="bf-color-green">个人地源</li>
						</ul>
						<div class="ads-detail-content clear">
							<!--轮播图开始-->
							<div class="carousel-multi  ">
								<div class="plot_left_img"
									style="margin-bottom: 10px; width: 484px; height: 285px; overflow: hidden;">
									<div class="_supply_collect"></div>
									<div id="carousel-example-multi"
										class="carousel slide linkedCarousel supply-control"
										data-interval="" data-ride="carousel" style="z-index: 98;">
										<div class="carousel-inner" role="listbox">
											<div class="item ci-pic  active">
												<div class="del_sell_box">
													<img       src="../web/soil/images/guiyang1.jpeg"
														data-original="images/guiyang1.jpeg" alt="IMG">

												</div>
												<div class="ci-description">
													<span class="pull-left text_white margin-left-10"></span> <span
														class="pull-right text_white margin-right-10">1/3</span>
												</div>
											</div>

											<div class="item ci-pic  ">
												<div class="del_sell_box">
													<img       src="../web/soil/images/guiyang2.jpeg"
														data-original="images/guiyang2.jpeg" alt="IMG">

												</div>
												<div class="ci-description">
													<span class="pull-left text_white margin-left-10"></span> <span
														class="pull-right text_white margin-right-10">2/3</span>
												</div>
											</div>


										</div>
										<a class="left carousel-control"
											href="#carousel-example-multi" role="button"
											data-slide="prev" style="height: 70%;"> <img
											      src="../web/soil/images/left.png" class="cem-only ceml-only" width="50%">
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control"
											href="#carousel-example-multi" role="button"
											data-slide="next" style="height: 70%;"> <img
											      src="../web/soil/images/right.png" class="cem-only ceml-only" width="50%">
											<span class="sr-only">Next</span>
										</a>
									</div>
								</div>
								<table class="multi_nav_wrapper">
									<tbody>
										<tr>
											<td class="navigator_td">
												<div class="navigator_left">
													<a href="#"> <i
														class="glyphicon glyphicon-chevron-left"></i> <span
														class="sr-only">Previous</span>
													</a>
												</div>
											</td>
											<td class="multi_nav_td _g1">
												<div role="presentation"
													class="plot_img_list1 multi_nav_item active">
													<a href="/file"> <img       src="../web/soil/images/guiyang1.jpeg">
													</a>
												</div>
											</td>
											<td class="multi_nav_td _g1">
												<div role="presentation"
													class="plot_img_list1 multi_nav_item ">
													<a href="/file"> <img       src="../web/soil/images/guiyang2.jpeg">
													</a>
												</div>
											</td>
											<td class="multi_nav_td _g1"></td>
											<td class="multi_nav_td opac0" style="display: table-cell;"></td>

											<td class="navigator_td">
												<div class="navigator_right">
													<a href="#"> <i
														class="glyphicon glyphicon-chevron-right"></i> <span
														class="sr-only">Next</span>
													</a>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!--轮播图结束-->
							<div class="ads-detail-ctx ">
								<div class="ads-detail-list1 clear">
									<p>
										转让费：<span class="ads-detail-cost">面议</span>
									</p>
								</div>
								<div class="ads-detail-list2 ads-detail-list2-pb184">
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">流转方式</span> <span>:</span>
										<span class="ads-detail-margin" style="color: #37ac68;"><a
											href="#" target="_blank">转让</a></span>
									</p>
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">面积</span> <span>:</span>
										<span class="ads-detail-margin">200亩</span>
									</p>

									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">可流转年限</span> <span>:</span>
										<span class="ads-detail-margin">10年</span>
									</p>
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">地区</span> <span
											style="vertical-align: top;">:</span> <span
											class="ads-detail-margin"
											style="color: #37ac68; margin-left: 12px !important; display: inline-block; width: 200px">
											<a href="#" target="_blank">贵州</a>- <a href="#"
											target="_blank">贵阳</a>- <a href="#" target="_blank">乌当</a>
										</span>
									</p>
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">分类</span> <span>:
										</span> <a href="#" target="_blank"> <span
											style="color: #37ac68;">水浇地</span>
										</a>
									</p>
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">权证</span> <span>:</span>
										<span class="ads-detail-margin">-</span>
									</p>
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">权证时间</span> <span>:</span>
										<span class="ads-detail-margin">-</span>
									</p>
									<p class="ads-detail-list2-posi">
										<span class="ads-detail-list2-label">自定义标签</span> <span>:</span>
										<span class="ads-detail-margin" style="color: #37ac68;">-</span>
									</p>
									<p class="ads-detail-list2-posi ads-detail-list2-posi-bh">
										<span class="ads-detail-list2-label">编号</span> <span>:
										</span> <span
											style="color: #37ac68; margin-left: 5px; display: inline-block;">
											s570</span>
									</p>
								</div>
								<div class="ads-detail-list3">
									<p>
										<span class="ads-detail-list3-label">联系人</span> <span>:</span>
										<span class="ads-detail-list3-name">高青</span>
									</p>
									<p>
										<span class="ads-detail-list3-label">手机号码</span> <span>:</span>
										<span class="ads-detail-list3-tel"> <img
											      src="../web/soil/images/dianhua.png" alt=""> <span
											class="no_login_contact">18395001892</span>
										</span>
									</p>

								</div>
							</div>
						</div>
						<div class="ads-detail-time">
							<p>2019-04-20更新</p>
							<p>
								<font class="_view_num">70</font>次查看
							</p>
						</div>
					</div>
					<div class="ads-con-left">
						<div style="height: 50px;">
							<ul class="ads-tabs clear"
								style="position: static; top: 0px; left: 0px; z-index: 998; text-decoration: none;">
								<li class="active">土地流转详情
									<div class="ads-arrow"></div>
								</li>
								<li class="">土地流转介绍
									<div class="ads-arrow"></div>
								</li>
								<li class="">区域介绍
									<div class="ads-arrow"></div>
								</li>
								<li class="">客服交流
									<div class="ads-arrow"></div>
								</li>
							</ul>
						</div>
						<div class="ads-area-details window-scroll">
							<p class="ads-details-title">土地流转详情</p>
							<div class="ads-types">
								<span>土壤质地： -</span> <span>土壤类型： -</span> <span>地形条件： -</span> <span>据城镇中心距离：
									-</span>
							</div>
							<div class="details-label clear">
								<div>设施配套</div>
								<div>
									<ul class="clear">
										<li>-</li>
									</ul>
								</div>
							</div>
							<div class="details-label clear">
								<div>政策支持</div>
								<div>
									<ul class="clear">
										<li>-</li>
									</ul>
								</div>
							</div>
							<div class="details-label clear">
								<div>地上设施</div>
								<div>
									<ul class="clear">
										<li>-</li>
									</ul>
								</div>
							</div>
							<div class="details-label clear">
								<div>旅游资源</div>
								<div>
									<ul class="clear">
										<li>-</li>
									</ul>
								</div>
							</div>
							<div class="details-label clear">
								<div>产业集群</div>
								<div>
									<ul class="clear">
										<li>-</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="ads-area-details window-scroll clear">
							<p class="ads-details-title">土地流转介绍</p>
							<p>碧青曼基地转让/转承包土地200亩及全部设施资源，转让/承包时间：2019年—2046年1.碧青曼基地面积：200亩
								2.地址：贵阳市乌当区水田镇董农村，距离市中心30分钟 3.农业附着物：5000棵杨梅树、桔子树+桃树+梨树+李子树500余棵
								杨梅年产量50万斤/年 4.建筑物：主楼建筑、红砖房、猪圈
								、鱼塘5.道路：贵阳—董农村（31公里、新添大道南段—航天路—云开二级公路—水田街—县道129）
								董农村—基地（2公里、2013年碧青曼牵头修建 6.碧青曼基地水、电资源、环保设施齐全。
								7.资源优势：布衣民族村寨、田园综合体打造区域</p>
							<div>
								<div class="ads-details-pic">
									<div class="ads-details-bigger" style="display: none;">
										<img       src="../web/soil/images/guiyang1.jpeg" alt="">
									</div>
									<img class="_lazy"       src="../web/soil/images/guiyang1.jpeg"
										data-original="images/guiyang1.jpeg" alt=""
										style="display: inline;"> <span></span>
								</div>

								<div class="ads-details-pic">
									<div class="ads-details-bigger" style="display: none;">
										<img       src="../web/soil/images/guiyang2.jpeg" alt="">
									</div>
									<img class="_lazy"       src="../web/soil/images/guiyang2.jpeg"
										data-original="images/guiyang2.jpeg" alt=""
										style="display: inline;"> <span></span>
								</div>



							</div>
						</div>
						<div class="ads-area-details window-scroll">
							<p class="ads-details-title">
								区域介绍<span>————贵州 贵阳 乌当</span>
							</p>
							<div class="ads-details-maps">
								<img       src="../web/soil/images/guiyangdi.png">
							</div>
							<div class="ads-detail-areaIntro">
								<p class="ads-areaIntro-title">贵州 贵阳 乌当</p>
								<div class="ads-areaIntro-desc" style="height: 120px;">
									<p>介绍：无</p>
								</div>
							</div>

						</div>


						<div class="ads-area-details window-scroll">
							<p class="ads-details-title">客服交流</p>
							<div class="contact">
								<div id="container">
									<div class="headers">
										<span style="float: right;">15:00</span> <span
											style="float: left;">高青</span>
									</div>

									<ul class="content" id="communication"></ul>

									<div class="footer">
										<div class="icon">
											<img       src="../web/soil/images/11.png" alt="" id="icon">
										</div>
										<input id="text" type="text" placeholder="说点什么吧..."> <span
											id="btn">发送</span>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>

					</div>


					<!-- -------------right---------- -->
					<div class="ads-con-right">
						<div class="w_sidebar ">
							<div class="w_sidebar_m1" title="我要租出土地">
								<a href="insert.html" target="_blank" class=""><img
									width="100%"       src="../web/soil/images/mian2.png" alt="我要租出土地"></a>
							</div>
							<div class="w_sidebar_m1" title="委托找地">
								<a href="Seek.html" target="_blank" class=""><img
									width="100%"       src="../web/soil/images/mian3.png" alt="委托找地"></a>
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
											<img width="100%"       src="../web/soil/images/mian4.jpg"
												alt="全国优质油茶基地山林地项目转让出租">
										</div>
										<div class="tt">全国优质油茶基地山林地项目转让出租</div>
									</a>
								</div>
								<div class="w_sidebar_box2">
									<a href="#" target="_blank">
										<div class="w_sidebar_m2">
											<img width="100%"       src="../web/soil/images/mian5.jpg"
												alt="稻虾种养年收百万：全国优质小龙虾养殖用地鱼塘水田推荐">
										</div>
										<div class="tt">稻虾种养年收百万：全国优质小龙虾养殖用地鱼塘水田推荐</div>
									</a>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
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


<!-- ----------------交流界面------------------ -->
<script type="text/javascript">
        // 获取图片标签
        var img = document.getElementById("icon");
        var arr = ["../web/soil/images/11.png","../web/soil/images/22.png"];
        var tag = 0;
        // 给图片对象绑定点击事件
        img.onclick = function(){
            // 根据当前显示的图片切换用户图片。
            if(tag == 0){
                img.src = arr[1];
                tag = 1;
                console.log(img.src);
            }else{
                img.src = arr[0];
                tag = 0;
            }
        }

        var btn = document.getElementById("btn");
        var num = -1; //统计聊天记录
        btn.onclick = function(){
            // 判断用户内容是否为空
            var text = document.getElementById("text").value;
            if(text == ""){
                alert("聊天内容不能为空");
            }
            else{
                // 把用户内容添加到区域区域
                var content = document.getElementById("communication");
                content.innerHTML += "<li><img src='"+arr[tag]+"'/><span>"+text+"</span></li>"
            }

            var imgs = content.getElementsByTagName("img");
            var span = content.getElementsByTagName("span");
            num++;
            console.log(imgs[num]);
            console.log(span[num]);
            console.log(num);
            // 判断当前聊天的用户
            if(tag == 0){
                imgs[num].className = "imgleft";
                span[num].className = "spanleft";
            }else{
                imgs[num].className = "imgright";
                span[num].className = "spanright";
            }
            //清空聊天内容
            document.getElementById("text").value= "";
            

        }

</script>
<!-- ----------------交流界面------------------ -->
</html>
