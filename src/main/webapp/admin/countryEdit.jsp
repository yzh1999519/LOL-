<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>国家编辑</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../static/layui/css/layui.css"/>
    <script type="text/javascript" src="../static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/countryUpdate" method="post" style="width: 500px;margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">国家编号</label>
            <div class="layui-input-block">
                <input type="text" name="countryid" id="countryid" value="${one.countryid}" lay-verify autocomplete="off"
                       placeholder="请输入订单编号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">国家名</label>
            <div class="layui-input-block">
                <input type="text" name="countryname" id="countryname" value="${one.countryname}" lay-verify autocomplete="off"
                       placeholder="请输入订单名"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">国家环境</label>
            <div class="layui-input-block">
                <input type="text" name="countryenvironment" id="countryenvironment" value="${one.countryenvironment}" lay-verify autocomplete="off"
                       placeholder="请输入订单价格"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">国家介绍</label>
            <div class="layui-input-block">
                <input type="text" name="countryintroduce" id="countryintroduce" value="${one.countryintroduce}" lay-verify autocomplete="off"
                       placeholder="请输入产品编号"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">国家图片</label>
            <div class="layui-input-block">
                <input type="text" name="countryimg" id="countryinimg" value="${one.countryimg}" lay-verify autocomplete="off"
                       placeholder="请输入图片路径"
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