<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>LOL-国家英雄列表</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/index.css">
    <script src="static/layui/layui.js"></script>
</head>
<body>
<div class="banner news">
    <jsp:include page="head.jsp"></jsp:include>
    <div class="title">
        <p>${one.countryname}英雄列表</p>
        <p class="en">${one.countryname}-Hero List</p>
    </div>
</div>
<!-- main -->
<div class="main-news">
    <div class="layui-container">
        <div class="layui-row layui-col-space20">
            <c:forEach items="${hdata}" var="v">
                <div class="layui-col-lg6 content">
                    <div>
                        <div class="news-img"><a href="heroXiangqing?heroid=${v.heroid}"><img src="${v.heroimg}"></a></div><div class="news-panel">
                        <strong><a href="heroXiangqing?heroid=${v.heroid}">${v.heroname}</a></strong>
                        <p class="detail"><span>所属国家：${v.countryname}</span><a href="heroXiangqing?heroid=${v.heroid}" style="color: #00FFFF">[详细]</a></p>

                    </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div id="newsPage"></div>
    </div>
</div>


<script src="static/layui/layui.js"></script>

<script>
    layui.config({
        base: '../res/static/js/'
    }).use('firm');
</script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
