<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>LOL-国家列表</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/index.css">
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<!-- banner部分 -->
<div class="banner product">
    <div class="title">
        <p>国家列表</p>
        <p class="en">CountryList Display</p>
    </div>
</div>
<!-- main部分 -->
<div class="main product">
    <div class="layui-container">
        <c:forEach items="${cdata}" var="v">
        <div class="content layui-row">
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="${v.countryimg}"></div>
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
                <p class="label">${v.countryname}</p>
                <p class="detail">环境：${v.countryenvironment}</p>
                <p class="detail">${v.countryintroduce}</p>
                <div><a href="herocountryLiebiao?countryid=${v.countryid}">英雄代表></a></div>
            </div>
        </div>
        </c:forEach>
       <%-- <div class="content layui-row">
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../res/static/img/Product_img2.jpg"></div>
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
                <p class="label">CSS处理</p>
                <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
                <div><a href="javascript:;">查看产品 ></a></div>
            </div>
        </div>
        <div class="content layui-row">
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../res/static/img/Product_img3.jpg"></div>
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
                <p class="label">兼容性</p>
                <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
                <div><a href="javascript:;">查看产品 ></a></div>
            </div>
        </div>
        <div class="content layui-row">
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../res/static/img/Product_img4.jpg"></div>
            <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
                <p class="label">响应式</p>
                <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
                <div><a href="javascript:;">查看产品 ></a></div>
            </div>
        </div>--%>
    </div>
</div>
<!-- footer部分 -->
<jsp:include page="footer.jsp"></jsp:include>
<script src="../res/layui/layui.js"></script>
<!--[if lt IE 9]>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
    layui.config({
        base: '../res/static/js/'
    }).use('firm');
</script>

</body>
</html>