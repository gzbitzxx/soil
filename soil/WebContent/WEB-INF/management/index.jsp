<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    
    <script src="../web/htmlframe/plugings/layui/layui.js" type="application/javascript"></script>
    <script src="../web/htmlframe/plugings/scroll/jquery-2.1.1.min.js" type="application/javascript"></script>
    <script src="../web/htmlframe/plugings/bootstrap/js/bootstrap.min.js" type="application/javascript"></script>
    <script src="../web/htmlframe/js/hui-menu.js" type="application/javascript"></script>
    <script src="../web/htmlframe/plugings/scroll/jquery.nicescroll.min.js" type="application/javascript"></script>
    <script src="../web/htmlframe/js/main.js" type="application/javascript"></script>
</head>
<body>
    <div class="hui-top-nav">
        <!-- logo -->
        <div class="hui-top-nav-logo">
            土地租出后台管理
        </div>
        <div style="position: absolute;left: 256px;height: 50px;line-height: 50px;">
            <button class="layui-btn layui-btn-small" style="background: #3BAFDA;" id="hui-top-menu" data-open="true"><i class="iconfont icon-caidan"></i></button>
        </div>
        <!--管理员开始-->
        <ul class="hui-top-nav-right-usr">
            <li class="dropdown">
                <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#" id="dLabel">
                    <i class="iconfont icon-touxiang"></i> 罗秋梅
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                    <li role="presentation ">
                        <a href="#">
                            <i class="iconfont icon-chakan"></i> 个人信息
                        </a>
                    </li>
                    <li role="presentation ">
                        <a href="../admin/loginOut">
                            <i class="iconfont icon-jinru"></i> 注销
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!--管理员结束-->
    </div>
    <div class="hui-left-slide-container">
        <ul class="hui-slide-menu">
            <li>
                <a href="javascript:;" url="common/index" tab-id="0">
                    <i class="iconfont icon-shouye"></i> 统计台 ${user.name}
                </a>
            </li>

            <li>
                <a href="javascript:;" url="../admin/toList" tab-id="1">
                    <i class="iconfont icon-web-channel"></i> 管理员管理
                    <span class="iconfont icon-iconfontxiangyou"></span>
                </a>
            </li>
            <li>
                <a href="javascript:;" url="../user/toList" tab-id="2">
                    <i class="iconfont icon-web-channel"></i> 用户管理
                    <span class="iconfont icon-iconfontxiangyou"></span>
                </a>
            </li>
            <li>
                <a href="javascript:;" url="../message/toList" tab-id="3">
                    <i class="iconfont icon-web-channel"></i> 消息管理
                    <span class="iconfont icon-iconfontxiangyou"></span>
                </a>
            </li>
            <li>
                <a href="javascript:;" url="../soils/toList" tab-id="4">
                    <i class="iconfont icon-web-channel"></i> 土地信息管理
                    <span class="iconfont icon-iconfontxiangyou"></span>
                </a>
            </li>
            
        </ul>
    </div>
    <div class="hui-right-container">
        <div class="layui-tab  layui-tab-card" style="margin-top: 2px;background: whitesmoke;" lay-filter="tab-filter" lay-allowclose="true">
            <ul class="layui-tab-title" style="background: #FAFAFA;margin: 0px;">
                <li class="layui-this first">主页</li>
            </ul>
            <div class="layui-tab-content" style=" margin-top:5px;padding: 0px;">
                <div class="layui-tab-item layui-show">
                    <iframe src="../web/htmlframe/Admin/echarts.html" src-id="0" style="width: 100%; border: 0px;" tab-index="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="hui-frame-footer">
        Copyright © 2019 Powered by 罗秋梅
    </div>
</body>

</html>