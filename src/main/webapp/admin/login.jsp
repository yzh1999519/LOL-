<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>登入 - layuiAdmin</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../static/style/admin.css" media="all">
    <link rel="stylesheet" href="../static/style/login.css" media="all">
</head>
<body style="background: url('../static/loginbg.jpg');background-position: center center;background-size: cover;">

<form  action="userloginSubmit">
<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login"
     style="display: none;">

    <div class="layadmin-user-login-main" style="background: rgba(250,250,250,0.45);">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>英雄联盟后台</h2>
            <p>layui 官方出品的单页面后台管理模板系统</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-username"></label>
                <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <input type="password" name="password" id="LAY-user-login-password" lay-verify="required"
                       placeholder="密码" class="layui-input">
            </div>

            <div class="layui-form-item" style="margin-bottom: 20px;">
                <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
                <a href="forget.html" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码？</a>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" id="loginBtn">登
                    入
                </button>
            </div>
            <div class="layui-trans layui-form-item layadmin-user-login-other">
                <label>社交账号登入</label>
                <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
                <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
                <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>

                <a href="" class="layadmin-user-jump-change layadmin-link">注册帐号</a>
            </div>
        </div>
    </div>

</div>
<script src="../static/layui/layui.js"></script>
<script src="../static/js/jquery-1.9.1.min.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['element', 'form', 'layer'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var form = layui.form;
        var layer = layui.layer;


    });
</script>
</form>
</body>
</html>