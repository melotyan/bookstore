<!DOCTYPE HTML>
<html>
<head>
<title>所有订单</title>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 </head>
  <body>
  <table  width="99%" border="1" cellspacing="0" cellpadding="0" align="center">
  	<tr>
  	<td>Order Id</td>
  	<td>User Id</td>
  	<td>Book Name</td>
  	<td>Amount</td>
  	<td>Price</td>
  	<td>Date</td>
  	<td>Delete</td>
 	</tr>
   <!--<form action="editUserInfoAction" method="post">-->
       <s:iterator value="list" var="detailList">
		<s:iterator value="#detailList" var="orderDetail">
       
       	<tr>
       			<td>
				<!--  <input name="userId"
				type="text" class="textbox required" id="id" value="${user.id}">-->
				
					<s:property value="#orderDetail.id.recordId" />
				</td>
			   <td>
				<!--<input name="name"
				type="text" class="textbox required" id="name" value="${user.name}">-->
				
				<s:property value="#orderDetail.torder.user.name" />
				</td>
				
				<td>
				<!--<input name="name"
				type="text" class="textbox required" id="name" value="${user.name}">-->
				
				<s:property value="#orderDetail.book.name" />
				</td>
			
				<td>
				<!-- <input name="phone"
				type="text" class="textbox required" id="phone" value="${user.phone}">-->
				
					<s:property value="#orderDetail.amount" />
				</td>
				<td>
				<!-- <input name="address"
				type="text" class="textbox required" id="address" value="${user.address}">-->
				   <s:property value="#orderDetail.price" />
					</td>
			 <!--<td><a href="deleteUserAction?id=2">Delete User</a></td>-->
			 <td>
				<!-- <input name="password"
				type="text" class="textbox required" id="re_password" value="${user.password}">-->
				
				<s:property value="#orderDetail.date" />
				</td>
				<td >
                   <a href= '
                    <s:url action = "deleteOrderAction">
                         <s:param name = "id" value ="#orderDetail.id" />
               </s:url>'>Delete</a>
              </td>
				
			</tr>
		</s:iterator>
		</s:iterator>
		</table> 
		<a href="back_management.jsp">Back to last page.</a>
  </body>
</html>
