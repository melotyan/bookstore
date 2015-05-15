<!DOCTYPE HTML>
<html>
<head>
<title>购买记录</title>
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
	<s:iterator value="list" var="detailList">
		<s:iterator value="#detailList" var="orderDetail">
			<div class="ser-grid-list">
				<h5>
					<a href="viewBookDetailAction?bookId=${orderDetail.book.id}"><s:property value="#orderDetail.book.name" /></a>
				</h5>
				<a href="viewBookDetailAction?bookId=${orderDetail.book.id}"><img src="${orderDetail.book.image}" alt=""></a>
				<p>
					订单号:
					<s:property value="#orderDetail.id.recordId" />
				<p>
					日期:
					<s:property value="#orderDetail.date" />
					"
				</p>
				<p>
					数量：
					<s:property value="#orderDetail.amount" />
				</p>
				<p>
					金额：
					<s:property value="#orderDetail.price" />
					元
				</p>
			</div>
		</s:iterator>
	</s:iterator>
</body>
</html>