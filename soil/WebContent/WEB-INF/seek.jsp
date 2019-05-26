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
            <a href="#" target="_blank">
            <img src="http://imgs01.dihe.cn/201712/2215/5a3cae3a6063b.jpg" title="自营" alt="自营"></a>
         </div>


       
<div class="want_main">
<div class="commission-seeking-container">
    <form id="form" method="post" action="/entrust/addentrust">
        <input type="hidden" value="pc" name="platform">
        <div class="cs-container">
            <div class="cs-progressbar">
                <ul class="clear">
                    <li class="active wd_33">1.委托找地信息</li>
                    <li class="wd_33">2.完成</li>
                 
                </ul>
                <div class="cs-progress"></div>
            </div>
            <div class="height30"></div>
            <div class="cs-info-box" style="margin: 0 0 60px 0;">
                <div class="cs-info-list clear">
                    <div class="cs-info-name">
                        <span>*</span>购买方式
                    </div>
                    <div class="cs-info-option">
                        <ul class="cs-info-type cs-info-type-h clear">
                            <li class="active">不限<input name="method" type="radio" value="不限" checked="checked"></li>
                            <li>出租<input name="method" type="radio" value="出租"></li>
                            <li>转让<input name="method" type="radio" value="转让"></li>
                        </ul>
                    </div>
                </div>
                <div class="cs-info-list clear">
                    <div class="cs-info-name">
                        <span>*</span>地区
                    </div>
                    <div class="cs-info-option">
                        <input type="text" data-area_id="" placeholder="请填写地址" class="form-control _user_entrust_region_selector" id="areaSelect_item_1"> <input type="hidden" id="planaddress" name="region_code" class="form-control" value="0"> 至少填写到市级区域
                    </div>
                </div>
                <div class="cs-info-list clear">
                    <div class="cs-info-name">
                        <span>*</span>用途
                    </div>
                    <div class="cs-info-option margin_rt10">
                        <select class="simulation" id="stair_list">
                            <option value="">请选择一级分类</option>
                                                                <option data-id="1">耕地</option>
                                                                <option data-id="5">园地</option>
                                                                <option data-id="6">林地</option>
                                                                <option data-id="7">草地</option>
                                                                <option data-id="8">水田</option>
                                                                <option data-id="9">水浇地</option>
                                                                <option data-id="9">旱地</option>
                                                                <option data-id="10">住宅用地</option>
                                                                <option data-id="15">其他土地</option>
                                                    </select>
                    </div>
                    <div class="cs-info-option">
                    </div>

                </div>
                <div class="cs-info-list clear">
                    <div class="cs-info-name">
                        <span>*</span>面积
                    </div>
                    <div class="cs-info-option">
                        <input type="" min="1" max="100000" class="cs-info-ls-input" name="area" value="" onpaste="return false" onkeydown="if(event.keyCode==13)event.keyCode=9" onkeypress="if ((event.keyCode<48 || event.keyCode>57)) event.returnValue=false"><span class="spannone" id="mi">平方米</span><span class="spannone" id="mu">亩</span><span class="spannone" id="mi_mu">平方米（亩）</span>
                        <input type="hidden" id="areaunit" name="area_unit" value="亩">
                    </div>
                </div>
                <div class="cs-info-list clear">
                    <div class="cs-info-name">年限</div>
                    <div class="cs-info-option">
                        <input type="" min="1" max="70" class="cs-info-ls-input" name="year" value="" onpaste="return false" onkeydown="if(event.keyCode==13)event.keyCode=9" onkeypress="if ((event.keyCode<48 || event.keyCode>57)) event.returnValue=false"> 年
                    </div>
                </div>
                <div class="cs-info-list clear">
                    <div class="cs-info-name">价格</div>
                    <div class="cs-info-option">
                        <input type="" min="1" class="cs-info-ls-input" name="price" value="" onpaste="return false" onkeydown="if(event.keyCode==13)event.keyCode=9" onkeypress="if ((event.keyCode<48 || event.keyCode>57)) event.returnValue=false"> 万元
                    </div>
                </div>
                <div class="cs-info-list clear">
                    <div class="cs-info-name">备注说明</div>
                    <div class="cs-info-option">
                        <textarea name="content" id="" placeholder="写下对土地更详细的要求，更容易寻找到你想要的土地"></textarea>
                    </div>
                </div>
                <div class="cs-info-btn">
                    <button disabled="disabled" id="next_btn" class="cs-btn" style="background:#ccc;">提交</button>
                </div>
            </div>
            
 
        </div>
    </form>
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

</html>