<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>用户中心</title>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="./css/animate.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="./js/jquery-1.7.2.min.js" type="text/javascript">
	
</script>
</head>
<body>
	<%@include file="/head.jsp"%>
	<div class="content">
		<div class="clear"></div>
		<div class="cnt-main">
			<div class="s_btn">
				<ul>
					<li id="user_item"><h2>用户信息</h2></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="grid">
				<div id="user_info">
					<div class="contact-form">
						<form action="" method="post">
							<div>
								<label class="contact-label">用户名 </label> <input name="userId"
									type="text" class="textbox required" id="re_name" value="${sessionScope.user.id}" readonly>
							</div>
							<div>
								<label class="contact-label">密码</label> <input name="password"
									type="password" class="textbox required" id="re_password" value="${sessionScope.user.password}">
							</div>
							<div>
								<label class="contact-label">昵称</label> <input name="name"
									type="text" class="textbox required" id="re_nick" value="${sessionScope.user.name}">
							</div>
							<div>
								<label class="contact-label">电话</label> <input name="phone"
									type="text" class="textbox required" id="re_tele" value="${sessionScope.user.phone}">
							</div>
							<div>
								<label class="contact-label">住址</label> <input name="address"
									type="text" class="textbox required" id="re_addr" value="${sessionScope.user.address}">
							</div>
							<br /> <input type="submit" value="修改" />
						</form>
					</div>
					<div class="clear"></div>
				</div>
				<!-- 购物车 -->
				<div id="cart_info">
					<s:iterator value="list" var="cart">
						<div class="ser-grid-list">
							<h5>
								<s:property value="#book.name" />
							</h5>
							<img src="/${book.image}" alt="">
							<p>
								<s:property value="#book.description" />
							</p>
							<div class="btn top">
								<a href="details.jsp">立即购买</a>
							</div>
						</div>
					</s:iterator>
					<div class="ser-grid-list">
						<h5>西方哲学史</h5>
						<img src="./images/productslide-2.jpg" alt="">
						<p>这本书很不错的，买买买！</p>
						<div class="btn top">
							<a href="details.jsp">立即购买</a>
						</div>
					</div>
					<br />
					<div class="clear"></div>
					<div id="pagebar_2" align="center">
						<a href="javascript:showPage(1)" style="color:#f00">1 </a>
					</div>
				</div>
				<!-- 账单信息 -->
				<div id="buy_info">
					<s:iterator value="list" var="cart">
						<div class="ser-grid-list">
							<h5>
								<s:property value="#book.name" />
							</h5>
							<img src="/${book.image}" alt="">
							<p>
								<s:property value="#book.description" />
							</p>
							<div class="btn top">
								<a href="details.jsp">再次购买</a>
							</div>
						</div>
					</s:iterator>
					<div class="ser-grid-list">
						<h5>西方哲学史2</h5>
						<img src="./images/productslide-2.jpg" alt="">
						<p>这本书很不错的，买买买！</p>
						<div class="btn top">
							<a href="details.jsp">再次购买</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>西方哲学史3</h5>
						<img src="./images/productslide-3.jpg" alt="">
						<p>我跟你讲，这本书，赞！我论斤买</p>
						<div class="btn top">
							<a href="details.jsp">再次购买</a>
						</div>
					</div>
					<br />
					<div class="clear"></div>
					<div id="pagebar_3" align="center">
						<a href="javascript:showPage(1)" style="color:#f00">1 </a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="sidebar" id="user_menu">
		<div class="s-main">
			<div class="s_hdr">
				<h2>用户中心</h2>
			</div>
			<div class="text1-nav">
				<ul id="ul_menu">
					<li><a id="u_ui" href="">个人信息</a></li>
					<li><a id="u_sp" href="">购物车</a></li>
					<li><a id="u_bc" href="">购买记录</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	</div>
	</div>
	<br />
	<br />
	<br />
	<%@include file="/foot.jsp"%>
	<script>
		var $tag = $("#user_item h2")
		$("#u_ui").click(function(e) {
			$(this).addClass("active");
			$("#u_sp").removeClass("active");
			$("#u_bc").removeClass("active");
			$("#cart_info").hide("slow");
			$("#buy_info").hide("slow");
			$("#user_info").show("slow");
			e.preventDefault();
		});
		$("#u_sp").click(function(e) {
			$(this).addClass("selected");
			$("#u_ui").removeClass("selected");
			$("#u_bc").removeClass("selected");
			$("#user_info").hide("slow");
			$("#buy_info").hide("slow");
			$("#cart_info").show("slow");
			$tag.html("购物车");
			e.preventDefault();
		});
		$("#u_bc").click(function(e) {
			$(this).addClass("selected");
			$("#u_sp").removeClass("selected");
			$("#u_ui").removeClass("selected");
			$("#user_info").hide("slow");
			$("#cart_info").hide("slow");
			$("#buy_info").show("slow");
			$tag.html("购买记录");
			e.preventDefault();
		});
		var $title_cl = $("ul.nav li:eq(1)");
		$(document).ready(function() {
			$title_cl.addClass("active").siblings().removeClass("active");
		});
		$("form :input.required").each(function() {
			var $required = $("<strong style='color:#f00;'>*</strong>");
			$(this).siblings().append($required);
		});
		$("form :input")
				.blur(
						function() {
							var $sib = $(this).siblings();
							$sib.find(".formtips").remove();
							if (this.value == "") {
								var $errorMsg = $("<strong style='color:#f00;' class='formtips error'>      该项不能为空！</strong>");
								$sib.append($errorMsg);
							} else if ($(this).is("#re_password")) {
								if (this.value.length < 6) {
									var $errorMsg = $("<strong style='color:#f00;' class='formtips error'>      密码不能小于6位！</strong>");
									$sib.append($errorMsg);
								}
							} else if ($(this).is("#re_tele")) {
								var pattern = /^1[3,5,8,6]\d{9}$/;
								if (!pattern.test(this.value)) {
									var $errorMsg = $("<strong style='color:#f00;' class='formtips error'>      请输入正确的手机号码！</strong>");
									$sib.append($errorMsg);
								}
							}
						}).keyup(function() {
					$(this).triggerHandler("blur");
				}).focus(function() {
					$(this).triggerHandler("blur");
				});
		$('#register').click(function() {
			$("form .required:input ").trigger('blur');
			var numError = $('form .error').length;
			if (numError) {
				return false;
			}
		});
	</script>
</body>
</html>