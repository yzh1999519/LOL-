<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>LOL-首页</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/index.css">
    <script src="static/layui/layui.js"></script>
</head>
<body>

<!-- nav部分 -->
<jsp:include page="head.jsp"></jsp:include>
<!-- banner部分 -->

<!-- 条目中可以是任意内容，如：<img src=""> -->
<!-- main部分 -->
<div class="main-product">
    <div class="layui-container">
        <p class="title"><span>国家浏览</span></p>
        <div class="layui-row layui-col-space25">
            <c:forEach items="${data}" var="v">
            <div class="layui-col-sm6 layui-col-md3">
                <div class="content">
                    <div><img src="${v.countryimg}" width="200px" height="250px"></div>
                    <div>
                        <p class="label">${v.countryname}</p>
                        <p>环境状况：${v.countryenvironment}</p>
                    </div>
                    <a href="countryLiebiao">查看产品 ></a>
                </div>
            </div>
            </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="main-service" style="background: #000000">
    <div class="layui-container"style="background: #000000">
        <p class="title"style="background: #000000"><span>热门英雄</span></p>
        <div class="layui-row layui-col-space25 layui-col-space80" style="background-color: #000000">
            <div class="layui-col-sm6" style="background-color: #000000">
                <div class="content" style="background-color: #000000">
                    <div class="content-left"><img src="/img/2shu.png" height="400"></div>
                    <div class="content-right"  style="background-color: #000000">
                        <p class="label" style="color: greenyellow">德玛西亚皇子</p>
                        <span></span>
                        <p style="color:#ffffff">脸滚键盘 不解释连招————芜湖大司马</p>
                    </div>
                </div>
            </div>
            <div class="layui-col-sm6" style="background-color: #0C0C0C">
                <div class="content">
                    <div class="content-left"><img src="/img/8shu.png" height="400" ></div>
                    <div class="content-right"  style="background-color: #000000">
                        <p class="label" style="color: greenyellow">寒冰射手</p>
                        <span></span>
                        <p style="color:#ffffff">”嘟嘟嘟“ ”大鸿鹄你怎么看“</p>
                    </div>
                </div>
            </div>
            <div class="layui-col-sm6"  style="background-color: #000000">
                <div class="content">
                    <div class="content-left"><img src="/img/4shu.png" height="400"></div>
                    <div class="content-right"  style="background-color: #000000">
                        <p class="label" style="color: greenyellow">刀锋之影</p>
                        <span></span>
                        <p style="color:#ffffff">”三级不单杀请举报“—————约德尔·勋</p>
                    </div>
                </div>
            </div>
            <div class="layui-col-sm6"  style="background-color: #0C0C0C">
                <div class="content">
                    <div class="content-left"><img src="/img/6shu.png" height="400"></div>
                    <div class="content-right"  style="background-color: #000000">
                        <p class="label" style="color: greenyellow">暗黑元首</p>
                        <span></span>
                        <p style="color:#ffffff">你可以永远相信宋义进</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="service-more"><a href="heroLiebiao">查看更多</a></div>
    </div>
</div>
<!-- footer部分 -->
<jsp:include page="footer.jsp"></jsp:include>
<!--[if lt IE 9]>
<![endif]-->
<script>
    layui.config({
        base: '/static/js/'
    }).use('firm');
</script>
</body>
</html>