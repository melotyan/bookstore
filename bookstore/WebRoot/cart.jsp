<!DOCTYPE HTML>
<html>
<head>
<title>购物车</title>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<c:if test="${empty sessionScope.user }">
		<script>
			window.location.href="listBooksAction";
		</script>
	</c:if>
		<s:iterator value="list" var="cart">
			<div class="ser-grid-list">
				<h5>
					<a href="viewBookDetailAction?bookId=${cart.book.id}"><s:property
							value="#cart.book.name" /></a>
				</h5>
				<a href="viewBookDetailAction?bookId=${cart.book.id}"><img
					src="${cart.book.image}" alt=""></a>
				<p>剩余数量: <s:property value="#cart.book.num"/>
				<p>
					单价:
					<s:property value="#cart.book.newprice" />
					元
				</p>
				<p>
					数量:
					</p>
					<p>
					<a href="updateCartAction?userId=${sessionScope.user.id }&bookId=${cart.book.id}&amount=${amount - 1} "><span>-<span></a>
					<input type="text" name="amount" style="width:50px;" value="<s:property value="#cart.amount"/>"/>
					<a href="updateCartAction?userId=${sessionScope.user.id }&bookId=${cart.book.id}&amount=${amount + 1}"><span>+<span></a>
				</p>
				<p>总价: "#price" * "#amount"</p>
				<p>
					日期:
					<s:property value="#cart.date" />
				<div class="btn top">
					<a href="payBookInCartAction?userId=${sessionScope.user.id}&bookId=${cart.book.id}&amount=${amount}">立即购买</a>
				</div>
				<div class="btn top">
					<a href="deleteFromCartAction?userId=${sessionScope.user.id}&bookId=${cart.book.id}">删除</a>
				</div>
			</div>
		</s:iterator>
		<c:if test="${!empty list}">
			<div class="btn top">
				<a href="payAllOfCartAction?userId=${sessionScope.user.id }">全部付款</a>
			</div>
		</c:if>
		<c:if test="${empty list }">
	购物车里什么都没有,快去买买买吧
	</c:if>

</body>
</html>
