<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--数据统计--%>
<html>
<head>
    <title>数据统计</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script>

    </script>


</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>数据统计 —— 报名情况</small>
                </h1>
            </div>
        </div>
    </div>

    <div><a href="${pageContext.request.contextPath}/Adm/toMainAdm">返回</a></div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>比赛名称</th>
                    <th>报名人数</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="stu" items="${list}">
                    <tr>
                        <td>${stu.stuSport}</td>
                        <td>${stu.num}"</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>