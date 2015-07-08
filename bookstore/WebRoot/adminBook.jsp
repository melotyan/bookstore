<!DOCTYPE HTML>
<html>
<head>
<title>所有用户</title>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  </head>
  
  <body>
  <c:if test="${sessionScope.user.id eq 'admin'}">
  <table  width="99%" border="1" cellspacing="0" cellpadding="0" align="center">
  	<tr>
  	<td>Book Id</td>
  	<td>Book Name</td>
  	<td>Book Class</td>
  	<td>Author</td>
  	<td>Number</td>
  	<td>Price</td>
  	<td>Primary Price</td>
  	<td>Publish House</td>
  	<td>Publish Date</td>
 	</tr>
   <!--<form action="editUserInfoAction" method="post">-->
       	<s:iterator value="booklist" var="book">
       	
       	<tr>
       			<td>
					<s:property value="#book.id" />
				</td>

				<td>
				<s:property value="#book.name" />
				</td>
				<td>
		  	<s:property value="#book.class_" />
				</td>
				<td>
					<s:property value="#book.author" />
				</td>
				<td>
				<s:property value="#book.num" />
					</td>
				<td>
				<s:property value="#book.primaryprice" />
					</td>
				</td>
			 <!--<td><a href="deleteUserAction?id=2">Delete User</a></td>-->
			 <td>
			 <s:property value="#book.newprice" />
			 </td>
			 <td>
			 <s:property value="#book.publishhouse" />
			 </td>
			 <td>
<!-- 			 <s:date name="#book.publishdate" /> -->
			 <span>${book.publishdate }</span>
			 </td>
				
				
			</tr>
		</s:iterator>
		</table>
 </c:if>
    
    <a href="upload.jsp">Upload New Book</a>
    <br>
    <a href="edit.jsp">Edit Book</a>
    <br>
    <a href="back_management.jsp">Back to last page.</a>
  </body>
</html>
