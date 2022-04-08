<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--信息更正--%>
<html>
<head>
    <title>学生列表</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/css">
        table {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }

        table td, table th {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }

        table thead th {
            background-color: #CCE8EB;
            width: 100px;
        }

        table tr:nth-child(odd) {
            background: #fff;
        }

        table tr:nth-child(even) {
            background: #F5FAFA;
        }
    </script>

</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>信息更正 —— 显示所有学生</small>
                </h1>
            </div>
        </div>
    </div>

    <div><a href="${pageContext.request.contextPath}/Adm/toMainAdm">返回</a></div>

    <div>
        <form action="${pageContext.request.contextPath}/Stu/queryStuByName?stuName=${stuName}" method="get">
            姓名：<input type="text" name="stuName" placeholder="请输入姓名" value="${stuName}" >
            <input type="submit" value="提交"/>
        </form>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table">
                <thead>
                <tr>
                    <th>姓 名</th>
                    <th>年 级</th>
                    <th>专业班级</th>
                    <th>报名比赛</th>
                    <th>比赛成绩</th>
                    <th>当前状态</th>
                    <th>审核人</th>
                    <th>相关原因</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="stu" items="${list}">
                    <tr>
                        <td>${stu.stuName}</td>
                        <td>${stu.stuGrade}</td>
                        <td>${stu.stuClass}</td>
                        <td>${stu.stuSport}</td>
                        <td>${stu.stuScore}</td>
                        <td>${stu.stuState}"</td>
                        <td>${stu.stuBy}"</td>
                        <td>${stu.stuReason}"</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/Stu/toCorrect?id=${stu.stuId}">更正</a>
                            <a href="${pageContext.request.contextPath}/Stu/del/${stu.stuId}">删除学生</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!--显示分页信息-->
    <div class="row">
        <!--文字信息-->
        <div class="col-md-6">
            当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录
        </div>

        <!--点击分页-->
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">

                    <li><a href="${pageContext.request.contextPath}/Stu/queryStuByName?stuName=${stuName}&pn=1">首页</a></li>

                    <!--上一页-->
                    <li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/Stu/queryStuByName?stuName=${stuName}&pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </c:if>
                    </li>

                    <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num == pageInfo.pageNum}">
                            <li class="active"><a href="#">${page_num}</a></li>
                        </c:if>
                        <c:if test="${page_num != pageInfo.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/Stu/queryStuByName?stuName=${stuName}&pn=${page_num}">${page_num}</a></li>
                        </c:if>
                    </c:forEach>

                    <!--下一页-->
                    <li>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/Stu/queryStuByName?stuName=${stuName}&pn=${pageInfo.pageNum+1}"
                               aria-label="Next">
                                <span aria-hidden="true">»</span>
                            </a>
                        </c:if>
                    </li>

                    <li><a href="${pageContext.request.contextPath}/Stu/queryStuByName?stuName=${stuName}&pn=${pageInfo.pages}">尾页</a></li>
                </ul>
            </nav>
        </div>
    </div>


</div>