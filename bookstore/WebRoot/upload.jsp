<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="uploadAction" method="post"  enctype="multipart/form-data">
    	<table>
    	
    		<tr>
    			<td>name</td>
    			<td><input type="text" name="name"/></td>
    		</tr>
    		<tr>
    			<td>number</td>
    			<td><input type="number" maxlength="3" name="num"/></td>
    		</tr>
    		
    		<tr>
    			<td>primary price</td>
    			<td><input type="number" maxlength="3" name="primaryprice"/></td>
    		</tr>
    		<tr>
    			<td>new price</td>
    			<td><input type="number" maxlength="3" name="newprice"/></td>
    		</tr>
    		<tr>
    			<td>class</td>
    			<td><input type="text" name="class_"/></td>
    		</tr>
    		<tr>
    			<td>author</td>
    			<td><input type="text" name="author"/></td>
    		</tr>
    		<tr>
    			<td>publish house</td>
    			<td><input type="text" name="publishhouse"/></td>
    		</tr>
    		<tr>
    			<td>publish date</td>
    			<td><input type="date" name="publishdate"/></td>
    		</tr>
    		<tr>
    			<td>description</td>
    			<td><input type="text" name="description"/></td>
    		</tr>
    		 
    		<tr>
    			<td>image</td>
    			<td><input type="file" name="file"/></td>
    			
    		</tr>
    		
    	</table>
    	<input type="submit" value="submit"/>
    </form>
  </body>
</html>
