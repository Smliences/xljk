<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="GBK">
		<title>师生交流论坛</title>
		<link rel="stylesheet" type="text/css" href="css/review.css"/>
	</head>
	<body>
	
	<form action="${pageContext.request.contextPath }/question_toPublishPage.action" method="post">
	<input type="submit" value="发表问题"/>
	</form>
		<div class="box">
			<div class="box_top">师生交流论坛</div>
			<div class="box_buttom">
			${links}
			<c:forEach items="${results}" var="l">
				<div class="box_content">
					<a href="${pageContext.request.contextPath }/question_detail.action?qid=${l.qid }">${l.title }</a>
				</div>
			</c:forEach>
				
			</div>
		</div>
		<script type="text/javascript">
		function formSubmit (url,sTarget){
		    document.forms[1].target = sTarget;
		    document.forms[1].action = url;
		    document.forms[1].submit();
		    return true;
		}
		
		</script>
	</body>
</html>




	

