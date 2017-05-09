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
		<link rel="stylesheet" type="text/css" href="../css/nav.css"/>
		<link rel="stylesheet" type="text/css" href="../css/footer.css"/>
		<link rel="stylesheet" type="text/css" href="../css/public.css"/>
		<link rel="stylesheet" type="text/css" href="../css/main.css"/>
		<script src="../js/click.js"></script>
		<script src="../js/close.js"></script>
	</head>
	<body>
		<div class="header"></div>
		<div class="login"><a href="/jpkc/login.jsp">登录</a>/<a href="/jpkc/regist.jsp">注册</a></div>
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
				<li class="nav-li"><a href="#">学习资源</a></li>
				<li class="nav-li"><a href="ZYTJ.jsp">作业提交</a></li>
				<li class="nav-li"><a href="question_toLT.action">师生论坛</a></li>
			</ul>
		</div>
		<div class="navButton_line"></div>
		
		<div class="main">
			<div class="main-nav">
				
				<div id="hide" class="main-nav-li" onclick="xianshi()"><a class="main-nav-li-link">在线测试</a>
					<div class="hider"><a href="../计算机网络工程综合测试.html" target="XXZY">计算机网络工程综合测试</a></div>
					<div class=" hider"><a href="../参考答案.html" target="XXZY">综合测试参考答案</a></div>
				</div>
				
				<div id="hide_two" class="main-nav-li" onclick="xianshi_two()"><a class="main-nav-li-link">课程设计展示</a>
					<div class="hider_two"><a href="/jpkc/1.html" target="XXZY">课程设计说明书格式</a></div>
					<div class="hider_two"><a href="/大学校园网络设计方案--陈海忙组.html" target="XXZY">大学校园网络设计方案</a></div>
					<div class="hider_two"><a href="/行政机关大楼办公网设计--张开楠组.html" target="XXZY">行政机关大楼办公网设计</a></div>
					<div class="hider_two"><a href="/某行政机关网路规划--冯志胜组.html" target="XXZY">某行政机关网路规划</a></div>
					<div class="hider_two"><a href="/企业局域网组建与设计_祁世松组.html" target="XXZY">企业局域网组建与设</a></div>
					<div class="hider_two"><a href="/校园网的规划与设计--高勇涛组.html" target="XXZY">校园网的规划与设计</a></div>
					<div class="hider_two"><a href="/校园无线网络组网设计方案--许彪组 - 副本.html" target="XXZY">校园无线网络组网设计方案</a></div>
					<div class="hider_two"><a href="/医院综合布线项目的规划与设计-冯慧丹组.html" target="XXZY">医院综合布线项目的规划设计</a></div>
				</div>
					
				<div id="hide_one" class="main-nav-li" onclick="xianshi_one()"><a class="main-nav-li-link">综合实训参考视频</a>
					<div class="hider_one  main-nav-li-zhsx"><a href="../web_video/WLKT_video1.html" target="XXZY">序幕</a></div>
					<div class="hider_one  main-nav-li-zhsx"><a href="../web_video/WLKT_video2.html" target="XXZY">智能楼宇网络工程总体介绍</a></div>
					<div class="hider_one  main-nav-li-zhsx"><a href="../web_video/WLKT_video3.html" target="XXZY">线缆敷设</a></div>
				</div>
							
				<div class="main-nav-li"><a href="../web_iframe/XXZY_zyxz.html" class="main-nav-li-link" target="XXZY">资源下载</a></div>		
			</div>
			<div class="sub-nav">
				<p class="sub-nav-p">学习资源</p>
			</div>	
			<div class="main-body">
				<iframe src="../计算机网络工程综合测试.html" width="900px" height="1000px" name="XXZY" scrolling="yes">
				</iframe>
			</div>
		</div>
		
		
		<div id="Fly" class="fly">
			<button class="fly_x" id="Fly_x">X</button>
		</div>
		
		
		
		<div class="foot">
			<div class="foot-one">
				<div class="school-logo">
					<img src="../img/logo.png" width="175px" height="50px" />
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
