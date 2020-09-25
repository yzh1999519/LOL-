<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>LOL-英雄详情</title>
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
                <li class="layui-this">英雄资料</li>
            </ul>

            <div class="tabIntro">
                <div class="content">
                    <div class="layui-inline img"><img src="${obj.heroimg}"></div><div class=" layui-inline panel">
                    <p style="color: #FFFF00"><strong>${obj.heroname}</strong></p>
                    <p style="color: #ffffff">英雄定位：${obj.heroorientation}</p>
                    <p style="color: #ffffff">${obj.herocontent}</p>
                    <mid><p><a href="/skillXiangqing?heroid=${obj.heroid}" style="color: #00FFFF">技能介绍</a></p></mid>
                </div>
                </div>
            </div>

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