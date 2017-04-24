<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>论题详情页面</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/details.css" />
	</head>
	<body>
		<div class="details_box">
			<h2 id="title">${title }</h2>
			<div class="details_hr"></div>
			<div class="details_content">${content }<p class="details_content_p"></p></div>
		</div>
		评论列表
		<c:if test="${replyList.size()>0}">
		<c:forEach items="${replyList}" var="a" varStatus="number">
		    <div>
		 		${number.count}:${a.content }<a href="#" onclick="replyshow()" >回复</a>
		 		<div id="reply" style="display: none;">
		 			<form action="${pageContext.request.contextPath }/reply_publish.action" method="post">
					<input hidden="hidden" name="qid" value="${qid }"/>
					<input hidden="hidden" name="touser" value="${user.uid}"/>
					<div>
						<div>
							<textarea cols="20" rows="1" name="content"></textarea>
						</div>
						<input type="submit"  name="submit" value="发表评论"/>
					</div>
					</form>
		 		</div>
		    </div>
		</c:forEach>
		</c:if>
		<c:if test="${replyList.size()<=0}">
		</c:if>
		<div>
		<form action="${pageContext.request.contextPath }/reply_publish.action" method="post">
		<input hidden="hidden" name="qid" value="${qid }"/>
		<div class="details_buttom">
			<div class="details_buttom_content">
				<textarea cols="100" rows="8" name="content"></textarea>
			</div>
			<input class="details_buttom_submit" type="submit"  name="submit" value="发表评论"/>
		</div>
		</form>
		<script type="text/javascript">
			
			function replyshow(){
				var div  = document.getElementById("reply");
				div.style.display="block";
			}
		
		</script>
	</body>
</html>
