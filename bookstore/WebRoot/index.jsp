
<!DOCTYPE HTML>
<html>
<head>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>三味书屋</title>
<script src="./js/jquery-1.7.2.min.js" type="text/javascript">
	</script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css'>-->
</head>
<body>
	<%@include file="/head.jsp"%>
	<div class="main">
		<div class="sidebar">
			<div class="s-main">
				<div class="s_hdr1">
					<h2>种类</h2>
				</div>
				<div class="text1-nav">
					<ul>
						<li><a href="">古典文学</a></li>
						<li><a href="">人类历史</a></li>
						<li><a href="">社会哲学</a></li>
						<li><a href="">人与自然</a></li>
						<li><a href="">世界地理</a></li>
						<li><a href="">语言精品</a></li>
						<li><a href="">科学技术</a></li>
						<li><a href="">医学大全</a></li>
						<li><a href="">宇宙探秘</a></li>
						<li><a href="">五年高考</a></li>
						<li><a href="">悬疑推理</a></li>
						<li><a href="">世界名著</a></li>
						<li><a href="">旅游杂志</a></li>
						<li><a href="">计算机科学</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="clear"></div>
			<div class="cnt-main">
				<div class="s_btn">
					<ul>
						<li><h2>欢迎!</h2></li>
						<li><h3>
								<a href="login.jsp">重新登录！</a>
							</h3></li>
						<li><h2>第一次访问?</h2></li>
						<li><h4>
								<a href="register.jsp">加入我们！</a>
							</h4></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="grid">
					<div class="grid-img">
						<a href="details.jsp"><img src="./images/pic1.jpg" alt="" /></a>
					</div>
					<div class="grid-para">
						<h2>推荐商品</h2>
						<h3>命运之轮</h3>
						<p>该书由J.K.卓别林-汽车设计大师经过数年对于汽车的通读了解，酝酿而成</p>
						<div class="btn top">
							<a href="details.jsp">查看详情&nbsp;<img
								src="./images/marker2.png"></a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="cnt-main btm">
				<div class="section group" id="select_group">
					<s:iterator value="list" var="book">
						<div class="grid_1_of_3 images_1_of_3">
							<a href="details.jsp"><img src="/${book.image}" alt="" /></a> <a
								href="details.jsp"><h3>
									<s:property value="#book.name" />
								</h3></a>
							<div class="cart-b">
								<span class="price left"><sup>$<s:property
											value="#book.newprice" /></sup><sub></sub></span>
								<div class="btn top-right right">
									<a href="details.jsp">增加到购物车</a>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</s:iterator>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic4.png" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$92.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic1.png" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$12.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic6.png" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$63.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic5.png" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$86.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic7.png" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$61.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic9.png" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$22.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>

				</div>
			</div>
			<div id="pagebar">
				<a href="#"><<</a> <a href="#" class="page_now">1</a> <a href="#">2</a>
				<a href="#">3</a> <a href="#">4</a><a href="#">>></a>
			</div>
		</div>

		<br />
		<div class="clear"></div>
	</div>
	</div>
	<%@include file="/foot.jsp"%>
	<form action="listBooksAction" id="list_">
		<input type="submit" value="listbook" id="list_book" />
	</form>
	<script src="./js/jquery-1.7.2.min.js" type="text/javascript">
		
	</script>
	<script>
		var obj = document.getElementById("select_group"); //获取内容层  
		var pages = document.getElementById("pages"); //获取翻页层  
		window.onload = function()//重写窗体加载的事件  
		{
			var allpages = Math.ceil(parseInt(obj.scrollHeight)
					/ parseInt(obj.offsetHeight)); //获取页面数量  
			//                    pages.innerHTML = "<b>共" + allpages-1+ "页</b> "; //输出页面数量  
			for ( var i = 1; i <= allpages; i++) {
				if (i == 1) {
					pages.innerHTML += "<a href=\"javascript:showPage('" + i
							+ "');\">首页</a> ";
				} else {
					pages.innerHTML += "<a href=\"javascript:showPage('" + i
							+ "');\">" + i + "</a> ";
				}
				//循环输出第几页  
			}
		}
		function showPage(pageINdex) {
			obj.scrollTop = (pageINdex - 1) * parseInt(obj.offsetHeight); //根据高度，输出指定的页  
		}
		var $title_cl = $("ul.nav li:eq(0)");
		$(document).ready(function(){
			$title_cl.addClass("active").siblings().removeClass("active");
		});
	</script>
</body>
</html>

