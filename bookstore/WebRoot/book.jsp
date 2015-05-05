<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'book.jsp' starting page</title>
    
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
  <table>
  	<tr>
  		<td>书ID</td>
  		<td>现有数量</td>
  		<td>原价</td>
  		<td>现价</td>
  	</tr>
  	<!-- 随便写吧,只要把每本书的图像展示出来,然后图片可以点击就可以了,然后跳转到bookDetail.jsp
  	点击的那个action="viewCartDetailAction" -->
  </table>
    <s:iterator value="list" var="book">
    	<s:property value="#book.image"/>
    	<s:property value="#book.id"/>	
    	<s:property value="#book.num"/>
    	<s:property value="#book.primaryprice"/>
    	<s:property value="#book.newprice"/>
    	<img src="upload/#book.image" >
    	<br>
    </s:iterator>
    
  </body>
</html>
