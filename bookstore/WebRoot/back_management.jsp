<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BackManagement.jsp' starting page</title>
    
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
  <c:if test="${sessionScope.user.id eq 'admin'}">
    <p> hello</p>
    <s:action name="viewAllUserAction" executeResult="true" namespace="/">
   </s:action>
		<table class="backmanage-table">
			<tr>
				<td><a href="viewAllUserAction">User Management</a>	</td>
			</tr>
			<tr>
				<td><a href="viewAllOrderAction">Order Management</a> </td>	
			</tr>
			<tr>
				<td><a href="viewAllBookAction">Book Management</a></td>
			</tr>		
		</table>
	</c:if>
     <a href="index.jsp">Back to home page.</a>
  </body>
</html>
