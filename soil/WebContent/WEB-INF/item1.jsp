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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../web/soil/css/bootstrap.css" rel='stylesheet' type='text/css' />
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
		<a href="index"><img src="../web/soil/images/logo.png" alt=""/></a>
	  </div>
	</div>
	<div class="col-xs-8 header_right">
	  <span class="menu"></span>
			<div class="top-menu">
				<ul>
                    <li><a href="../index/index"> <i class="fa fa-home"></i>首页</a></li>
                    <li><a class="active scroll"  href="../index/about"><i class="fa fa-star"> </i>我要找地</a></li>
                    <li><a href="../index/contact"><i class="fa fa-thumbs-up"> </i>土地资讯</a></li>
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
<div class="about_top">
    <div class="container">
        <div class="about">
            <div class="idx-ad">
              <a href="#" >
              <img src="../web/soil/images/soil222.jpg" title="自营  " alt="自营"></a>
            </div>
        </div>

 
<div class="area-details-container"> 
    <div class="ads-addIndex">
        <div class="ads-addIndex-inner">
            <a href="index.xml">土地租出网</a>
            <a href="#" title="河南土地流转">贵州土地租出</a> &gt;
            <a href="#" title="南阳土地流转">黔南土地租出</a> &gt;
            <a href="#" title="惠水土地租出">贵定土地租出</a> &gt;
            <a href="javascript:void(0)" title="惠水土地租出">贵州黔南布依族苗族贵定县20亩茶园出租</a>
        </div>
    </div>
    <div class="ads-container clear">
        <div class="ads-detail">
            <p class="ads-detail-title">贵州黔南布依族苗族贵定县20亩茶园出租</p>
            <ul class="ads-detail-label clear">
                <li class="bf-color-green">个人地源</li>
            </ul>
            <div class="ads-detail-content clear" >
                <!--轮播图开始-->
                <div class="carousel-multi  ">
                    <div class="plot_left_img" style="margin-bottom:10px;width:484px;height:285px;overflow:hidden;">
                        <div class="_supply_collect">
                        </div>
                        <div id="carousel-example-multi" class="carousel slide linkedCarousel supply-control" data-interval="" data-ride="carousel" style="z-index:98;">
                            <div class="carousel-inner" role="listbox">
                                <div class="item ci-pic  active">
                                    <div class="del_sell_box">
                                    <img src="../web/soil/images/cha1.jpg" data-original="images/cha1.jpg" alt="IMG">
                                     <!--    <img src="../web/soil/images/img1.jpg" data-original="images/img1.jpg" alt="IMG"> -->
                                    </div>  
                                    <div class="ci-description">
                                        <span class="pull-left text_white margin-left-10"></span>
                                        <span class="pull-right text_white margin-right-10">1/3</span>
                                    </div>
                                </div>

                              
                            </div>
                            <a class="left carousel-control" href="#carousel-example-multi" role="button" data-slide="prev" style="height: 70%;">
                                <img src="../web/soil/images/left.png" class="cem-only ceml-only" width="50%">
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-multi" role="button" data-slide="next" style="height: 70%;">
                                <img src="../web/soil/images/right.png" class="cem-only ceml-only" width="50%">
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <table class="multi_nav_wrapper">
                        <tbody>
                        <tr>
                            <td class="navigator_td">
                                <div class="navigator_left">
                                    <a href="#">
                                        <i class="glyphicon glyphicon-chevron-left"></i>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </div>
                            </td>
                            <td class="multi_nav_td _g1">
                                <div role="presentation" class="plot_img_list1 multi_nav_item active">
                                    <a href="/file">
                                        <img src="../web/soil/images/cha1.jpg">
                                    </a>
                                </div>
                            </td>
                            <td class="multi_nav_td _g1">
                                
                            </td>
                            <td class="multi_nav_td _g1">
                                
                            </td>
                            <td class="multi_nav_td opac0" style="display: table-cell;"></td>

                            <td class="navigator_td">
                                <div class="navigator_right">
                                    <a href="#">
                                        <i class="glyphicon glyphicon-chevron-right"></i>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--轮播图结束-->
                <div class="ads-detail-ctx " >
                    <div class="ads-detail-list1 clear">
                        <p>转让费：<span class="ads-detail-cost">2000元/亩/年</span></p>
                    </div>
                    <div class="ads-detail-list2 ads-detail-list2-pb184">
                        <p class="ads-detail-list2-posi">
                            <span class="ads-detail-list2-label">流转方式</span>
                            <span>:</span>
                            <span class="ads-detail-margin" style="color:#37ac68;"><a href="#" >出租</a></span>
                        </p>
                        <p class="ads-detail-list2-posi">
                            <span class="ads-detail-list2-label">面积</span>
                            <span>:</span>
                            <span class="ads-detail-margin">20亩</span>
                        </p>
                        
                        <p class="ads-detail-list2-posi">
                            <span class="ads-detail-list2-label">可流转年限</span>
                            <span>:</span>
                            <span class="ads-detail-margin">10年</span>
                        </p>
                        <p class="ads-detail-list2-posi">
                            <span class="ads-detail-list2-label">地区</span>
                            <span style="vertical-align: top;">:</span>
                            <span class="ads-detail-margin" style="color:#37ac68; margin-left: 12px !important; display: inline-block; width: 200px">
                                <a href="#" >贵州</a>-
                                <a href="#" >黔南布依族苗族</a>- 
                                <a href="#" >贵定县</a>
                            </span>
                        </p>
                        <p class="ads-detail-list2-posi">
                            <span class="ads-detail-list2-label">分类</span>
                            <span>: </span>
                            <a href="#" >
                                <span style="color:#37ac68;">茶园</span>
                            </a>
                        </p>
                        <p class="ads-detail-list2-posi">
                            <span class="ads-detail-list2-label">自定义标签</span>
                            <span>:</span>
                            <span class="ads-detail-margin" style="color:#37ac68;">-</span>
                        </p>
                        <p class="ads-detail-list2-posi ads-detail-list2-posi-bh">
                            <span class="ads-detail-list2-label">编号</span>
                            <span>: </span>
                            <span style="color:#37ac68;margin-left:5px;display:inline-block;"> s50</span>
                        </p>
                    </div>
                    <div class="ads-detail-list3">
                        <p>
                            <span class="ads-detail-list3-label">联系人</span>
                            <span>:</span>
                            <span class="ads-detail-list3-name">李先生</span>
                        </p>
                        <p>
                            <span class="ads-detail-list3-label">手机号码</span>
                            <span>:</span>
                            <span class="ads-detail-list3-tel">
                                <img src="../web/soil/images/dianhua.png" alt="">
                                <span class="no_login_contact">15155676526</span>
                            </span>
                        </p>
                      
                    </div>
                </div>
            </div>
        </div>
        <div class="ads-con-left">
           
            <div class="ads-area-details window-scroll clear">
                <p class="ads-details-title">土地流转介绍</p>
                <p>贵州黔南贵定县20亩茶叶种植土地转让，水源丰富，交通便利，有意者联系</p>
                <div>
                    <div class="ads-details-pic">
                        <div class="ads-details-bigger" style="display: none;">
                            <img src="../web/soil/images/cha1.jpg" alt="">
                        </div>
                        <img class="_lazy" src="../web/soil/images/cha1.jpg" data-original="images/cha1.jpg" alt="" style="display: inline;">
                        <span></span>
                    </div>
                    
                    
                                    </div>
            </div>
            <div class="ads-area-details window-scroll">
                <p class="ads-details-title">区域介绍<span>——贵州黔南布依族苗族贵定县</span></p>
                <div class="ads-details-maps">
                    <img src="../web/soil/images/di2.png">
                </div>
                <div class="ads-detail-areaIntro">
                    <p class="ads-areaIntro-title">贵州黔南布依族苗族三都县</p>
                        <div class="ads-areaIntro-desc" style="height: 120px;">
                            <p>贵定县是中华人民共和国贵州省黔南布依族苗族自治州下属的一个县。面积1631平方公里，2002年人口28万。邮政编码551300，县政府驻：城关镇。</p>
                            <p>行政区划</p>
                            <p>目前下辖有8镇、12乡：</p>
                            <p>镇：城关镇、盘江镇、沿山镇、旧治镇、昌明镇、平伐镇、德新镇、新巴镇。</p>
                            <p>乡：定东乡、定南乡、岩下乡、猴场堡乡、铁厂乡、都六乡、洛北河乡、新铺乡、抱管乡、巩固乡、窑上乡。</p>
                        </div>
                </div>
                <div class="ads-detail-areaIntro-btn ads-btn-active">
                    <span class="ads-detail-text">更多介绍</span>
                    <span class="arrowy"></span>
                </div>
            </div>

            <c:if test="${user!=null}">
            <div class="ads-area-details window-scroll">
                <p class="ads-details-title">客服交流</p>
                <div class="contact">
                    <div id="container">
                        <div class="headers"> 
                            <span style="float: right;">16:00</span> 
                            <span style="float: left;">李先生</span> 
                        </div>
                 
                        <ul class="content" id="communication"></ul>

                        <div class="footer">
                            <div class="icon"> <img src="../web/soil/images/11.png" alt="" id="icon"> </div>
                            <input id="text" type="text" placeholder="说点什么吧..."> <span id="btn">发送</span> </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
           </c:if>
        </div>


        <!-- -------------right---------- -->
        <div class="ads-con-right">
            <div class="w_sidebar ">
                <div class="w_sidebar_m1" title="我要租出土地"><a href="insert.html"  class=""><img width="100%" src="../web/soil/images/mian2.png" alt="我要租出土地"></a></div>
                <div class="w_sidebar_m1" title="委托找地"><a href="Seek.html"  class=""><img width="100%" src="../web/soil/images/mian3.png" alt="委托找地"></a></div>
                
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>




     

         <div class="col-md-12 grid_6" style="text-align:center;">&nbsp;</div>
         <div class="clearfix"> </div>
        <div class="copy" style="margin-top:20px;">
            <p>&nbsp;</p>
        </div>  

 <div class="grid_4">
                <div class="col-md-12 grid_6" style="text-align:center;">以上是土地租赁交流网</div>
                <div class="clearfix"> </div>
        </div>
        <div class="copy" style="margin-top:20px;">
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