<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息列表页面</title>
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
            <td width="200">国家编号</td>
            <td>${one.countryid}</td>
        </tr>
        <tr>
            <td>国家名</td>
            <td>${one.countryname}</td>
        </tr>
        <tr>
            <td>国家环境</td>
            <td>${one.countryenvironment}</td>
        </tr>

        <tr>
            <td>国家介绍</td>
            <td>${one.countryintroduce}</td>
        </tr>



        </tbody>
    </table>
</div>


</body>
</html>
