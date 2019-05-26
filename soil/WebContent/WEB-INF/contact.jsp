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
<link href="../web/soil/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="../web/soil/js/jquery-1.11.1.min.js"></script>
<link href="../web/soil/css/style.css" rel='stylesheet' type='text/css' />
<link href="../web/soil/css/zixun.css" rel='stylesheet' type='text/css' />
<link href='#css?family=Grand+Hotel:400' rel='stylesheet'
	type='text/css'>
<link href='#css?family=Roboto'
	rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>
<!-- Menu -->
<link rel="stylesheet" href="../web/soil/fonts/css/font-awesome.min.css">

</head>
<body>
<div class="header">
	<div class="col-xs-4">
	  <div class="logo">
		<a href="index"><img src="../web/soil/images/logo.png" alt=""/></a>
	  </div>
	</div>
	<div class="col-xs-8 header_right">
	  <span class="menu"></span>
			<div class="top-menu">
				<ul>
                    <li><a href="../index/index"> <i class="fa fa-home"></i>首页</a></li>
                    <li><a href="../index/about"><i class="fa fa-star"> </i>我要找地</a></li>
                    <li><a class="active scroll" href="../index/contact"><i class="fa fa-thumbs-up"> </i>土地资讯</a></li>
                    <li><a href="../index/services"><i class="fa fa-picture-o"> </i>帮助中心</a></li>
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
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<!-- script for menu -->
	</div>
	<div class="clearfix"> </div>
</div>

</br></br>
        <div class="container">
            <div class="about">
            </div>
        </div>
  

<div class="site-search">
    <div class="site-logo fl">
        <a class="ajk-logo fl" href="#" soj="navigation">土地网</a><span class="ver-line fl">|</span>
        <a class="xf-logo fl" href="#" soj="navigation">资讯</a>
    </div>
    <div class="sel-city">
    <a href="javascript:" class="sel-opt"><span class="city">贵阳</span><i class="i-triangle"></i></a>
    </div>
    <div class="search-box" id="j-search">
    <form class="search-form" method="GET" action="#">
        <input class="input-search" type="text" name="kw" maxlength="100" autocomplete="off" value="请输入关键词" placeholder="请输入关键词">
        <input class="btn-search" type="button" value="搜索" id="search-btn">
        <ul class="search-autocomplete old-search" style="display: none;"></ul>
        <!-- 阻止enter键自动提交表单 -->
        <input type="text" name="" style="display: none">
    </form>  
    </div>
</div>  


<div class="lp-navtabs-warp">
     <div class="lp-nav">
        <ul class="lp-navtabs clearfix">
            <li><a class="item-focus" href="#" soj="leading_navi_toutiao">首页                    </a></li>
            <li><a class="item-focus-1" href="#" soj="leading_navi_daogou">土地新闻                    </a></li>
            <li><a class="item-focus-1" href="#" soj="leading_navi_jujiao">土地政策                    </a></li>
            <li><a class="item-focus-1" href="#" soj="leading_navi_topic">新农视角                    </a></li>
         </ul>
    </div>
</div>

   <!--  <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <li><img src="../web/soil/images/zixun1.jpg" class="img-responsive" alt="" />
                    <div class="banner_desc">
                        <div class="container">
                            <h1>土地租赁交流网</h1>
                            <h2>农村土地租赁承包网络平台</h2>
                        </div>
                </li>
                <li><img src="../web/soil/images/zixun2.jpg" class="img-responsive" alt="" />
                    <div class="banner_desc">
                        <div class="container">
                            <h1>土地租赁交流网</h1>
                            <h2>农村土地租赁承包网络平台</h2>
                        </div>
                </li>
                <li><img src="../web/soil/images/zixun3.jpg" class="img-responsive" alt="" />
                    <div class="banner_desc">
                        <div class="container">
                            <h1>土地租赁交流网</h1>
                            <h2>农村土地租赁承包网络平台</h2>
                        </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="smart_details">
    </div> -->

<div id="container">
    <div class="top-pic-wrap">

<!-- 点击左右按钮切换图片 -->
<div class="res_main_content">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class=""> </li>
                <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
            <div class="item">
                <a href="#"><img src="../web/soil/images/zixun1.jpg"></a>
                <div class="carousel-caption"></div>
            </div>
            <div class="item active">
                <a href="#"><img src="../web/soil/images/zixun2.jpg"></a>
                <div class="carousel-caption"></div>
            </div>
            <div class="item">
                <a href="#"><img src="../web/soil/images/zixun3.jpg"></a>
                <div class="carousel-caption"></div>
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span></a> 
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span></a>
    </div>

    </div>
</div>

      <!------------------------------------------>



