<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="${loginuser == null}">
    <scipt>
        alert("管理员没有登录，登录以后才可以进入")
        location.href = "/adminlogin"
    </scipt>
</c:if>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>LOL后台布局</title>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/layui/layui.js"></script>
    <script src="../static/js/jquery-1.9.1.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin" style="color: #0C0C0C">
    <div class="layui-header" style="color: #000000">
        <div class="layui-logo">LOL后台数据管理</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left" style="color: #000000">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="/index">返回前端页面</a></li>

        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="img/5e.png" class="layui-nav-img">
                    ${loginuser.username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="adminloginout">退出登录</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black" >
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">国家英雄信息</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/countryAdd" target="tqmcontent">国家添加</a></dd>
                        <dd><a href="/countryList" target="tqmcontent">国家列表</a></dd>
                        <dd><a href="/heroAdd" target="tqmcontent">英雄添加</a></dd>
                        <dd><a href="/heroList" target="tqmcontent">英雄列表</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">平衡调度</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/skillAdd" target="tqmcontent">技能添加</a></dd>
                        <dd><a href="/skillList" target="tqmcontent">技能列表</a></dd><%--加斜杠就从localhost：8086/userinfoList--%>
                        <dd><a href="/userAdd" target="tqmcontent">管理员添加</a></dd><%--加斜杠就从localhost：8086/userinfoList--%>
                        <dd><a href="/userList" target="tqmcontent">管理员列表</a></dd><%--加斜杠就从localhost：8086/userinfoList--%>
                    </dl>
                </li>

        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <!-- 内容主体区域 -->
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="img/Banner3.png" name="tqmcontent"
                    style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>

<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>