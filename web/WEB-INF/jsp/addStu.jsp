<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--报名比赛--%>
<html>
<head>
    <title>报名比赛</title>
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
                    <small>报名信息填写</small>
                </h1>
            </div>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/Stu/toMainStu">取消</a>
    <form action="${pageContext.request.contextPath}/Stu/addStu" method="post">
        姓   名：<input type="text" name="stuName"><br><br><br>
        年   级：<input type="text" name="stuGrade"><br><br><br>
        专业班级：<input type="text" name="stuClass"><br><br><br>
        报名比赛：<input type="text" name="stuSport"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>