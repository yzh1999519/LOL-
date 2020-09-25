<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>英雄编辑</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../static/layui/css/layui.css"/>
    <script type="text/javascript" src="../static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/heroUpdate" method="post" style="width: 500px;margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">英雄编号</label>
            <div class="layui-input-block">
                <input type="text" name="heroid" id="heroid" value="${one.heroid}" lay-verify autocomplete="off"
                       placeholder="请输入英雄编号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">英雄名</label>
            <div class="layui-input-block">
                <input type="text" name="heroname" id="heroname" value="${one.heroname}" lay-verify autocomplete="off"
                       placeholder="请输入英雄名"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">英雄定位</label>
            <div class="layui-input-block">
                <input type="text" name="heroorientation" id="heroorientation" value="${one.heroorientation}" lay-verify autocomplete="off"
                       placeholder="请输入订单价格"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">所属国家</label>
            <div class="layui-input-block">
                <input type="text" name="countryname" id="countryname" value="${one.countryname}" lay-verify autocomplete="off"
                       placeholder="请输入产品编号"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">英雄介绍</label>
            <div class="layui-input-block">
                <input type="text" name="herocontent" id="herocontent" value="${one.herocontent}" lay-verify autocomplete="off"
                       placeholder="请输入产品编号"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">英雄图片</label>
            <div class="layui-input-block">
                <input type="text" name="heroimg" id="heroimg" value="${one.heroimg}" lay-verify autocomplete="off"
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