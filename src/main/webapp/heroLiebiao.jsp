<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>LOL-英雄列表</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/index.css">
    <script src="static/layui/layui.js"></script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="banner news">

    <div class="title">
        <p>英雄列表</p>
        <p class="en">All-Hero List</p>
    </div>
</div>

<!-- main -->
<div class="main-news">
    <div class="layui-container">
        <div class="layui-row layui-col-space20">
            <c:forEach items="${hdata}" var="v">
                <div class="layui-col-lg6 content">
                    <div>
                        <div class="news-img"><a href="/heroXiangqing?heroid=${v.heroid}"><img src="${v.heroimg}"></a></div><div class="news-panel">
                        <strong><a href="/heroXiangqing?heroid=${v.heroid}">${v.heroname}</a></strong>
                        <p class="read-push">英雄定位:${v.heroorientation}</p>
                        <p class="detail"><span>所属国家：${v.countryname}</span></p>
                        <mid><p><a href="/heroXiangqing?heroid=${v.heroid}" style="color: #00FFFF">[详细]</a></p></mid>
                    </div>
                    </div>
                </div>

            </c:forEach>

<%--
            <div class="layui-col-lg6 content">
                <div>
                    <div class="news-img"><a href="newsDetail.html"><img src="../res/static/img/news_img1.jpg"></a></div><div class="news-panel">
                    <strong><a href="newsDetail.html">见好友在同一趟高铁 粗心男子“串门”聊天</a></strong>
                    <p class="detail"><span>出门在外若发现好友在同一趟高铁邂逅，你会如何做？近日，一男子上高铁后，打电话给一位久未联系好友，竟然得知出行乘坐同一趟车。于是，该男子兴奋地“串门”。</span><a href="newsDetail.html">[详细]</a></p>
                    <p class="read-push">阅读 <span>4087</span>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：<span>2018-06-20</span></p>
                </div>
                </div>
            </div>--%>
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
