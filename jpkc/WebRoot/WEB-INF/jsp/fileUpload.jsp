<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
		<meta charset="UTF-8">
		<title>上传作业</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<style>
			* {
				margin: 0px;
				padding: 0px;
				background: #EDF7FD;
			}
			
			.box {
				width: 70%;
				margin: auto;
				height: 550px;
				
			}
			
			.ZYSC_button {
				width: 120px;
				height: 35px;
				float: left;
				margin: 50px;
				font-size: 18px;
			}
			
			#upload{
				position:absolute; 
				filter:alpha(opacity=0); 
				opacity:0; 
				width:30px; 
			}
			
		</style>
	</head>

	<body>
	<!-- 选择文件自动提交 -->
		<form action="${pageContext.request.contextPath}/upload.action" method="post" enctype="multipart/form-data">
	  		<!-- 防止表单重复提交 -->
	  		<s:token></s:token>
	  		<s:hidden name="userid" value="%{userid}"></s:hidden>
	  		<input type="file" id="upload" onchange="this.form.submit()" name="upload" size="1">
	  		<button type="submit" class="ZYSC_button" onmousemove="move(event)" value="请选择文件">作业上传</button>
  		</form>
			<script type="text/javascript">
				function move(event){
				var event=event||window.event;
				var a=document.getElementById('upload');
				    a.style.left=event.clientX-50+'px';
				    a.style.top=event.clientY-10+'px';
				}
		</script>
		<!-- 传统表单提交 -->
		<%-- <form id="form" action="${pageContext.request.contextPath}/upload.action" method="post" enctype="multipart/form-data">
	  		<input type="hidden" name="username">
	  		<input  id="uplaod" type="file" name="upload">
	  		<button class="ZYSC_button" onclick="click()">作业上传</button>
  		</form>
			<script type="text/javascript">
				function click(){
				var form=document.getElementById('form');
				    form.submit();
				}
			</script> --%>
		
	</body>

</html>
