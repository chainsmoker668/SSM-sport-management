<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新成绩</title>
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
                    <small>更新成绩</small>
                </h1>
            </div>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/Adm/toScoreByAdm">返回</a><br><br>
    <form action="${pageContext.request.contextPath}/Adm/updateScore" method="post">
        <input type="hidden" name="stuId" value="${scorestu.stuId}"/>
        姓   名：<input type="text" name="stuName" value="${scorestu.stuName}" readonly="readonly"/><br><br><br>
        年   级：<input type="text" name="stuGrade" value="${scorestu.stuGrade}" readonly="readonly"/><br><br><br>
        专业班级：<input type="text" name="stuClass" value="${scorestu.stuClass}" readonly="readonly"/><br><br><br>
        报名比赛：<input type="text" name="stuSport" value="${scorestu.stuSport}" readonly="readonly"/><br><br><br>
        比赛成绩：<input type="text" name="stuScore" value="${scorestu.stuScore}" placeholder="请输入成绩"/><br><br><br>
        <input type="submit" value="提交"/>
    </form>

</div>