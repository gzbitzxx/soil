<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>农村土地租出交流网</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="../web/favicon.ico" />
<link href="../web/soil/css/login.css" rel="stylesheet" type="text/css">
<script src="../web/soil/js/login.js"></script>

</head>
<body style>
    <div class="head-logo">
        <div class="head-main mar">
            <a href="index.html" >
                <img src="../web/soil/images/d-logo.png" >
            </a>
            
        </div>
    </div>


    <div class="t-login ">
        <h4 class="tIt"><i></i>登录</h4>
            <div class="login-main clear">
    	        <div class="login-left lf" >
        	    <ul class="login-tab">
            	    <li class="cur" id="usernamepassword" onclick="usernamepassword()">账号密码登录</li>
            	    <li id="phoneshow" onclick="phoneshow()">手机验证码登录</li>
            	</ul>
                <div class="login-con">
                    <div class="log_main" id="account">
		                <form id="signupForm" method="post" onsubmit="return clicksubmit();" action="/passport/sigin?city=hz">
           	                <p class="marTop3 pBgs">	  
					            <input type="text" autocomplete="off" id="username" name="username" placeholder="请输入手机号" value="">
           	                </p>
           	  
                            <p class="marTop3 pBgs">           			
                           	    <input id="password" name="password" type="password" autocomplete="off" placeholder="请输入密码">    
			                </p>
			                <input type="hidden" id="aim1" name="aim" value="pc">
			                <!--  <p class="marTop3 err">错误提示</p> -->	 
                        
                            <dd class="martop">
                                <div class="err hide" id="namekong">用户名不能为空</div>
                                <div class="err hide" id="nameerro">请输入正确的手机号</div>
                                <div class="err hide" id="passwordkong">密码不能为空</div>
                            </dd>
                            <p>
                                <a class="wpassword" href="#">忘记密码</a></p>
                            <div class="signinNow"> 
                                <a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" href="javascript:void(0)" onclick="clicksubmit();return false;" name="loginSubmit" id="login" class="setBtn">
                                <span>立 即 登 录</span></a>
                                <span class="setBtn" style="display:none;" id="loginload" name="loginload">
	    			            <!-- <img src="https://secure.dhgate.com/pstimage/2008/web20/seller/img/loadings.gif" /> -->
	    			                <span>正 在 登 录</span>
	    		                </span> 
 			                    <p class="register">还没有土地租出网账号？
 			                    <a class="regBtn" href="register.html">立即注册<i></i>
 			                    </a>
 			                </p>
                        </div>
		                <input type="hidden" id="service" name="service" value="#">
		                <input type="hidden" id="status1" name="status" value="1">
		            </form>
		        </div>
                <div class="log_main hide" id="mobile">
		            <form method="post" onsubmit="return phonsubmit();" action="/passport/phon?city=hz">	
		                <p class="marTop3 pBgs">	 
           	                <span class="lf"> 
					            <input type="text" autocomplete="off" id="phone" name="phone" placeholder="请输入手机号" value="">
           	                </span>
           	                <a class="yzmBtn" id="J_getCode" href="javascript:void(0)" onclick="clickyzmBtn();return false;">发送验证码
           	                </a>
                            <a class="yzmBtn hide" href="javascript:void(0)" id="J_resetCode">
                                    <span id="J_second">60</span>秒后重发
                            </a>
                        </p>
                        <p class="marTop3 pBgs">           			
              	            <input id="phonecode" name="phonecode" type="text" autocomplete="off" placeholder="请输入验证码">    
			            </p>
			            <input type="hidden" id="aim2" name="aim" value="pc">
			            <input type="hidden" id="service" name="service" value="#">
		                <input type="hidden" id="city" name="city" value="hz"> 
		                <input type="hidden" id="status2" name="status" value="1">
			            <!--  <p class="marTop3 err">错误提示</p> -->
                        <dd class="martop">
                            <div class="err hide" id="phonekong">请输入手机号</div>
                            <div class="err hide" id="phoneerro">请输入正确的手机号</div>
                            <div class="err hide" id="codekong">请输入验证码</div>
				            <input type="hidden" name="errorCode" value="" id="errorCode">
				        </dd>
                        <p>
                            <a class="wpassword" href="/passport/password?service=https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2F&amp;status=1&amp;city=hz">忘记密码</a>
                        </p>
                        <div class="signinNow"> 
	                        <a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" href="javascript:void(0)" onclick="phonsubmit();return false;" name="phonloginSubmit" id="phonlogin" class="setBtn">
					        <span>立 即 登 录</span>
					        </a>
	                        <span class="setBtn" style="display:none;" id="loginload" name="loginload">
	    			        <span>正 在 登 录</span>
	    		            </span> 
 			                <p class="register">还没有土地租出网账号？
 			                    <a class="regBtn" href="register">立即注册<i></i></a>
 			                </p>
 			            </div>
 			        </form></div>
 			</div>
 		</div>
        <div class="login-right lf">
        	<span class="or">or</span>
        	<p>使用以下账号直接登录</p>
            <ul class="sf-login">
                <li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_HZ_登录页_登录按钮');" class="wx" href="#">微信</a></li>
                <li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="qq" href="#">QQ</a></li>
                <li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="xl" href="#">新浪</a></li>
            </ul>
            <div class="ewmBox">
                <img src="../web/soil/images/ewm.png">
                <p>[扫描下载土地租出网APP]</p>
            </div>
        </div> 
    </div>
