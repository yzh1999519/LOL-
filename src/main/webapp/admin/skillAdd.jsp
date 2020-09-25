<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 22:46
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


    <form class="layui-form" action="/skillInsert" method="post" style="width: 500px;margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">技能编号</label>
            <div class="layui-input-block">
                <input type="text" name="skillid" id="skillid" value="" lay-verify autocomplete="off"
                       placeholder="请输入技能编号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">英雄编号</label>
            <div class="layui-input-block">
                <input type="text" name="heroid" id="heroid" value="" lay-verify autocomplete="off"
                       placeholder="请输入英雄编号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">技能类型</label>
            <div class="layui-input-block">
                <input type="text" name="skilltype" id="skilltype" value="" lay-verify autocomplete="off"
                       placeholder="请输入技能类型"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">技能名</label>
            <div class="layui-input-block">
                <input type="text" name="skillname" id="skillname" value="" lay-verify autocomplete="off"
                       placeholder="请输入技能名"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">技能介绍</label>
            <div class="layui-input-block">
                <input type="text" name="skillcontent" id="skillcontent" value="" lay-verify autocomplete="off"
                       placeholder="请输入技能介绍"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">技能图片</label>
            <div class="layui-input-block">
                <input type="text" name="skillimg" id="skillimg" value="" lay-verify autocomplete="off"
                       placeholder="请输入技能介绍"
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