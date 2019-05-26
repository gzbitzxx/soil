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
<link href="../web/soil/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript">
	function hideDialog() {
		var bdBackDiv = document.getElementById('f-tan');
		var bdDialog = document.getElementById('fwtk');

		bdBackDiv.style.visibility = 'hidden';
		bdDialog.style.visibility = 'hidden';
	}
</script>

<!-- 设置验证提示的样式 开始 -->
<style type="text/css">
label.error {
	color: red;
}

.setBtn {
    background: #fbb100;
    border-radius: 20px;
    width: 360px;
    display: block;
    font-size: 18px;
    line-height: 40px;
    color: #fff;
    text-align: center;
    margin-bottom: 17px;
    border: 0;
}

</style>
<!-- 设置验证提示的样式 结束 -->

</head>


<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>


<script>

	$().ready(function() {
		
		
		// 手机号码验证
		$.validator.addMethod("mobile", function(value, element) {
		    if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(value) || /^1[34578][0-9]\d{8}$/.test(value)){
		        return true;
		    }
		    return false;
		}, "请输入固话或手机号码");   
		
		
		
		// 在键盘按下并释放及提交后验证提交表单
		$("#commentForm").validate({
			rules : {
				name : {
					required : true,
					minlength : 2
				},
				password : {
					required : true,
					minlength : 6,
					maxlength:16
				},
				 
				passwords : {
					required : true,
					minlength : 6,
					equalTo : "#password"
				},
				userName : {
					required : true,
					minlength : 2
				},
				phone : {
					required : true,
					mobile:true
				},
				
			},

			messages : {
				name : {
					required : "请输入用户名",
					minlength : "用户名必需由两个字符组成"
				},
				password : {
					required : "请输入密码",
					minlength : "长度必须大于6小字符，只能为英语字、数字",
					maxlength : "长度必须小于16个字符，只能为英语字、数字"

				},
				passwords : {
					required : "请再次输入密码",
					minlength : "长度必须大于6小字符，只能为英语字、数字",
					maxlength : "长度必须小于16个字符，只能为英语字、数字",
					equalTo : "两次密码输入不一致"
				},
				userName : {
					required : "请输入真实姓名",
					minlength : "用户名必需由两个字符组成",
				},
				phone : {
					required : "请输入电话号码",
				},
			}
		})
	});
</script>

<!-- 添加的验证js 结束 -->



<body style="">
	<div class="head-logo">
		<div class="head-main mar">
			<a href="index"> <img src="../web/soil/images/d-logo.png" /></a>
		</div>
	</div>


	<!-- 注册  -->
	<div class="zcBox mar">
		<form method="post" action="addUser" id="commentForm">
			<h4 class="tIt">
				<i></i>创建账户
			</h4>
			<div class="login-main clear">
				<div class="login-left lf">
					<div class="login-con">
						<div class="log_main cjUser">
							<p class="pBgs">
								<input id="userName" name="userName" type="text"
									placeholder="请输入用户名" value="">
							</p>

							<p class="pBgs">
								<input id="name" name="name" type="text" autocomplete="off"
									placeholder="请输入名字" value="">
							</p>

							<p class="pBgs">
								<input id="password" name="password" type="password"
									autocomplete="off" placeholder="请输入密码">
							</p>

							<p class="pBgs">
								<input id="passwords" naem="passwords" type="password"
									autocomplete="off" placeholder="请确认密码" value="">
							</p>

							<p class="pBgs">
								<input id="phone" name="phone" type="text" autocomplete="off"
									placeholder="请输入联系电话" value="">
							</p>

						</div>
						<p class="xieyi">
							<input type="submit" value="注册" class="setBtn">
						</p>
					</div>
				</div>
				<div class="login-right lf">
					<span class="or">or</span>
					<p>
						已有土地租出网账号： <span class="marTop10"> <a
							class="regBtn log-in marTop10" href="login">直接登录<i></i></a>
						</span>
					</p>
					<p>使用以下账号直接登录</p>
					<ul class="sf-login">
						<li><a
							onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_HZ_登录页_登录按钮');"
							class="wx" href="#">微信</a></li>
						<li><a
							onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');"
							class="qq" href="#">QQ</a></li>
						<li><a
							onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');"
							class="xl" href="#">新浪</a></li>
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