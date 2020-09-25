<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>技能详情</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/index.css">
    <script src="static/layui/layui.js"></script>
</head>
<body>
<!-- nav部分 -->
<jsp:include page="head.jsp"></jsp:include>
<!-- banner部分 -->

<!-- main部分 -->

<div class="main-about">
    <div class="layui-container">

        <div class="layui-row">
            <ul class="aboutab">
                <li class="layui-this" style="color: coral">英雄技能一览</li>
            </ul>
            <c:forEach items="${sdata}" var="v">
                <div class="tabIntro">


                        <div class="layui-inline img"><img src="${v.skillimg}" width="150px" height="150px"></div>
                        <div class=" layui-inline panel">
                            <table class="layui-table " style="background-color: #000000" lay-skin="nob">
                                <colgroup>
                                    <col width="100">
                                    <col width="100">
                                    <col width="800">

                                    <col>
                                </colgroup>
                                <thead>
                                <tr>
                                    <th style="background-color: #000000" ><span style="color: #ffffff">技能按键</span></th>
                                    <th style="background-color: #000000" ><span style="color: #ffffff">技能名</span></th>
                                    <th style="background-color: #000000"><span style="color: #ffffff">技能介绍</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td style="color: #FFFF00">${v.skilltype}</td>
                                    <td style="color: #FFFF00">${v.skillname}</td>
                                    <td style="color: #ffffff">${v.skillcontent}</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>

                </div>
            </c:forEach>
            </ul>
        </div>

    </div>
</div>

<!-- footer部分 -->
<jsp:include page="footer.jsp"></jsp:include>

<script>
    layui.config({
        base: '../res/static/js/'
    }).use('firm');
</script>
</body>
</html>
