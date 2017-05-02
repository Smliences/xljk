<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
	<style type="text/css">
		
			
	</style>
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
		<div id="comment">评论列表</div>
		<br>
		<c:if test="${replyList!=null}">
			<c:forEach items="${replyList}" var="a" varStatus="number">
				${number.count}L.&nbsp;${a.user.name}&nbsp;
			    <!-- 判断是否是二级评论 -->
			    <c:if test="${a.touser!=null}">
			    <!-- 用户1 回复 用户2 ：内容  -->
			    	<c:forEach items="${touserList}" var="b">
			    		<c:if test="${b.uid==a.touser}">@${b.name}</c:if>
			    	</c:forEach>
			    </c:if>
			    :&nbsp;${a.content }
			    &nbsp;&nbsp;<a href="javascript:void(0)" onclick="replyshow('${number.count}')" >回复</a>
			    <!-- 发表评论的隐藏的输入框 -->
			    <div>
			 		<div id="reply${number.count}" class="reply" style="display: none;">
			 			<form action="${pageContext.request.contextPath }/reply_publish.action" method="post">
						<input hidden="hidden" name="qid" value="${qid }"/>
						<input hidden="hidden" name="touser" value="${a.user.uid}"/>
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
		<c:if test="${replyList==null}">
			暂无用户评论
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
		</div>
		<script type="text/javascript">
			
			function replyshow(id){
				var alldiv = document.getElementsByClassName('reply');
				for(var i=0;i<alldiv.length;i++){
					alldiv[i].style.display="none";
				}
				var div  = document.getElementById("reply"+id);
				div.style.display="block";
			}
		
		</script>
	</body>
</html>
