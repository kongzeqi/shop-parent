<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>电脑特卖</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">

        <div class="layui-logo">电脑特卖</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">首页</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户管理</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出登录</a></li>
        </ul>

    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">商品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">上架商品</a></dd>
                        <dd><a href="javascript:;">下架商品</a></dd>
                        <dd><a href="javascript:;">库存管理</a></dd>
                        <dd><a href="">销量统计</a></dd>
                    </dl>
                </li> <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">商品分类</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">增加分类</a></dd>
                        <dd><a href="javascript:;">删除分类</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">编辑用户</a></dd>
                        <dd><a href="javascript:;">会员管理</a></dd>
                     </dl>

                <li class="layui-nav-item"><a href="">订单管理</a></li>
                <li class="layui-nav-item"><a href="">热销品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" >
        <table id="demo" lay-filter="test" align="center"></table>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © qf.com
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/modules/jquery.js"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 315
            ,url: '/manager/showProduct' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'uid', title: 'ID', width:80, sort: true, fixed: 'left'}
                ,{field: 'uname', title: '商品名称', width:80}
                ,{field: 'sex', title: '性别', width:80, sort: true}
                ,{field: 'age', title: '年龄', width:80}
                ,{field: 'tellphone', title: '联系方式', width: 177}
                ,{field: 'address', title: '地址', width: 80, sort: true}
                ,{field: 'birthday', title: '生日', width: 80, sort: true}
                ,{field: 'flag', title: '会员等级', width: 80}
                ,{field: 'money', title: '金额', width: 135, sort: true}
            ]]
        });


    });

    layui.use('ul', function(){
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
        });
    });

</script>
</body>
</html>
XZC