</div>
<div class="footer-con mar">
    <p>罗秋梅 版权所有 | 网络经营许可证 Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
</div>
<!-- 登录 End -->



<!-- 验证码弹层 -->
<div class="tcBox hide">
	<form method="post" onsubmit="return clicksubmitcode();" action="/passport/code?city=hz">
	    <div class="yz-tan ">
		    <p class="pTit">请先输入以下图形验证码</p>
		    <div class="pSty">
		        <input type="text" autocomplete="off" id="code" name="code"> 
		        <input type="hidden" id="phone1" name="phone1">
		        <input type="hidden" id="service1" name="service1">
		        <input type="hidden" id="typecode" name="typecode" value="2">
		        <input type="hidden" id="aim3" name="aim" value="pc">
                <input type="hidden" id="status3" name="status" value="1">
		        <span>
			        <a href="#" onclick="aa()">
				        <img id="MzImgExpPwd">
			        </a>
		        </span>
		    </div>
		    <!-- <p class="err">错误提示</p> -->
		
		    <a href="javascript:void(0)" onclick="clicksubmitcode();return false;" name="logincode" id="logincode" class="qBtn">
			<span>确定</span>
			</a>
	        <!-- 	<a class="qBtn">确定</a> -->
		    <a class="closeBtn">关闭</a>
	    </div>
	</form>
    <input type="hidden" id="pcusername" name="pcusername" value="">
	<input type="hidden" id="pcuserid" name="pcuserid" value="">
	<input type="hidden" id="error" name="error" value="">
	<input type="hidden" id="succee" name="succee" value="">
	<input type="hidden" id="pcmsg" name="pcmsg" value="">
</div>



<script type="text/javascript">
    /* 发送失败停留在手机页面 */
    var error=document.getElementById('error').value;
    if(error){
	    aa();
	    $(".tcBox").removeClass("hide");
	    $(".closeBtn").click(function(){
	
		    $(".tcBox").addClass("hide");
	    })
	    $('#mobile').show();
	    $('#account').hide();
	    $('#usernamepassword').removeClass("cur"); 
	    $('#phoneshow').addClass("cur");
    }
</script>

<script type="text/javascript">
    /* 发送成功后停留在手机号页面 */
    //var succee=
    var succee=document.getElementById('succee').value;
    if(succee){
	    resetCode()
	    $('#mobile').show();
	    $('#account').hide();
	    $('#usernamepassword').removeClass("cur"); 
	    $('#phoneshow').addClass("cur");
    }
</script>

<script type="text/javascript">
    /* 注册失败停留在手机号登录table页面 */
    //var pcmsg=
    var pcmsg=document.getElementById('pcmsg').value;
    if(pcmsg){
	    $('#mobile').show();
	    $('#account').hide();
	    $('#usernamepassword').removeClass("cur"); 
	    $('#phoneshow').addClass("cur");
    }
</script>

<script type="text/javascript">
    //账号手机切换
    function usernamepassword(){
	    $('#mobile').hide();
	    $('#account').show();
	    $('#phoneshow').removeClass("cur"); 
	    $('#usernamepassword').addClass("cur");
	}

    function phoneshow(){
	    $('#mobile').show();
	    $('#account').hide();
	    $('#usernamepassword').removeClass("cur"); 
	    $('#phoneshow').addClass("cur");
	}
</script>


<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		ga('create', '', 'auto');//需传对应城市ID的ga
		ga('create', 'UA-103163281-15', 'auto','clientTracker');
		ga('send', 'pageview');
</script>

<script id="phpstat_js_id_10000001" src="/passport/js/10000002.js?v=201711021538"></script>
<!-- <script src="/passport/js/private.js"></script>   -->
<a href="/pepp4_thunder"></a>
</body>
</html>