<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>学生作业列表</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<style>
			* {
				padding: 0px;
				margin: 0px;
			}
			
			.box {
				width: 70%;
				margin: auto;
				height: 550px;
				background: #EDF7FD;
			}
			.box p{
				font-size: 22px;
				margin-left: 40%;
				padding-top: 35px;
			}
			table{
				width:90%;
				margin: auto;
				margin-top: 25px;
				border: thick;
				border-color: black;
			}
			th ,td{
				height: 30px;
				width: auto;
			}
		</style>
	</head>

	<body>
		<div class="box">
			<p>学生作业列表</p>
			<table border="1">
				<tr>
					<th width="100px">序号</th>
					<th width="100px">学生学号</th>
					<th width="200px">学生姓名</th>
					<th width="500px">提交次数</th>
					<th width="120px">操作</th>
				</tr>
				<s:if test="#stuList.size()==0">
					<tr>
						<td colspan="4" align="center">暂无学生信息</td>
					</tr> 
				</s:if>
				
				<s:else>
					<s:iterator value="#stuList" status="work">
						<tr>
							<td> <s:property value="#work.count"/> </td>
							<td> <s:property value="usernum"/> </td>
							<td> <s:property value="username"/> </td>
							<td align="center"> <s:property value="submitCount"/> </td>
			    			<td align="center"> <s:a action="work_detail.action?userid=%{userid}">查看详情</s:a> </td>
						</tr>
					</s:iterator>
				</s:else>
			</table>
		</div>
	</body>

</html>