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
  	<td>User Id</td>
  	<td>User Name</td>
  	<td>User Password</td>
  	<td>User Phone</td>
  	<td>User Address</td>
  	<td>Edit User</td>
  	<td>Delete User</td>
 	</tr>
   <!--<form action="editUserInfoAction" method="post">-->
       	<s:iterator value="userlist" var="user">
       	<form action="editUserAdminAction" method="post">
       	<tr>
       			<td>
 			<input name="userId"
				type="text" class="textbox required" id="id" value="${user.id}">
				
<!-- 					<s:property value="#user.name" /> -->
				</td>

				<td>
				<input name="name"
				type="text" class="textbox required" id="name" value="${user.name}">
				
<!-- 				<s:property value="#user.name" /> -->
				</td>
				<td>
				<input name="password"
				type="text" class="textbox required" id="re_password" value="${user.password}">
				
<!-- 				<s:property value="#user.password" /> -->
				</td>
				<td>
				<input name="phone"
				type="text" class="textbox required" id="phone" value="${user.phone}">
				
<!-- 					<s:property value="#user.phone" /> -->
				</td>
				<td>
				<input name="address"
				type="text" class="textbox required" id="address" value="${user.address}">
				
<!-- 					<s:property value="#user.address" /> -->
					</td>
				<td>
				<input type="submit" value="Edit" />
					<!--  <td ><a href='
                    <s:url action = "editUserAction">
                    <s:param  name ="uid" value="#id" />
                    <s:param  name ="uname" value="#user.name" />
                    <s:param  name ="u password" value="#user.password" />
                    <s:param  name ="uphone" value="#user.phone" />
                    <s:param  name ="uaddress" value="#user.address" />
                    </s:url>'>Edit User</
					
				</td>-->
			 <!--<td><a href="deleteUserAction?id=2">Delete User</a></td>-->
				<td >
                   <a href= '
                    <s:url action = "deleteUserAction">
                         <s:param name = "id" value ="#user.id" />
               </s:url>'>Delete</a>
              </td>
				
			</tr>
			</form>
		</s:iterator>
		</table>
 </c:if>
    <a href="back_management.jsp">Back to last page.</a>
  </body>
</html>
