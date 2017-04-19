<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
		<style>
			*{
				padding: 0px;
				margin: 0px;
			}
			#box{
				width: 247px;
				height: 300px;
				margin: auto;
				border: 1px solid #CCCCCC;
			}
			#form_top p{
				width: 123px;
				line-height: 30px;
				text-align: center;
				float: left;
				background: #E5E5E5;
				cursor: pointer;
			}
			#form_buttom{
				background: #FFFFFF;
			}
			#form_buttom form{
				width: 247px;
				height: 210px;
				display: none;
				margin-top: 50px;
			}
		
			#form_top .p_show{
				background: #FFFFFF;
			}
			#form_buttom .form_show{
				display: block;
			}
		</style>
		<script>
			window.onload = function(){
				var ps = document.getElementsByTagName("p");
				var forms = document.getElementById("form_buttom").getElementsByTagName("form");
				for(var i = 0;i < ps.length;i++){
					ps[i].index = i;
					ps[i].onclick = function(){
						for(var j = 0;j < ps.length;j++){
							ps[j].className = "";
							forms[j].className = "";
						}
						this.className = "p_show";
						forms[this.index].className = "form_show";
					}
				}
			}
		</script>
	</head>
	<body>
		<div id="box">
			<div id="form_top">
				<p class="p_show">老师注册</p>
				<p>学生注册</p>
			</div>
			<div id="form_buttom">
				<form action="${pageContext.request.contextPath }/user_regist.action" method="post" class="form_show">
					<input name="role" hidden="hidden" value=1 />
					工号：<input name="num" type="number" required/></br></br>
					姓名：<input name="name" type="text" required/></br></br>
					密码：<input name="pwd" type="password" required/></br></br>
					部门：<input name="dept" type="text" required/></br></br>
					<button type="submit" value="注册">注册</button>
				</form>
				<form action="${pageContext.request.contextPath }/user_regist.action" method="post">
				<input name="role" hidden="hidden" value=0 />
					学号：<input name="num" type="number" required></br></br>
					姓名：<input name="name" type="text" required/></br></br>
					密码：<input name="pwd" type="password" required/></br></br>
					专业：<input name="pro" type="text" required/></br></br>
					班级：<input name="cls" type="text" required/></br></br>
					<button type="submit" value="注册" >注册</button>
				</form>
			</div>
		</div>
	</body>
</html>
