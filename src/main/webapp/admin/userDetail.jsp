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
            <td width="200">管理员编号</td>
            <td>${one.userid}</td>
        </tr>
        <tr>
            <td>管理员名</td>
            <td>${one.username}</td>
        </tr>
        <tr>
            <td>管理员密码</td>
            <td>${one.userpassword}</td>
        </tr>

        <tr>
            <td>管理员介绍</td>
            <td>${one.usercontent}</td>
        </tr>




        </tbody>
    </table>
</div>


</body>
</html>