<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/30
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav index">


    <div class="layui-container">

        <!-- 公司logo -->
        <div class="nav-logo">
            <a href="index">
                <img src="img/logo-public.png" alt="LOL">
            </a>
        </div>
        <div class="nav-list">
            <button>
                <span></span><span></span><span></span>
            </button>
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item"><a href="countryLiebiao">国家</a></li>
                <li class="layui-nav-item"><a href="heroLiebiao">英雄</a></li>
                <li class="layui-nav-item"><a href="/adminlogin">登录</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="layui-carousel" id="test1">
    <div carousel-item>
        <div><img src="img/Banner1.jpg"></div>
        <div><img src="img/Banner2.png"></div>
    </div>
</div>

<script src="static/layui/layui.js"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,height:"960px"
            ,arrow:'always' //始终显示箭头
            ,width:"1920px"

            //,anim: 'updown' //切换动画方式
        });
    });
</script>

<style>
    body {
        background-color: #000000;
    }

</style>