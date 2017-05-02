<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
		<script src="../js/click.js"></script>
		<script src="../js/close.js"></script>
	</head>
	<body>
		<div class="header"></div>
		<div class="nav">
			<!--	<div class="nav-left"></div>-->
			<ul class="nav-ul">
				<li class="nav-li"><a href="../index.html">首页</a></li>
				<li class="nav-li"><a href="KCJS.html">课程介绍</a></li>
				<li class="nav-li"><a href="JXDW.html">教学队伍</a></li>
				<li class="nav-li"><a href="JXTJ.html">教学条件</a></li>
				<li class="nav-li"><a href="JXNR.html">教学内容</a></li>
				<li class="nav-li"><a href="JXXG.html">教学效果</a></li>
				<li class="nav-li"><a href="WLKT.html">网络课堂</a></li>
				<li class="nav-li"><a href="XXZY.html">学习资源</a></li>
				<li class="nav-li"><a href="#">作业提交</a></li>
				<li class="nav-li"><a href="question_toLT.action">师生论坛</a></li>
			</ul>
		</div>
		<div class="navButton_line"></div>
		
		
		<div class="main">
			<div class="sub-nav">
				<p class="sub-nav-p">作业提交</p>
			</div>	
			<div class="main-body">
				<iframe src="${pageContext.request.contextPath}/file_getAllFileMessage.action" width="900px" height="1000px" name="show">
				</iframe>
			</div>
		</div>
		
		
		<div id="Fly" class="fly">
			<button class="fly_x" id="Fly_x">X</button>
		</div>
		
		
		<div class="foot">
			<div class="foot-one">
				<div class="school-logo">
					<img src="${pageContext.request.contextPath }/img/logo.png" width="175px" height="50px" />
				</div>
				<div class="footer-line1"></div>
				<div class="about-net">
					<a href="http://www.ayit.edu.cn/">
						<p>安阳工学院官网</p>
					</a>
					<p>地址:河南省安阳市黄河大道安阳工学院</p>
					<p>邮编：455000</p>
					<p>版权所有：安阳工学院</p>
				</div>
				<div class="footer-line1"></div>
				<div class="weixin"><img src="../img/官方微信.png" />
				</div>
				<div class="weobo"><img src="../img/微博.png" />
				</div>
			</div>

		</div>
	</body>
</html>
