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
<link href="../web/soil/css/register.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

	function hideDialog() {
    var bdBackDiv = document.getElementById('f-tan');
    var bdDialog = document.getElementById('fwtk');

    bdBackDiv.style.visibility = 'hidden';
    bdDialog.style.visibility = 'hidden';
}
</script>
</head>




<body style="">
<div class="head-logo">
    <div class="head-main mar">
       <a href="index">
            <img src="../web/soil/images/d-logo.png" /></a>
    </div>
</div>


<!-- 注册  -->
<div class="zcBox mar">
    <form method="post" action="/passport/register?city=hz">
	    <h4 class="tIt"><i></i>创建账户</h4>
        <div class="login-main clear">
    	    <div class="login-left lf">
                <div class="login-con">
            	    <div class="log_main cjUser">
                	    <p class="pBgs">
                	        <span class="lf">
                	            <input id="registerphone" name="registerphone" type="text" placeholder="请输入手机号" value="">
                	        </span>
                	        <a class="yzmBtn" id="J_getCode" href="javascript:void(0)" onclick="clickyzmBtn();return false;">发送验证码</a>
                	        <a class="yzmBtn hide" href="javascript:void(0)" id="J_resetCode">
                	            <span id="J_second">60</span>秒后重发
                	        </a>
                	    </p>
                	                	
                	    <p class="pBgs">
                	        <input id="phonecode" name="phonecode" type="text" autocomplete="off" placeholder="请输入短信验证码">
                	    </p>
                        <p class="pBgs">
                            <input id="nickname" name="nickname" type="text" autocomplete="off" placeholder="请输入2-16个字的昵称" value="">
                        </p>
                        <p class="pBgs">
                            <input id="pwd" name="pwd" type="password" autocomplete="off" placeholder="请输入密码(6-20位字母、数字)" value="">
                        </p>
                        <p class="pBgs">
                            <input id="pwdss" naem="pwdss" type="password" autocomplete="off" placeholder="请确认密码" value="">
                        </p>
                        <input type="hidden" id="service" name="service" value="#">
                        <input type="hidden" id="status" name="status" value="1">
                   
                        <!-- <p class="err">您输入的短信验证码有误</p> -->
                    
                    
                    
                        <div class="err hide" id="phonekong">请输入手机号</div>
                        <div class="err hide" id="phoneerro">请输入正确的手机号</div>
                        <div class="err hide" id="codekong">请输入验证码</div>
                        <div class="err hide" id="pwdkong">请设置登录密码</div> 
                        <div class="err hide" id="cc">请确认密码</div> 
                        <div class="err hide" id="dd">两次输入的密码不一致</div> 
                        <div class="err hide" id="kk">请设置密码为6-20位字母或数字</div> 
                        <div class="err hide" id="nn">请输入2-16个字的昵称</div> 
                        <div class="err hide" id="xy">请勾选土地租出网用户使用协议》</div>
                   
                    <!-- <a class="zcBtn">注册</a> -->
                    
                        <a onmousedown="_trackData.push(['addaction','PC_HZ_注册页','注册按钮']);	ga('send','event','PC_BJ_注册页','注册按钮','PC_BJ_注册页_注册按钮');" href="javascript:void(0)" onclick="clicksubmit();return false;" name="register" id="register" class="zcBtn">
					        <span>注册</span>
					    </a>
	                    <span class="zcBtn" style="display:none;" id="registerload" name="registerload">
	    			<!-- <img src="https://secure.dhgate.com/pstimage/2008/web20/seller/img/loadings.gif" /> -->
	    			        <span>正 在 注册</span>
	    		        </span> 
                    </div>
                      <p class="xieyi">
                            <input type="checkbox" >&nbsp;我已阅读并同意<a class="xyBtn">《土地租出网用户使用协议》</a> 
                      </p>
                </div>
            </div>
              <div class="login-right lf">
        	<span class="or">or</span>
        	<p>已有土地租出网账号：
        	    <span class="marTop10">
        	        <a class="regBtn log-in marTop10" href="login">直接登录<i></i></a>
        	    </span>
        	</p>
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
<!-- 注册 End -->
<div class="footer-con mar">
    <p>罗秋梅版权所有 | 网络经营许可证 Copyright &copy; 2019-2020 农村土地租赁承包网络平台</p>
</div>

</body>
</html>