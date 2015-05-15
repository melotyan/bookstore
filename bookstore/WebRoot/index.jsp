
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
<script>
	function addToCart() {
		var userId = "${sessionScope.user.id}";
		if (!userId) {
			window.location.href="login.jsp";
			
			//exit(0);
			return false;
		}
		//var bookId = document.getElementsByName("bookId");
		//window.location.href="addToCartAction?bookId=" + bookId + "&userId=" + userId + "&amount=1";
		//"addToCartAction?bookId=${book.id}&userId=${sessionScope.user.id}&amount=1"
	}
</script>
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
						<li><a href="listBooksByClassAction?class_=1">古典文学</a></li>
						<li><a href="listBooksByClassAction?class_=2">人类历史</a></li>
						<li><a href="listBooksByClassAction?class_=3">社会哲学</a></li>
						<li><a href="listBooksByClassAction?class_=4">人与自然</a></li>
						<li><a href="listBooksByClassAction?class_=5">世界地理</a></li>
						<li><a href="listBooksByClassAction?class_=6">语言精品</a></li>
						<li><a href="listBooksByClassAction?class_=7">科学技术</a></li>
						<li><a href="listBooksByClassAction?class_=8">医学大全</a></li>
						<li><a href="listBooksByClassAction?class_=9">宇宙探秘</a></li>
						<li><a href="listBooksByClassAction?class_=10">悬疑推理</a></li>
						<li><a href="listBooksByClassAction?class_=11">世界名著</a></li>
						<li><a href="listBooksByClassAction?class_=12">计算机科学</a></li>
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
						<a href="details.jsp"><img src="./images/productslide-2.jpg" alt="" /></a>
					</div>
					<div class="grid-para">
						<h2>推荐商品</h2>
						<h3>西方哲学史</h3>
						<p>该书由罗素.罗兰经过数年对于西方哲学的通读了解，酝酿而成</p>
						<div class="btn top">
							<a href="details.jsp">增加到购物车&nbsp;
							<img src="./images/marker2.png"></a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="cnt-main btm" id="select_group">
				<div class="section group" id="select_content">
					<s:iterator value="list" var="book">
						<input type="hidden" name="bookId" value="${book.id }"/>
						<div class="grid_1_of_3 images_1_of_3">
							<a href="viewBookDetailAction?bookId=${book.id}"><img title="<s:property value="#book.description"/>" class="tool_tips" src="<s:property value="#book.image"/>" alt="<s:property value="#book.image"/>" /></a> <a
								href="viewBookDetailAction?bookId=${book.id}"><h3>
									<s:property value="#book.name"/>
								</h3></a>
							<div class="cart-b">
								<span class="price left"><sup><s:property
											value="#book.newprice" />元</sup><sub></sub></span>
								<div class="btn top-right right">
									<a href="addToCartAction?bookId=${book.id}&userId=${sessionScope.user.id}&amount=1" onclick="return addToCart()">增加到购物车</a>
								</div>
								
								<div class="clear"></div>
							</div>
						</div>
					</s:iterator>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic4.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic1.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic6.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic5.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic7.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic9.png" class="tool_tips" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$22.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_3 images_1_of_3">
						<a href="details.jsp"><img src="./images/pic6.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic5.png" class="tool_tips" alt="" /></a> <a
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
						<a href="details.jsp"><img src="./images/pic7.png" class="tool_tips" alt="" /></a> <a
							href="details.jsp"><h3>Lorem Ipsum is simply</h3></a>
						<div class="cart-b">
							<span class="price left"><sup>$61.00</sup><sub></sub></span>
							<div class="btn top-right right">
								<a href="details.jsp">Add to Cart</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<br/>
			<div id="pagebar" align="center">
				<a href="javascript:showPage(1)" style="color:#f00">1  </a>
			</div>
		</div>

		<br />
		<div class="clear"></div>
	</div>
	</div>
	<%@include file="/foot.jsp"%>
	<script src="./js/jquery-1.7.2.min.js" type="text/javascript">
		
	</script>
	<script>
		var obj = document.getElementById("select_group"); //获取外层    
		var $con=$("#select_content"); //获取内容层
		function showPage(pageINdex) {
			$("#pagebar a:eq("+(pageINdex-1)+")").css("color","#f00").siblings().css("color","");
			obj.scrollTop = (pageINdex - 1) * height3*3; //根据高度，输出指定的页  
		}
		var $title_cl = $("ul.nav li:eq(0)");
		$(document).ready(function(){
			$title_cl.addClass("active").siblings().removeClass("active");
		});
		$(document).ready(function(){
			
			height3=Math.abs(parseFloat($(".grid_1_of_3").css("margin-top")))+Math.abs(parseFloat($(".grid_1_of_3").css("margin-bottom")))
			+Math.abs(parseFloat($(".grid_1_of_3").css("border-top")))+Math.abs(parseFloat($(".grid_1_of_3").css("border-bottom")))
			+Math.abs(parseFloat($(".grid_1_of_3").css("padding-top")))+Math.abs(parseFloat($(".grid_1_of_3").css("padding-bottom")))
			+Math.abs(parseFloat($(".grid_1_of_3").css("height")));
			$("#select_group").css("height",height3*3+"px");
			var num=Math.ceil(($(".grid_1_of_3").length) / 9);
			var page_begin=document.getElementById("pagebar");
			$con.css("height",+obj.clientHeight*num+"px");
			for(var i=1;i<num;i++){
				page_begin.innerHTML+=("<a href=\"javascript:showPage('" + (i+1)+ "');\">"+(i+1)+"  "+"</a>");
			}
		});
		$(".tool_tips").mouseover(function(e){
			this.myTitle=this.title;
			this.title="";
			var imgTitle = this.myTitle?"<br/>"+this.myTitle : "";
			var tooltip ="<div id='tooltip' style='border:1px;width:250px;position:absolute'><img style='height:220px' src='"+this.src+"'/>"+imgTitle+"</div>";
			$("body").append(tooltip);
			$("#tooltip").css({
				"top":(e.pageY+10) + "px",
				"left":(e.pageX+10) + "px"
				}).show("fast");		
		}).mouseout(function(){
			this.title = this.myTitle;
			$("#tooltip").remove();
		}).mousemove(function(e){
			$("#tooltip").css({
				"top":(e.pageY+10) + "px",
				"left":(e.pageX+10) + "px"
				});	
		});
	</script>
</body>
</html>

