<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <a href="${pageContext.request.contextPath}/download.action?filename=测试.txt&fileFlag=ECA4BC3F75EA417685415A3D527ACBBC">点击下载</a>
  
  	<form action="${pageContext.request.contextPath}/upload.action" method="post" enctype="multipart/form-data">
  		<input type="text" name="username" >
  		<input type="file" name="upload">
  		<input type="submit" value="上传">
  	</form>
  	
  	
  
  
  </body>
</html>
