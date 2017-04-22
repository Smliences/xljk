<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/registered.css" />
	</head>
	<body>
		<div class="registered_p">用户注册</div>	
		<div class="hr"></div>
		<div id="box">
			<div id="form_top">
				<p class="p_show">老师注册</p>
				<p>学生注册</p>
			</div>
			<div id="form_buttom">
				<form action="${pageContext.request.contextPath }/user_regist.action" class="form_show">
					<input name="role" hidden="hidden" value=true />
					<span1 id="span1"></span1><br/>
					工&nbsp;号：<input name="num" id="num" type="number" onblur="checkUserNum()" autofocus required/><br>
					姓&nbsp;名：<input name="name" type="text" required/><br>
					密&nbsp;码：<input name="pwd" type="password" required/><br>
					部&nbsp;门：<input name="dept" type="text" required/><br>
					<input name="dept" type="text" hidden="hidden" value=""/></br>
					<input name="dept" type="text" hidden="hidden" value=""/></br>
					<input class="submit" type="submit" value="提交">
					<div class="goLogin"><a href="${pageContext.request.contextPath }/login.jsp">去登陆</a></div>
				</form>
				<form action="${pageContext.request.contextPath }/user_regist.action" method="post">
					<input name="role" hidden="hidden" value=false />
					<span1 id="span2"></span1><br/>
					学&nbsp;号：<input name="num" id="num1" type="number" onblur="checkUserNum1()" autofocus required/><br>
					姓&nbsp;名：<input name="name" type="text" required/><br>
					密&nbsp;码：<input name="pwd" type="password" required/><br>
					专&nbsp;业：<input name="pro" type="text" required/><br>
					班&nbsp;级：<input name="cls" type="text" required/><br>
					<input name="dept" type="text" hidden="hidden" value=""/></br>
					<input class="submit" type="submit" value="提交">
					<div class="goLogin"><a href="${pageContext.request.contextPath }/login.jsp">去登陆</a></div>
						
					
					
				</form>
			</div>
		</div>
	</body>
	
	<script>
			window.onload = function(){
				var ps = document.getElementsByTagName("p");
				var forms = document.getElementById("form_buttom").getElementsByTagName("form");
				for(var i = 0;i < ps.length;i++){
					ps[i].index = i;
					ps[i].onclick = function(){
						for(var j = 0;j < ps.length;j++){
							ps[j].className = "";
							forms[j].className = "";
						}
						this.className = "p_show";
						forms[this.index].className = "form_show";
					}
				}
			}
						window.onload = function(){
				var ps = document.getElementsByTagName("p");
				var forms = document.getElementById("form_buttom").getElementsByTagName("form");
				for(var i = 0;i < ps.length;i++){
					ps[i].index = i;
					ps[i].onclick = function(){
						for(var j = 0;j < ps.length;j++){
							ps[j].className = "";
							forms[j].className = "";
						}
						this.className = "p_show";
						forms[this.index].className = "form_show";
					}
				}
			}
			function checkUserNum(){
		// 获得文件框值:
		var num = document.getElementById("num").value;
		console.log(num);
		// 1.创建异步交互对象
		var xhr = new XMLHttpRequest();
		console.log(xhr);
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					document.getElementById("span1").innerHTML = xhr.responseText;
				}
			}
		}
		// 3.打开连接
		xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&num="+num,true);
		// 4.发送
		xhr.send(null);
	}
	
	function checkUserNum1(){
		// 获得文件框值:
		var num = document.getElementById("num1").value;
		console.log(num);
		// 1.创建异步交互对象
		var xhr = new XMLHttpRequest();
		console.log(xhr);
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					document.getElementById("span2").innerHTML = xhr.responseText;
				}
			}
		}
		// 3.打开连接
		xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&num="+num,true);
		// 4.发送
		xhr.send(null);
	}
	
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
		</script>
</html>
