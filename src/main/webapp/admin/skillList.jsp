<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/8/29
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>国家列表</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../static/layui/css/layui.css"/>
    <script type="text/javascript" src="../static/layui/layui.js"></script>
    <script type="text/javascript" src="../static/js/jquery-1.9.1.min.js"></script>
</head>
<body>
<div class="layui-fluid">


    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>技能编号</th>
            <th>英雄编号</th>
            <th>技能类型</th>
            <th>技能名称</th>
<%--            <th>技能图片</th>--%>
            <th>操作</th>
        </tr>

        <c:forEach items="${data}" var="v">
            <tr>
                <td>${v.skillid}</td>
                <td>${v.heroid}</td>
                <td>${v.skilltype}</td>
                <td>${v.skillname}</td>
<%--                <td>${v.s}</td>--%>
                <td style="width: 180px;">
                    <a href="skillEdit?skillid=${v.skillid}"
                       class="layui-btn layui-btn layui-btn-sm">修改</a>

                    <a href="skillDelete?skillid=${v.skillid}"
                       class="layui-btn layui-btn-danger layui-btn-sm">删除</a>

                    <btn path="skillDetail?skillid=${v.skillid}"
                         class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                    </btn>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <!--分页按钮显示区域-->
    <div style="text-align: center;margin: 20px auto;">
        <div class="layui-btn-group">
            <button type="button" class="layui-btn  layui-btn-primary">首页</button>
            <button type="button" class="layui-btn  layui-btn-primary">1</button>
            <button type="button" class="layui-btn  layui-btn-primary">2</button>
            <button type="button" class="layui-btn  layui-btn-danger">3</button>
            <button type="button" class="layui-btn  layui-btn-primary">4</button>
            <button type="button" class="layui-btn  layui-btn-primary">5</button>
            <button type="button" class="layui-btn  layui-btn-primary">尾页</button>
        </div>
    </div>
</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        //绑定详情点击事件
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-demo', //样式类名
                title: '用户信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['700px', '500px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>

</body>
</html>