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
            <td width="200">英雄编号</td>
            <td>${one.heroid}</td>
        </tr>
        <tr>
            <td>英雄名</td>
            <td>${one.heroname}</td>
        </tr>
        <tr>
            <td>英雄定位</td>
            <td>${one.heroorientation}</td>
        </tr>

        <tr>
            <td>所属国家</td>
            <td>${one.countryname}</td>
        </tr>

        <tr>
            <td>英雄介绍</td>
            <td>${one.herocontent}</td>
        </tr>



        </tbody>
    </table>
</div>


</body>
</html>