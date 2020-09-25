<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>英雄信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../static/layui/css/layui.css"/>
    <script type="text/javascript" src="../static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <tbody>
        <tr>
            <td width="200">技能编号</td>
            <td>${one.skillid}</td>
        </tr>
        <tr>
            <td>英雄编号</td>
            <td>${one.heroid}</td>
        </tr>
        <tr>
            <td>技能类型</td>
            <td>${one.skilltype}</td>
        </tr>

        <tr>
            <td>技能名称</td>
            <td>${one.skillname}</td>
        </tr>

        <tr>
            <td>技能介绍</td>
            <td>${one.skillcontent}</td>
        </tr>



        </tbody>
    </table>
</div>


</body>
</html>