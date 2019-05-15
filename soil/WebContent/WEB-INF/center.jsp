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
            <a href="index" >
                <img src="../web/soil/images/d-logo.png" >
            </a>
            
        </div>
    </div>


    <div class="t-login ">
        <h4 class="tIt"><i></i>个人中心</h4>
            <div class="login-main clear">
    	        <div class="login-left lf" >
        	    <ul class="login-tab">
            	    <li class="cur" id="usernamepassword" onclick="usernamepassword()">账号密码登录</li>
            	    <li id="phoneshow" onclick="phoneshow()">手机验证码登录</li>
            	</ul>
                <div class="login-con">
                    <div class="log_main" id="account">
		                <form id="signupForm" method="post" action="../user/login">
           	                <p class="marTop3 pBgs">	  
					            <input type="text" autocomplete="off" id="userName" name="userName" placeholder="请输入手机号" value="">
           	                </p>
           	  
                            <p class="marTop3 pBgs">           			
                           	    <input id="password" name="password" type="password" autocomplete="off" placeholder="请输入密码">    
			                </p>
			                
                            <dd class="martop">
                                <div class="err hide" id="namekong">用户名不能为空</div>
                                <div class="err hide" id="nameerro">请输入正确的手机号</div>
                                <div class="err hide" id="passwordkong">密码不能为空</div>
                            </dd>
                            <p>
		            </form>
		        </div>
 			</div>
 		</div>
    </div>
</div>
<div class="footer-con mar">
    <p>罗秋梅 版权所有 | 网络经营许可证 Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
</div>
<!-- 登录 End -->






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

</body>
</html>