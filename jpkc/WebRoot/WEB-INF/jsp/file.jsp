<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>file</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	  <table border="1px solid">
	    	<s:iterator value="fileMessage">
	    		<tr>
		    		<td><s:property value="username"/></td>
		    		<td><s:property value="fileflag"/></td>
		    		<td><s:property value="filename"/></td>
		    		<td><s:a action="download.action?filename=%{filename}&fileFlag=%{fileflag}">下载</s:a></td>
	    		</tr>
	    	</s:iterator>
	   </table>
  </body>
</html>
