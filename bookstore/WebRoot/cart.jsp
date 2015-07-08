<!DOCTYPE HTML>
<html>
<head>
<title>购物车</title>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
#tinybox {
	position: absolute;
	display: none;
	padding: 10px;
	background: #ffffff url(image/preload.gif) no-repeat 50% 50%;
	border: 10px solid #e3e3e3;
	z-index: 2000;
}

#tinymask {
	position: absolute;
	display: none;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	background: #000000;
	z-index: 1500;
}

#tinycontent {
	background: #ffffff;
	font-size: 1.1em;
}
</style>
<script type="text/javascript" src="js/tinybox.js"></script>
</head>
<body>
	<c:if test="${empty sessionScope.user }">
		<script>
			window.location.href="listBooksAction";
		</script>
	</c:if>
	<s:iterator value="list" var="cart">
		<div class="ser-grid-list"
			id="cart<s:property value='#cart.book.id'/>">
			<h5>
				<a href="viewBookDetailAction?bookId=${cart.book.id}"><s:property
						value="#cart.book.name" /></a>
			</h5>
			<a href="viewBookDetailAction?bookId=${cart.book.id}"><img
				src="${cart.book.image}" alt=""></a>
			<p>
				剩余数量:
				<s:property value="#cart.book.num" />
			<p>
				单价:
				<s:property value="#cart.book.newprice" />
				元
			</p>
			<p>数量:
				<a href="updateCartAction?userId=${sessionScope.user.id }&bookId=${cart.book.id}&amount=${amount - 1}"
					onclick="return reNum(<s:property value="#cart.book.id"/>,<s:property value="#cart.amount"/>)">
					<span id="reduce<s:property value="#cart.book.id" />" style="font-size:20px;font-weight:blod;color:#0066FF">-<span></a>
				<input type="text" name="amount" style="width:50px;" value="<s:property value="#cart.amount"/>" /> 
				<a href="updateCartAction?userId=${sessionScope.user.id }&bookId=${cart.book.id}&amount=${amount + 1}"
					onclick="return addNum(<s:property value="#cart.book.id"/>，<s:property value="#cart.amount"/>)">
					<span id="add<s:property value="#cart.book.id"/>" style="font-size:20px;font-weight:blod;color:#0066FF">+<span></a>
			</p>
			<p>
				总价: <span id="val<s:property value="#cart.book.id"/>"></span>
			</p>
			<script>
			toll(<s:property value="#cart.book.id"/>,<s:property value="#cart.book.newprice"/>,<s:property value="#cart.amount"/>);
			function toll(bookid,price,amount){
				var x = parseInt(price) * parseInt(amount);
				$("#val"+bookid).text(x);
				}
			</script>
			<p>
				日期:
				<s:property value="#cart.date" />
				<div style="display:inline, float:left">
			<div class="btn top">
				<a
						href="payBookInCartAction?userId=${sessionScope.user.id}&bookId=${cart.book.id}&amount=${amount}"
						onclick="return addbuy(<s:property value="#cart.book.id"/>,<s:property value="#cart.amount"/>,<s:property value="#cart.book.num" />,<s:property value="#cart.amount" />)">立即购买</a>
			</div>
			<div class="btn top">
				<a
						href="deleteFromCartAction?userId=${sessionScope.user.id}&bookId=${cart.book.id}">删除</a>
			</div>
			</div>
		</div>
	</s:iterator>
	<c:if test="${empty list }">
	购物车里什么都没有,快去买买买吧
	</c:if>
	<div class="clear"></div>
	<c:if test="${!empty list}">
		<div class="btn top" align="center">
			<a href="payAllOfCartAction?userId=${sessionScope.user.id }">一键购买</a>
		</div>
	</c:if>
	<script>
	
	function addbuy(bookid,amount,leave,now){
		if(parseInt(amount) > 0 && parseInt(leave)>=parseInt(now)){
			var cartid="cart"+bookid; 
           	$.post("payBookInCartAction?userId=${sessionScope.user.id}&bookId="+bookid+"&amount="+amount,
								function(data) {
									$("#"+cartid).hide();
								 	var tips = "<p>购买成功！</p><p>该提示框将在<span style='color:#f00'>2</span>秒钟内消失</p>";
        							TINY.box.show(tips,0,0,0,0,2);
								});
			return false;
           	}
		else if(parseInt(leave)>=parseInt(now)){
			var tips = "<p>购买数量至少要大于0！</p><p>该提示框将在<span style='color:#f00'>2</span>秒钟内消失</p>";
        	TINY.box.show(tips,0,0,0,0,2);
        	return false;
		}
		else{
			var tips = "<p>对不起，存货不足！</p><p>该提示框将在<span style='color:#f00'>2</span>秒钟内消失</p>";
        	TINY.box.show(tips,0,0,0,0,2);
        	return false;
		}
	};
		function addNum(bookid,amount){
		if(parseInt(amount) > 0 && parseInt(leave)>=parseInt(now)){
			var addid="add"+bookid; 
			var am = parseInt(amount)+1;
           	$.post("updateCartAction?userId=${sessionScope.user.id }&bookId="+bookid+"&amount="+am,
								function(data) {
									var add=parseInt($("#"+addid).text())+1;
									$("#"+addid).text(add);
								});
			return false;
           	}
           	else if(parseInt(amount<=0)){
           		
           	}
           	}
           	function reNum(bookid,amount){
		if(parseInt(amount) > 0 && parseInt(leave)>=parseInt(now)){
			var reid="reduce"+bookid; 
			var am = parseInt(amount)-1;
           	$.post("updateCartAction?userId=${sessionScope.user.id }&bookId="+bookid+"&amount="+am,
								function(data) {
									var re=parseInt($("#"+addid).text())-1;
									$("#"+reid).text(re);
								});
			return false;
           	}
           	}
</script>
</body>
</html>
