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

<link href="../web/soil/css/services.css" rel='stylesheet' type='text/css' />


<link href='#css?family=Grand+Hotel:400' rel='stylesheet'
	type='text/css'>
<link href='#css?family=Roboto'
	rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>
<!-- Menu -->
<link rel="stylesheet" type="text/css" href="../web/soil/css/jquery.fancybox.css" media="screen" />
<link rel="stylesheet" href="../web/soil/fonts/css/font-awesome.min.css">
<script type="text/javascript">
		$(document).ready(function() {
			$('.fancybox').fancybox();
		});
	</script>

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
                    <li><a href="../index/contact"><i class="fa fa-thumbs-up"> </i>土地资讯</a></li>
                    <li><a class="active scroll"  href="../index/services"><i class="fa fa-picture-o"> </i>帮助中心</a></li>
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

<div></br></br></div>


<body class="no-skin">
        <!-- NARVAR BEGINS -->
        <div class="navbar navbar-default" id="navbar">
            <div role="navigation" style="filter: none; display: block;" class="navbar navbar-default navbar-static-top index-nav" id="main_nav">
                <div class="container">
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row" style="margin-bottom:20px;margin-top:30px;">
                            <div class="col-md-5 col-sm-6 col-xs-5  text-left padding-sides0">
                                <a href="#">
                                    <img class="img-responsive" src="../web/soil/images/timg.png" alt="Brand">
                                </a>
                            </div>
                            <div class="col-md-1 col-sm-1 col-xs-1 text-center" style="font-size:20px;margin-top:10px;color:#999;">|</div>
                            <div class="col-md-5 col-sm-2 col-xs-2 padding-sides0"><div class="shopping_title">用户-帮助中心</div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        <div class="help_index">
            <div class="help_index_main">
                <div class="help_index_title">常见问题</div>
                <div class="help_line"></div>
                <div class="help_index_list">
                    <ul id="help_index_ul">
                                                <li><a href="services.html">发布地块操作</a></li>
                                                <li><a href="services.html">推广有奖</a></li>
                                                <li><a href="services.html">土地分类问题</a></li>
                                                <li><a href="services.html">关于土地宝</a></li>
                                                <li><a href="services.html">如何修改支付密码？</a></li>
                                                <li><a href="services.html">忘记支付密码怎么办？</a></li>
                                                <li><a href="services.html">关于绑定支付宝</a></li>
                                                <li><a href="services.html">如何重新绑定支付宝？</a></li>
                                                <li><a href="services.html">如何进行提现？</a></li>
                                            </ul>
                    <div class=" clear"></div>
                </div>
                <div class=" clear"></div>
                <!--帮助分类-->
                <div class="help_index_title">帮助分类</div>
                <div class="help_line"></div>
                <div class="help_index_cl">
                                            <a href="#"><div class="help_index_content" style="background: url(&quot;images/hd.png&quot;);">
                            <div class="left"><img src="../web/soil/images/hd1.png"></div>
                            <div class="right">账号管理</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#"><div class="help_index_content">
                            <div class="left"><img src="../web/soil/images/hd2.png"></div>
                            <div class="right">搜寻土地</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#"><div class="help_index_content" style="background: url(&quot;images/hd.png&quot;);">
                            <div class="left"><img src="../web/soil/images/hd3.png"></div>
                            <div class="right">租用土地</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#"><div class="help_index_content" style="background: url(&quot;images/hd.png&quot;);">
                            <div class="left"><img src="../web/soil/images/hd4.png"></div>
                            <div class="right">土地分类</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#"><div class="help_index_content" style="background: url(&quot;images/hd.png&quot;);">
                            <div class="left"><img src="../web/soil/images/hd5.png"></div>
                            <div class="right">我要卖地</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#" class="lqm"><div class="help_index_content">
                            <div class="left"><img src="../web/soil/images/hd6.png"></div>
                            <div class="right">土地宝</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#"><div class="help_index_content" style="background: url(&quot;images/hd.png&quot;);">
                            <div class="left"><img src="../web/soil/images/hd7.png"></div>
                            <div class="right">土地服务</div>
                            <div class="clear"></div>
                        </div></a>
                                            <a href="#"><div class="help_index_content" style="background: url(&quot;images/hd.png&quot;);">
                            <div class="left"><img src="../web/soil/images/hd8.png"></div>
                            <div class="right">活动说明</div>
                            <div class="clear"></div>
                        </div></a>
                    
                    <div class=" clear"></div>

        <div class="divideBar30"></div>
        <script type="text/javascript" src="#"></script>
                <div class="contact">
                    <div class="col-md-4 contact_left">
                        <h3>联系我们</h3>
                        <p>Q Q：1394324613</p>
                        <p>微信：xxxxxxxx</p>
                        <p>电话：0859-5555555 （罗秋梅）</p>
                        <p>地址：贵州省贵阳市花溪区贵州大学北校区</p>
                    </div>
                    <div class="col-md-8 contact_right">
                        <h3>留言</h3>
                        <form>
                            <div class="text">
                                <div class="text-fild">
                                    <span>姓名:</span>
                                    <input type="text" class="text" value="请输入您的姓名" onfocus="this.value = '';"
                                        onblur="if (this.value == '') {this.value = '请输入您的姓名';}">
                                </div>
                                <div class="text-fild">
                                    <span>微信:</span>
                                    <input type="text" class="text" value="请输入您的微信" onfocus="this.value = '';"
                                        onblur="if (this.value == '') {this.value = '请输入您的微信';}">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="message-fild">
                                <span>咨询内容:</span>
                                <textarea> </textarea>
                            </div>
                            <label class="btn1 btn-8 btn-8c"><input type="submit" value="提交留言"></label>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                </div>
            </div>
        </div>
        <div class="grid_4">
                <div class="col-md-12 grid_6" style="text-align:center;">以上是土地租赁交流网</div>
                <div class="clearfix"> </div>
        </div>
        <div class="copy" style="margin-top:20px;">
			<p>Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
		</div>
</body>
</html>