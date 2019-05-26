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
											<span>*</span>土地类别
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="remaining_year" value=""
												id="ass_input">

											<div class="clear"></div>
										</div>
										<!-- <div class="block_bar_tip" id="tip_nx">请输入正确的年限且年限不能大于70年</div> -->
									</div>




									<div class="block_bar margin-top40 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>权属方式
										</div>
										<div class="block_bar_rt">
											<div class="block_ass_tt block_ass_tt_label">
												<input type="radio" name="ownership_type" id="js_person"
													value="个人"><label for="js_person">个人</label> <input
													type="radio" name="ownership_type" id="js_collective"
													value="集体"><label for="js_collective">集体</label> <input
													type="radio" name="ownership_type" id="js_State-owned"
													value="国有"><label for="js_State-owned">国有</label>
											</div>
											<div class="clear"></div>
										</div>

									</div>





									<div class="block_bar margin-top40 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>流转方式
										</div>
										<div class="block_bar_rt input_style">

											<div class="block_bar_type consult_hide">
												<input type="radio" name="transfer" value="2"
													class="block_input">出租
											</div>

											<div class="block_bar_type consult_hide">
												<input type="radio" name="transfer" value="3"
													class="block_input">转包
											</div>
											<div class="block_bar_type consult">
												<input type="radio" name="transfer" value="4"
													class="block_input">入股
											</div>
											<div class="block_bar_type consult">
												<input type="radio" name="transfer" value="5"
													class="block_input">互换
											</div>
											<div class="block_bar_type consult">
												<input type="radio" name="transfer" value="9"
													class="block_input">抵押
											</div>
											<div class="clear"></div>
										</div>
									</div>
									<div class="block_bar margin-top40 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>土地面积
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" id="Area_mu" value=""
												name="area" style="border-color: #e7e7e7;"> <input
												type="hidden" value="亩" name="area_unit">
											<!-- <div class="block_bar_postion">提示：1平方米约等于0.0015亩，1公顷等于15亩</div> -->
											<div class="block_ass_tt">亩</div>

											<div class="clear"></div>
										</div>

									</div>
									<div class="block_bar margin-top50 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>可流转年限
										</div>
										<div class="block_bar_rt">
											<input class="block_ass_input" name="remaining_year" value=""
												id="ass_input">
											<div class="block_ass_tt">年</div>
											<div class="clear"></div>
										</div>
										<!-- <div class="block_bar_tip" id="tip_nx">请输入正确的年限且年限不能大于70年</div> -->
									</div>
									<div class="block_bar margin-top20 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>所在地区
										</div>
										<div class="block_bar_rt input_adr">
											<!-- <div style="display:none"> -->
											<input type="hidden" data-area_id="3301" placeholder=""
												class="form-control _entrust_region" id="areaSelect_item_1"
												value="浙江 杭州">
											<!-- </div> -->
											<input type="text" class="block_ass_input areaChoose"
												readonly="readonly"> <input type="hidden"
												id="planaddress" name="region_code" class="form-control"
												value="3301">
										</div>
									</div>
									<div class="block_bar margin-top20 clear">
										<div class="block_bar_title width-90 margin-top8">详细地址</div>
										<div class="block_bar_rt">
											<input class="block_ass_in width-580" value="" name="address">
										</div>
									</div>
									</br>
									<div class="block_bar margin-top20 block_hide js_cost_box tops">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span><b class="js_cost">交易费用</b>
										</div>
										<div class="block_bar_rt">
											<input type="text" id="block_prop" class="block_ass_input"
												name="transfer_fee" value="">
											<div class="block_ass_tt">万元</div>
											<div class="block_ass_img" id="block_ass_bg">
												<input type="checkbox" id="price" class="block_ass_opcity"
													name="mianyi" value="1">
											</div>
											<div class="block_ass_my">
												<label for="price">价格面议</label>
											</div>
											<div class="clear"></div>
										</div>
										<!-- <div class="block_bar_tip" id="tip_zrf">请输入数字金额</div> -->
										<div class="clear"></div>
									</div>
									<div
										class="block_bar margin-top20 block_hide js_rent_box rent_box"
										style="display: none;">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>租金
										</div>
										<div class="block_bar_rt">
											<input type="text" id="input_prop" class="block_ass_input"
												name="rent_fee" value="">
											<!-- <div class="block_bar_postion">提示：请填写每亩每年的租金</div> -->
											<div class="block_ass_tt">元/亩/年</div>
											<div class="block_ass_tt">
												总租金<span id="wyuan_year">0.0000</span>万元/年
											</div>
											<div class="clear"></div>
										</div>
										<!-- <div class="block_bar_tip" id="tip_zj">请输入数字金额</div> -->
										<div class="clear"></div>
									</div>
									<div class="block_bar fy_show clear">
										<div class="block_bar_title width-90">费用</div>
										<div class="block_bar_rt">
											<div class="block_bar_p">面议</div>
										</div>
									</div>




									<div class="block_bar margin-top20 clear">
										<div class="block_bar_title width-90 margin-top8">
											<span>*</span>信息标题
										</div>
										<div class="block_bar_rt">
											<input type="text" name="title" value=""
												class="block_ass_in width-580">
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
												<img width="100%" src="../web/soil/images/shang.png"> <input
													type="file" id="img-upload" name="file" multiple=""
													class="displaynone"> <input type="hidden"
													id="files_id" name="accessories" value="">
												<!-- 设为封面隐藏域 -->
												<input type="hidden" id="cover" name="accessory_id" value="">

											</div>
											<div class="clear"></div>
											</br>
										</div>
									</div>
								</div>

								<div class="block_bar margin-top20 clear">
									<div class="block_bar_title width-90 margin-top8">描述详情</div>
									<div class="block_bar_rt">
										<textarea name="content" class="block_ass_in block_ass_height"
											style="display: none;" placeholder="可输入土地详情说明，如：土地状态、价值说明等等"></textarea>
										<div class="block_ass_height width-580" id="block_ass_in_text"
											placeholder="可输入土地详情说明，如：土地状态、价值说明等等" contenteditable="true"></div>
										<div id="placeholder1">可输入土地详情说明，如：土地状态、价值说明等等</div>

									</div>
									<!-- <div class="block_bar_tip" id="tip_mg">红色语句为敏感词</div> -->
									<div class="clear"></div>
								</div>
								<div class="blockj_type blockj_hide">
									<div class="blockj_type_tltle">
										<span><b>自定义标签</b></span>
										<div class="blockj_type_tp"></div>
									</div>
									<div class="blockj_type_rrt margin-top20 mal20">
										<div class="pub_rt_top">
											<div class="inline land_use_tagsWrap">
												<input type="text" class="width-580" name="" value=""
													id="supply_land_building_tag" placeholder="菜地\蔬菜大棚\果树">
												<input type="hidden" name="land_use" value="2"> <input
													type="hidden" name="land_use_tags" value="">
											</div>
											<div class="clear"></div>
										</div>

									</div>
									<div class="clear"></div>
								</div>
								<div class="margin-top50"></div>
							</div>
							<div class="blockj_type blockj_hide">
								<div class="blockj_type_tltle">
									<span><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系人</b></span>
									<div class="blockj_type_tp"></div>
								</div>
								<div class="blockj_type_rrt margin-top20 mal20">
									<div class="pub_rt_top">
										<div class="inline land_use_tagsWrap">
											<input type="text" class="width-580" name="" value=""
												id="supply_land_building_tag"
												placeholder="请输入两个以上的中文称呼（如：张女士）"> <input
												type="hidden" name="land_use" value="2"> <input
												type="hidden" name="land_use_tags" value="">
										</div>
										<div class="clear"></div>
									</div>

								</div>
								<div class="clear"></div>
							</div>


							<div class="blockj_type blockj_hide">

								<button class="wrap_release" id="Immediate_elease">立即发布</button>

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
