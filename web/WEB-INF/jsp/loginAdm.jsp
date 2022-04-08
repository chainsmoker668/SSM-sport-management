<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <title></title>

</head>

<body>
<div id="login">
    <div id="top">
        <img src="${pageContext.request.contextPath}/image/logo.jpg" width="100px" height="100px"/><span>LOGIN</span>
    </div>
    <div id="bottom">
        <form  action="${pageContext.request.contextPath}/Adm/loginAdm" method="post">
            <table border="0px" id="table">
                <tr>
                    <td class="td1">用户名：</td>
                    <td><input type="text" value="" placeholder="Username" class="td2" name="admAccount"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><span id="nameerr"></span></td>
                </tr>
                <tr>
                    <td class="td1">密码：</td>
                    <td><input type="password"  value="" placeholder="Password" class="td2" name="admPwd"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><span id="pwderr"></span></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="登录" class="td3">
                        <%--            <a href="${pageContext.request.contextPath}/admin/regist.jsp"><input type="button" value="注册" class="td3	"></a>--%>
                    </td>
                </tr>
            </table>
        </form>
        ${errmsg}
    </div>

</div>
</body>

</html>