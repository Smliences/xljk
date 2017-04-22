<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>精品课程</title>
</head>
<body>
欢迎       ${existUser.name}
<form action="${pageContext.request.contextPath }/question_publish.action"
method = "post">

标题:<input type="text" name="title" /><br/>
内容:<input type="text" name="content"/><br/>


<input type="submit" value="提交"/>
</form>
	
	
</body>
</html>