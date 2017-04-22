<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>发表论点</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/review.css"/>
	</head>
	<body>
	<div class="box">
	<form action="${pageContext.request.contextPath }/question_publish.action" method ="post">
		
			<div class="title">
				主题<input type="text" name="title">
			</div>
			<div class="box_hr"></div>
			<div class="content">
				<p class="content_p">正文</p>
				<textarea cols="100" rows="30" name="content"></textarea>
			</div>
			<input class="submit" type="submit" name="submit" value="发布"/>
		
	</form>
	</div>
	</body>
</html>

