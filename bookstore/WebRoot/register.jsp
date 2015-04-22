<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>register</title>
    
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
  <form action="registerAction" method="post">
    <table>

    	<tr>
    		<td>user id</td>
    		<td><input type="text" name="userId"></td>
    	</tr>
    	<tr>
    		<td>password</td>
    		<td><input type="password" name="password"></td>
    	</tr>
    	<tr>
    		<td>nick name</td>
    		<td><input type="text" name="name"></td>
    	</tr>
    	<tr>
    		<td>phone</td>
    		<td><input type="text" name="phone"></td>
    	</tr>
    	<tr>
    		<td>address</td>
    		<td><input type="text" name="address"></td>
    	</tr>
    </table>
    <input type="submit" value="注册"/>
    <input type="reset" value="重置"/>
   </form>
  </body>
</html>
