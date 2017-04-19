<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

    <html>
<head>
	<meta charset="utf-8"> 
	<title>精品课程网站注册</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#老师注册" data-toggle="tab">
			老师注册
		</a>
	</li>
	<li><a href="#学生注册" data-toggle="tab">学生注册</a></li>
	
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="老师注册">
		<form action="${pageContext.request.contextPath }/user_regist.action">
	<!-- 状态 -->
	<input name="status" type="hidden" value="1"/></br>
	<!-- 角色 -->
	<input name="role" type="hidden" value="1"/></br></br>
	工号：<input name="num" type="number"/></br></br>
	姓名：<input name="name" type="text"/></br></br>
	密码：<input name="pwd" type="password"/></br></br>
	部门：<input name="dept" type="text"/></br></br>

	<input type="submit" value="注册"/>


		</form>
	</div>
	<div class="tab-pane fade" id="学生注册">
		<!-- 状态 -->
	<input name="status" type="hidden" value="0"/></br>
	<!-- 角色 -->
	<input name="role" type="hidden" value="2"/></br>

	学号：<input name="num" type="number"/></br></br>
	姓名：<input name="name" type="text"/></br></br>
	密码：<input name="pwd" type="password"/></br></br>
	专业：<input name="pro" type="text"/></br></br>
	班级：<input name="cls" type="text"/></br></br>
	<input type="submit" value="注册"/>
	</div>
</div>

</body>
</html>
