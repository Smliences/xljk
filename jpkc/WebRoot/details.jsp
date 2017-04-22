<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="GBK">
		<title>论题详情页面</title>
		<link rel="stylesheet" href="css/details.css" />
	</head>
	<body>
		<div class="details_box">
			<h2 id="title">${title }</h2>
			<div class="details_hr"></div>
			<div class="details_content">${content }<p class="details_content_p"></p></div>
		</div>
		<form action="${pageContext.request.contextPath }/">
		
		<div class="details_buttom">
			<div class="details_buttom_content">
				<textarea cols="132" rows="8"></textarea>
			</div>
			<input class="details_buttom_submit" type="submit"  name="submit" value="发表评论"/>
		</div>
		</form>
	</body>
</html>
