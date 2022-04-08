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


    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><a href="${pageContext.request.contextPath}/Stu/toAddStu">报名比赛</a></td>
                    <td><a href="${pageContext.request.contextPath}/Stu/toScoreByStu">成绩查看</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>