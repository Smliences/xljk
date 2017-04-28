<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="${pageContext.request.contextPath }/css/login.css"  type="text/css" rel="stylesheet">
</head>
<body>
<div class="header">
    <img src="${pageContext.request.contextPath }/img/logo1.png" class="logo">
    <img src="${pageContext.request.contextPath }/img/logo2.png" class="logo2">
</div>
<div class="bg">
        <div class="login">
             <form name="form" action="${pageContext.request.contextPath }/user_login.action" method="post">
                 <p class="login_p">登录</p>
                <div class="inputs">
                	<font color="green" font-size:"25px" text-align:center>${registsuccess}</font><br/>
                    <div class="username">用户名<input name="num" type="number" autofocus required placeholder="学号/工号"/></div>
                    <div class="password">密码<input name="pwd" type="password" required/></div>
                    <div class="code">验证码<input name="checkcode" type="text" required /><img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action"  onclick="change()"  title="点击更换验证码" /></div>
                </div>
                <div class="actions">
                    <input type="submit" class="submit" value="登 录">
                    <input type="reset" class="reset" value="重 置">
                </div>
                <div class="button">
                	<p class="registered"><a href="${pageContext.request.contextPath}/regist.jsp">免费注册</a></p>
                </div>
            </form>
        </div>
</div>
<div class="footer">
    <div class="footer-1">
    安阳工学院
    </div>
</div>
<script type="text/javascript">
		function change(){
		var img1 = document.getElementById("checkImg");
		img1.src="${pageContext.request.contextPath}/checkImg.action?time="+new Date().getTime();
		}	
		</script>
</body>
</html>


