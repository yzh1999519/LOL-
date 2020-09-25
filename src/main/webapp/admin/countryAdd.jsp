<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息添加页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../static/layui/css/layui.css"/>
    <script type="text/javascript" src="../static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/countryInsert" method="post" style="width: 500px;margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">国家编号</label>
            <div class="layui-input-block">
                <input type="text" name="countryid" id="countryid" value="" lay-verify autocomplete="off"
                       placeholder="请输入国家编号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">国家名</label>
            <div class="layui-input-block">
                <input type="text" name="countryname" id="countryname" value="" lay-verify autocomplete="off"
                       placeholder="请输入国家名"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">国家环境</label>
            <div class="layui-input-block">
                <input type="text" name="countryenvironment" id="countryenvironment" value="" lay-verify autocomplete="off"
                       placeholder="请输入国家环境"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">国家介绍</label>
            <div class="layui-input-block">
                <input type="text" name="countrycontent" id="countrycontent" value="" lay-verify autocomplete="off"
                       placeholder="请输入国家介绍"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">国家图片</label>
            <div class="layui-input-block">
                <input type="text" name="countryimg" id="countryimg" value="" lay-verify autocomplete="off"
                       placeholder="请输入国家图片路径"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;

    });
</script>

</body>
</html>