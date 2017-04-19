<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			#Loginbox{
				width: 250px;
				height: 200px;
				margin: auto;
				border: 1px solid #ccc;
			}
		</style>
	</head>
	<body>
		<div id="Loginbox">
			<form action="${pageContext.request.contextPath }/user_login.action" >
					用户名：<input name="num" type="number" required placeholder="学号/工号"/></br></br>
					密    码：<input name="pwd" type="password" required/></br></br>
					<button type="submit" value="登录">登录</button>
				</form>
		</div>
	</body>
</html>
