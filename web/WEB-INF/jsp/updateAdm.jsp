<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
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
                    <small>修改密码</small>
                </h1>
            </div>
        </div>
    </div>
    <div><a href="${pageContext.request.contextPath}/Adm/toMainAdm">返回</a></div>

    <form action="${pageContext.request.contextPath}/Adm/UpdateAdm" method="post">
        <input type="hidden" name="adminID" value="${adms.adminID}"/>
        <input type="hidden" name="admAccount" value="${adms.admAccount}"/>
        新密码：<input type="text" name="admPwd" value="${adms.admPwd}"/>
        <input type="submit" value="提交"/>
    </form>

</div>


</body>
</html>
