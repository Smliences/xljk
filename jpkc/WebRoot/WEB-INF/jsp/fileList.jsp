<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>所有作业</title>
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
			<p>作业详情</p>
			<table border="1">
				<tr>
					<th width="200px">序号</th>
					<th width="200px">作业名称</th>
					<th width="500px">提交时间</th>
					<th width="120px" colspan="2">操作</th>
				</tr>
				<s:if test="#works.size()==0">
					<tr>
						<td colspan="4" align="center">暂未提交作业</td>
					</tr> 
				</s:if>
				
				
				<s:else>
					<s:iterator value="#works" status="work">
						<tr>
							<td> <s:property value="#work.count"/> </td>
							<td> <s:property value="name"/> </td>
							<td> <s:property value="time"/> </td>
							<td align="center"> <s:a action="download.action?filename=%{name}&workid=%{wid}">下载</s:a> </td>
			    			<td align="center"> <s:a action="file_deleteFile.action?wid=%{wid}">删除</s:a> </td>
						</tr>
					</s:iterator>
				</s:else>
			</table>
		</div>
	</body>

</html>