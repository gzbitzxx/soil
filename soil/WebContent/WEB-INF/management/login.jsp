<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>土地租出后台管理</title>
    <link href="../web/htmlframe/plugings/layui/css/layui.css" rel="stylesheet" type="text/css" />
    <link href="../web/iconfont/iconfont.css" rel="stylesheet" />
    <link rel="stylesheet" href="../web/htmlframe/plugings/bootstrap/css/site.min.css" />
    <link rel="stylesheet" href="../web/htmlframe/style/hui.css" />
    <link rel="shortcut icon" href="../web/favicon.ico" />
</head>

<body style="background:url('../web/htmlframe/imgs/login-bg.jpg');background-size: 100%;">

    <div class="hui-login-panel hui-radius">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h2 style="margin: 0px;padding: 0px;text-align: center;color:#4FC1E9;font-size: 30px;">管理员登陆</h2>
                </div>
            </div>
            <br>
            <form method="post" action='../admin/login'>
            <!-- <div class="row" style="color:red;">&nbsp;&nbsp;&nbsp;&nbsp;登陆信息有误，请重新输入！</div> -->
            <div class="row">
                <div class="col-md-12">
                        <div class="hui-input-group hui-panel-radius">
                            <i class="iconfont icon-touxiang"></i>
                            <input type="text" name="userName" class="hui-input-primary hui-radius" placeholder="用户名" />
                        </div>
                </div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class="col-md-12">
                        <div class="hui-input-group hui-panel-radius">
                            <i class="iconfont icon-mima"></i>
                            <input type="password" name="password" class="hui-input-primary hui-radius" placeholder="密码" />
                        </div>
                </div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class="col-md-12" style="text-align: center;">
                       <button class="hui-btn hui-btn-primary hui-radius" type='submit'>登 录</button>
                </div>
            </div>
            <br>
            <br>
            </form>
            <div class="row">
                <div class="col-md-12" style="text-align: center;">
                       <div style="font-size: 13px;">
                           Copyright © 2019 Powered by 罗秋梅
                       </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>