<div class="res_main">
        <div class="res_main_content_left">
            <div class="land_list land_list_padding">
                <div class="header">
                    <div class="header_right header_right_noimg">
                        <div class="header_right_title">
                            <a href="#" target="_blank" title="绵阳：农机成春耕生产“主力军”"> 绵阳：农机成春耕生产“主力军”</a>
                        </div>
                        <div class="land_list_tt">
                            <a href="#" target="_blank"> 时值春耕之际，江油的农田里一片繁忙，一台台现代农业机械在田间地头来回穿梭作业，成为春耕生产“主力军”。
                            </a>
                        </div>
                        <div class="header_right_bottom">
                            <ul>
                                <li style="background: none; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><img src="../web/soil/images/label.png"></li>
                                <li><a href="#">江油 农机 补贴</a></li>
                                <div class="header_right_bottom_right">
                                    <li class="time">2019.05.06</li>
                                    <li class="color_0">土地新闻</li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>


            <div class="land_list ">
                <div class="header">
                    <div class="header_right header_right_noimg">
                        <div class="header_right_title">
                           <a href="#" target="_blank" title="减施化肥农药推进油菜产业绿色“成长”"> 减施化肥农药推进油菜产业绿色“成长”</a>
                        </div>
                        <div class="land_list_tt">
                            <a href="#" target="_blank"> 国家重点研发计划项目“油菜化肥农药减施技术集成研究与示范”日前在四川成都进行了年度总结，并召开现场观摩会。由四川省农业科学院土壤肥料研究所研究人员刘定辉牵头的该项目，已分别在四川盆地、三峡库区、云南山地和贵州喀斯特山地四大片区设置重点研究区域，建成5个较为成熟的技术模式示范基地，实现肥料化肥和农药各减量25%，油菜籽平均增产3%以上，综合技术模式辐射达到300万亩。
                            </a>
                        </div>
                        <div class="header_right_bottom">
                            <ul>
                                <li style="background: none; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><img src="../web/soil/images/label.png"></li>
                                <li><a href="#">成都 技术 油菜</a></li>
                                <div class="header_right_bottom_right">
                                    <li class="time">2019.05.06</li>
                                    <li class="color_0">土地新闻</li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
                                               
            <div class="land_list ">
                <div class="header">
                    <div class="header_right header_right_noimg">
                        <div class="header_right_title">
                            <a href="#" target="_blank" title="房市地市双升温 中国二线城市“春风”未停"> 房市地市双升温 中国二线城市“春风”未停</a>
                        </div>
                        <div class="land_list_tt">
                            <a href="#" target="_blank"> 　与率先升温又“带头”降温的一线楼市不同，中国多地二线城市房地产市场近期依然春意盎然，房市、地市双双升温。
                            </a>
                        </div>
                        <div class="header_right_bottom">
                            <ul>
                                <li style="background: none; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><img src="../web/soil/images/label.png"></li>
                                <li><a href="#">土地市场 房企 回暖</a></li>
                                <div class="header_right_bottom_right">
                                    <li class="time">2019.05.05</li>
                                    <li class="color_0">土地新闻</li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>


            </div>
                                                
            <div class="land_list ">
                <div class="header">
                    <div class="header_right header_right_noimg">
                        <div class="header_right_title">
                            <a href="#" target="_blank" title="珠三角楼市筑底回暖明显 粤东西北地区继续下行探底"> 珠三角楼市筑底回暖明显 粤东西北地区继续下行探底</a>
                        </div>
                        <div class="land_list_tt">
                            <a href="#" target="_blank"> 广东省房协4月29日晚公布今年一季度广东房地产市场分析报告。报告显示，广东整体房地产销售面积下降的同时录得销售均价增长。报告认为回温主要由粤港澳大湾区规划利好之下的珠三角地区带动，粤东西北地区则依旧在下行探底的通道上。
                            </a>
                        </div>
                        <div class="header_right_bottom">
                            <ul>
                                <li style="background: none; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><img src="../web/soil/images/label.png"></li>
                                <li><a href="#">广东 珠三角 商品房</a></li>
                                <div class="header_right_bottom_right">
                                    <li class="time">2019.05.05</li>
                                    <li class="color_0">土地新闻</li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
                                                


            <div class="land_list ">
                <div class="header">
                    <div class="header_right header_right_noimg">
                        <div class="header_right_title">
                            <a href="#" target="_blank" title="国内多地放开海岛使用权出让 当“岛主”代价有多高？"> 国内多地放开海岛使用权出让 当“岛主”代价有多高？</a>
                        </div>
                        <div class="land_list_tt">
                            <a href="#" target="_blank"> 《广东省自然资源厅关于无居民海岛使用权市场化出让办法(试行)》近日公布，明确广东无居民海岛使用权可通过招标、拍卖或挂牌方式市场化出让，并将于5月10日起实施，这让海岛“买卖”的话题再度升温。
                            </a>
                        </div>
                        <div class="header_right_bottom">
                            <ul>
                                <li style="background: none; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><img src="../web/soil/images/label.png"></li>
                                <li><a href="#">广东 海岛 市场化</a></li>
                                <div class="header_right_bottom_right">
                                    <li class="time">2019.05.05</li>
                                    <li class="color_0">土地新闻</li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
                                                

            <div class="land_list ">
                <div class="header">
                    <div class="header_right header_right_noimg">
                        <div class="header_right_title">
                            <a href="#" target="_blank" title="广州供应增加 房企拿地态度变积极"> 广州供应增加 房企拿地态度变积极</a>
                        </div>
                        <div class="land_list_tt">
                            <a href="#" target="_blank"> 　房地产开发商以土地为根基，近年来，规模房企纷纷提升了土地储备量，做到“手中有粮心不慌”。而对城市而言，土地供应情况直接决定了该城市新建商品住宅的供应量。换言之，如果住宅用地供应不足或供应超量，也就意味着一段时间后的一手住宅供应量较少或猛增。若楼市供求比不平衡，势必会造成价格的波动。
                            </a>
                        </div>
                        <div class="header_right_bottom">
                            <ul>
                                <li style="background: none; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><img src="../web/soil/images/label.png"></li>
                                <li><a href="#">广州 开发商 土地储备量</a></li>
                                <div class="header_right_bottom_right">
                                    <li class="time">2019.05.05</li>
                                    <li class="color_0">土地新闻</li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>                                      
            <a href="javascript:;" class="loading-more" data-sojcommon="click_toutiao_more">
                <img class="loading-icon" src="//pages.anjukestatic.com/xinfang/img/aftoutiao/loading.gif" alt="">
                <span class="loading-tip" style="color: #bbbbbb；">加载更多</span>
             </a>
        </div>
    





       <div class="res_main_content_right">
            <div class="divideBar9"></div>
            <div class="right_label">
                <div class="divideBar25"></div>
                <div class="title">
                    <div class="right_title_position">热门标签</div>
                </div>
                <div class="divideBar15"></div>
                <div class="content">
                                        <a href="#"><div class="right_label_list">庄园</div></a>
                                        <a href="#"><div class="right_label_list">土地</div></a>
                                        <a href="#"><div class="right_label_list">田园</div></a>
                                        <a href="#"><div class="right_label_list">农业</div></a>
                                        <a href="#"><div class="right_label_list">农场</div></a>
                                        <a href="#"><div class="right_label_list">养殖</div></a>
                                        <a href="#"><div class="right_label_list">种植</div></a>
                                        <div class="clear"></div>
                </div>
                <div class="divideBar15"></div>
            </div>
            <div class="divideBar15"></div>


