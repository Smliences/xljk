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
		<script type="text/javascript">
			window.onload =function(){
			function change(){
				
				var img1 = document.getElementById("checkImg");
				img1.src="${pageContext.request.contextPath}/checkImg.action"+new Data().getTime();
		
	
			
			
			}
			
			}
			
		</script>
	</head>
	<body>
		<div id="Loginbox">
			<form action="${pageContext.request.contextPath }/user_login.action" >
					用户名：<input name="num" type="number" required placeholder="学号/工号"/></br></br>
					密    码：<input name="pwd" type="password" required/></br></br>
					验证码：<input name="checkcode" type="text" required />
			<img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action"  onclick="change()"  title="点击更换验证码" />
					<button type="submit" value="登录">登录</button>
				</form>
		</div>
	</body>
</html>
