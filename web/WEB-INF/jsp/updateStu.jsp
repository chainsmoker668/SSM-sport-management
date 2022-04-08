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
        $(function () {
            $(":radio").click(function () {
                value = $(this).val();
                // alert("审核" + value);
            });
        });
        $(document).ready(function () {
            $('#select').bind('change', function () {
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
                    <small>报名审核 -- 学生信息</small>
                </h1>
            </div>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/Stu/allStu">返回</a><br><br>
    <form action="${pageContext.request.contextPath}/Stu/updateStu" method="post">
        <input type="hidden" name="stuId" value="${stus.stuId}"/>
        姓 名：<input type="text" name="stuName" value="${stus.stuName}" readonly="readonly"/><br><br>
        年 级：<input type="text" name="stuGrade" value="${stus.stuGrade}" readonly="readonly"/><br><br>
        专业班级：<input type="text" name="stuClass" value="${stus.stuClass}" readonly="readonly"/><br><br>
        <%--        报名比赛：<input type="text" name="stuSport" value="${stus.stuSport}"/>  <c:set var="${stus.stuSport}" value="${stus.stuSport}"/> value="${stus.stuSport}"--%>
        报名比赛：<input type="text" name="stuSport" value="${stus.stuSport}" readonly="readonly"/><br><br>
        <input type="hidden" name="stuScore" value="${stus.stuScore}" readonly="readonly"/>
        <%--        审核状态:<input type="text" name="stuState" value="${stus.stuState}"/>--%>
        审核状态: <input type="radio" name="stuState" value="${stus.stuState="通过"}">通过 &nbsp&nbsp&nbsp
        <input type="radio" name="stuState" value="${stus.stuState="不通过"}">不通过<br><br>
        审核人：  <select id="select" name="stuBy">
                <option value="${stus.stuBy="管理员"}">管理员</option>
                <option value="${stus.stuBy="专业辅导员"}">专业辅导员</option>
                <option value="${stus.stuBy="学院书记"}">学院书记</option>
                </select><br><br>
<%--        <input type="checkbox" name="stuBy" value="${stus.stuBy}">管理员--%>
<%--        <input type="checkbox" name="stuBy" value="${stus.stuBy}">专业辅导员--%>
<%--        <input type="checkbox" name="stuBy" value="${stus.stuBy}">学院书记--%>
        相关原因：<textarea name="stuReason" id="stuReason" cols="30" rows="10">${stus.stuReason}</textarea><br><br>
        <input type="submit" value="提交"/>
    </form>

</div>