<div class="right_new">
    <div>
        <div class="right_new_position f_left">热门文章</div>
        <div class="right_new_time f_right"></div>
        <div class="clear"></div>
    </div>

    <div class="news_content">
        <div class="divideBar10"></div>
        <div class="w2_hot_article">
           <div class="hot_img hot_img_1">1</div>
           <div class="hot_title"><a href="#" target="_blank" title="农村土地流转新政策">农村土地流转新政策</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img hot_img_2">2</div>
           <div class="hot_title"><a href="#" target="_blank" title="2018年农村分户政策再出新变化，想分户的速了解！">2018年农村分户政策再出新变化，想分户的速了解！</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img hot_img_3">3</div>
           <div class="hot_title"><a href="#" target="_blank" title="土地流转三大忌讳！">土地流转三大忌讳！</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img">4</div>
           <div class="hot_title"><a href="#" target="_blank" title="世界最奢华10大私人庄园别墅">世界最奢华10大私人庄园别墅</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img">5</div>
           <div class="hot_title"><a href="#" target="_blank" title="办理土地流转手续具体有哪些要注意？">办理土地流转手续具体有哪些要注意？</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img">6</div>
           <div class="hot_title"><a href="#" target="_blank" title="农村土地流转，切记这4个要点，否则会吃大亏！">农村土地流转，切记这4个要点，否则会吃大亏！</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img">7</div>
           <div class="hot_title"><a href="#" target="_blank" title="广东规划建设深莞惠区域协同发展试验区">广东规划建设深莞惠区域协同发展试验区</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img">8</div>
           <div class="hot_title"><a href="#" target="_blank" title="丽水推出史上最严农药“管控令”">丽水推出史上最严农药“管控令”</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img">9</div>
           <div class="hot_title"><a href="#" target="_blank" title="为解决小农户发展缺钱缺人，我国将制定“小农户振兴”扶持政策">为解决小农户发展缺钱缺人，我国将制定“小农户振兴”扶持政策</a></div>
           <div class="clear"></div>
        </div>
        <div class="w2_hot_article">
           <div class="hot_img hot_img_last">10</div>
           <div class="hot_title"><a href="#" target="_blank" title="人工智能时代已经来临">人工智能时代已经来临</a></div>
           <div class="clear"></div>
        </div>
    </div>
    <div class="divideBar15"></div>
</div></div></div></div>
<div class="col-md-12 grid_6" style="text-align:center;">&nbsp;</div>
         <div class="clearfix"> </div>
        <div class="copy" style="margin-top:20px;">
            <p>&nbsp;</p>
        </div> 

     <div class="grid_luo">
        <div class="col-md-12 grid_6" style="text-align:center;">以上是土地租赁交流网</div>
        <div class="clearfix"> </div>
    </div>
        <div class="copy" style="margin-top:20px;">
            <p>Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
        </div>
</body>
</html>