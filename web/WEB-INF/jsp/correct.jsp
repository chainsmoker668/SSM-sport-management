<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审核信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#select1').bind('change', function () {
                value = $(this).val();
            })
        })
        $(document).ready(function () {
            $('#select2').bind('change', function () {
                value = $(this).val();
            })
        })
    </script>

</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>学生信息</small>
                </h1>
            </div>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/Stu/toCorrectStu">返回</a><br>
    <form action="${pageContext.request.contextPath}/Stu/correct" method="post">
        <input type="hidden" name="stuId" value="${stus.stuId}"/>
        姓 名：<input type="text" name="stuName" value="${stus.stuName}"/><br><br>
        年 级：<input type="text" name="stuGrade" value="${stus.stuGrade}"/><br><br>
        专业班级：<input type="text" name="stuClass" value="${stus.stuClass}"/><br><br>
        报名比赛：<input type="text" name="stuSport" value="${stus.stuSport}"/><br><br>
        比赛成绩：<input type="text" name="stuScore" value="${stus.stuScore}"/><br><br>
        审核状态:
        <select id="select1" name="stuState">
            <option value="${stus.stuState="未审核"}">未审核</option>
            <option value="${stus.stuState="通过"}">通过</option>
            <option value="${stus.stuState="不通过"}">不通过</option>
        </select><br><br>
<%--        <input type="radio" name="stuState" value="${stus.stuState="通过"}">通过--%>
<%--        <input type="radio" name="stuState" value="${stus.stuState="不通过"}">不通过--%>
        审核人：  <select id="select2" name="stuBy">
        <option value="${stus.stuBy=""}">无</option>
        <option value="${stus.stuBy="管理员"}">管理员</option>
        <option value="${stus.stuBy="专业辅导员"}">专业辅导员</option>
        <option value="${stus.stuBy="学院书记"}">学院书记</option>
                </select><br><br>
        相关原因：<textarea name="stuReason" id="stuReason" cols="25" rows="8">${stus.stuReason}</textarea><br><br>
        <input type="submit" value="提交"/>
    </form>

</div>