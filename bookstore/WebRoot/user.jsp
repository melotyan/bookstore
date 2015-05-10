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
						<form action="registerAction" method="post">
							<div>
								<span><label>用户名</label></span> <span><input id="ui_id"
									name="userId" type="text" class="textbox"></span>
							</div>
							<div>
								<span><label>密码</label></span> <span><input id="ui_pw"
									name="password" type="text" class="textbox"></span>
							</div>
							<div>
								<span><label>昵称</label></span> <span><input name="name"
									id="ui_nick" type="text" class="textbox"></span>
							</div>
							<div>
								<span><label>电话</label></span> <span><input name="phone"
									id="ui_ph" type="text" class="textbox"></span>
							</div>
							<div>
								<span><label>住址</label></span> <span><input id="ui_add"
									name="address" type="text" class="textbox"></span>
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
						<h5><s:property value="#book.name" /></h5>
						<img src="/${book.image}" alt="">
						<p><s:property value="#book.description" /></p>
						<div class="btn top">
							<a href="details.jsp">立即购买</a>
						</div>
					</div>
					</s:iterator>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic1.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic3.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic4.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic5.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic2.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<!-- 账单信息 -->
				<div id="buy_info">
					<s:iterator value="list" var="cart">
					<div class="ser-grid-list">
						<h5><s:property value="#book.name" /></h5>
						<img src="/${book.image}" alt="">
						<p><s:property value="#book.description" /></p>
						<div class="btn top">
							<a href="details.jsp">再次购买</a>
						</div>
					</div>
					</s:iterator>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic1.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic3.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic4.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic5.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="ser-grid-list">
						<h5>Product Name</h5>
						<img src="./images/ser-pic2.jpg" alt="">
						<p>Qsi turpis, pellentesque at ultrices in, dapibus in magna.
							Nunc easi diam risus, placerat ut scelerisque</p>
						<div class="btn top">
							<a href="details.jsp">View More</a>
						</div>
					</div>
					<div class="clear"></div>
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
		var $tag=$("#user_item h2")
		$("#u_ui").click(function(e) {
			$(this).addClass("active");
			$("#u_sp").removeClass("active");
			$("#u_bc").removeClass("active");
			$("#user_info").show();
			$("#cart_info").hide();
			$("#buy_info").hide();
			$tag.html("用户中心");
			e.preventDefault();
		});
		$("#u_sp").click(function(e) {
			$(this).addClass("selected");
			$("#u_ui").removeClass("selected");
			$("#u_bc").removeClass("selected");
			$("#user_info").hide();
			$("#cart_info").show();
			$("#buy_info").hide();
			$tag.html("购物车");
			e.preventDefault();
		});
		$("#u_bc").click(function(e) {
			$(this).addClass("selected");
			$("#u_sp").removeClass("selected");
			$("#u_ui").removeClass("selected");
			$("#user_info").hide();
			$("#cart_info").hide();
			$("#buy_info").show();
			$tag.html("购买记录");
			e.preventDefault();
		});
		var $title_cl = $("ul.nav li:eq(1)");
		$(document).ready(function(){
			$title_cl.addClass("active").siblings().removeClass("active");
		});
	</script>
</body>
</html>