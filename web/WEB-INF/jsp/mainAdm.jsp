<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--管理员页面   --%>
<html>
<head>
    <title>选项列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>选项列表</small>
                </h1>
            </div>
        </div>
    </div>
<div><a href="${pageContext.request.contextPath}/Adm/logoutAdm">退出登录</a></div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>修改密码</th>
                    <th>报名审核</th>
                    <th>成绩发布</th>
                    <th>信息更正</th>
                    <th>报名情况查看</th>
                </tr>
                </thead>

                <tbody>
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/Adm/toUpdateAdm?account=${sessionScope.adms.admAccount}">修改密码</a></td>
                        <td><a href="${pageContext.request.contextPath}/Stu/allStu">报名审核</a></td>
                        <td><a href="${pageContext.request.contextPath}/Adm/toScoreByAdm">成绩发布</a></td>
                        <td><a href="${pageContext.request.contextPath}/Stu/toCorrectStu">信息更正</a></td>
                        <td><a href="${pageContext.request.contextPath}/Stu/topie">报名情况查看</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>