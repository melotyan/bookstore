<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<title>书单详细信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css'>-->
<!--image slider-->
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script> 
<script src="./js/jquery-slider.js" type="text/javascript"></script>
<script src="./js/easyResponsiveTabs.js" type="text/javascript"></script>
<link href="./css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="./css/global.css">
<script src="./js/slides.min.jquery.js"></script>
<script>
		$(function(){
			$('#products').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				effect: 'slide, fade',
				crossfade: true,
				slideSpeed: 350,
				fadeSpeed: 500,
				generateNextPrev: true,
				generatePagination: false
			});
		});
	</script>
</head>
<body>
<%@include file="/head.jsp"%>
<div class="main">
<div class="details">
				  <div class="product-details">				
					<div class="images_3_of_2">
						<div id="container">
						   <div id="products_example">
							<div id="products">
								<div class="slides_container">
									<a href="#" target="_blank"><img src="./images/productslide-1.jpg" alt=" " /></a>
									<a href="#" target="_blank"><img src="./images/productslide-2.jpg" alt=" " /></a>
									<a href="#" target="_blank"><img src="./images/productslide-3.jpg" alt=" " /></a>	
								</div>
								<ul class="pagination">
									<li><a href="#" target="_blank"><img src="./images/productslide-1.jpg" alt=" " /></a></li>
									<li><a href="#" target="_blank"><img src="./images/productslide-2.jpg" alt=" " /></a></li>
									<li><a href="#" target="_blank"><img src="./images/productslide-3.jpg" alt=" " /></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="desc span_3_of_2">
					<h2>西方哲学史</h2>				
					<div class="price">
						<p>作者: <span>罗素.罗兰</span></p>
						<p>出版社: <span>远方出版社</span></p>	
						<p>库存量: <span>0</span> 件</p>	
						<p>价格: <span>$500</span>          原价: <span>$300</span> </p>
					</div>
					<div class="available">
						<p>配送方式</p>
					<ul>
						<li>地址:
							<select>
							<option>北京市</option>
						</select></li>
						<li>快递公司:<select>
							<option>圆通快递</option>
							<option>顺丰快递</option>
							<option>申通快递</option>
							<option>挂号运输</option>
						</select></li>
					</ul>
					</div>
					<div class="button"><span><a href="#">立即购买</a></span></div>						
					<div class="clear"></div>
				 <div class="wish-list">
				 	<ul>
				 		<li class="wish"><a href="#">增加到购物车</a></li>
				 	    <li class="compare"><a href="#">分享给他人</a></li>
				 	</ul>
				 </div>
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">	
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab">图书背景</li>
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab">图书评价</li>
					<div class="clear"></div>
				</ul>
				<div class="resp-tabs-container">
					<h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Details</h2><div class="product-desc resp-tab-content resp-tab-content-active" style="display:block" aria-labelledby="tab_item-0">
						<p>罗素（1872-1970），20世纪英国声誉卓著的思想家、哲学家、数学家。罗素一生所涉及的研究领域极其广泛，著述颇丰，其首要建树在数学和逻辑学领域，同时对西方哲学产生了深远影响。</p>
						<p>此外，他的研究还涉及道德、政治、教育、和平等方面。罗素的主要著作有：《西方哲学史》、《意义与真理的探究》、《数学原理》、《物的分析》、《心的分析》等。</p>
						</div>
			    </div>	

				<h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Product Reviews</h2><div class="review resp-tab-content" aria-labelledby="tab_item-2">
					<h4>您对这本书满意吗？</h4>
					 <ul>
					 	<li>价格 :<a href="#"><img src="./images/price-rating.png" alt=""></a></li>
					 	<li>质量:<a href="#"><img src="./images/value-rating.png" alt=""></a></li>
					 	<li>送货速度 :<a href="#"><img src="./images/quality-rating.png" alt=""></a></li>
					 </ul>
				  <div class="your-review">
				  	 <h3>请您附上宝贵的意见</h3>
				  	  <p></p>
				  	  <form>
					    	<div>
						    	<span><label>昵称<span class="red">*</span></label></span>
						    	<span><input type="text" value=""></span>
						    </div>
						    <div><span><label>标题<span class="red">*</span></label></span>
						    	<span><input type="text" value=""></span>
						    </div>						
						    <div>
						    	<span><label>评价内容<span class="red">*</span></label></span>
						    	<span><textarea> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="提交"></span>
						  </div>
					    </form>
				  	 </div>				
				</div>
			</div>
		 </div>
	    <script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
   </script>		
   <div class="content_bottom">
   	<div class="text-h1 top1 btm">
			<h2>其他您可能想要的</h2>
	  	</div>
 <div class="div2">
        <div id="mcts1">
        	<img src="./images/productslide-1.jpg" alt=""/>
            <img src="./images/productslide-2.jpg" alt="" />
            <img src="./images/productslide-3.jpg" alt="" />
        	<img src="./images/productslide-1.jpg" alt=""/>
            <img src="./images/productslide-2.jpg" alt="" />
            <img src="./images/productslide-3.jpg" alt="" />

        </div>
   		</div>

    	</div>

        </div>
<div class="sidebar">
<div class="s-main">
	<div class="s_hdr">
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
<div class="clear"></div>
</div>
</div>
<%@include file="/foot.jsp"%>
</body>
</html>