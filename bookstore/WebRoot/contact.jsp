<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>联系我们</title>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="./js/jquery-1.7.2.min.js" type="text/javascript">
	</script>
</head>
<body>
<%@include file="/head.jsp"%>
<div class="main">
<div class="section group">				
				<div class="col span_1_of_2">
					<div class="contact_info">
			    	 	<h3>面向领域实践组</h3>
			    	 		<div class="map">
					   			<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=""></iframe><br><small><a href=”“ style="color: rgba(180, 192, 21, 0.71);;text-align:left;font-size:12px">查看大图</a></small>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h3>小组信息：</h3>
						<p> </p>
						<p>小组成员：</p>
						<p>严浩  陈诺   杨璨</p>
						<p>温文  王秋帆  王萌</p>
				   		<p>联系电话:XXX XXXX XXXX</p>
				 	 	<p>Email: <span>XXX@qq.com</span></p>
				   		<p>其他方式:<span>新浪微博</span>, <span>推特</span></p>
				   </div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="contact-form">
				  	<h3>联系我们</h3>
					       <form method="post" action="contact-post.jsp">
					    	<div>
						    	<span><label>姓名</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input name="userEmail" type="text" class="textbox"></span>
						    </div>
						    <div>
						     	<span><label>手机号</label></span>
						    	<span><input name="userPhone" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>内容</label></span>
						    	<span><textarea name="userMsg"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="提交"></span>
						  </div>
					    </form>

				    </div>
  				</div>				
		  </div>
<div class="clear"></div>
</div>
</div>
<div class="footer-bg">
<div class="wrap">
<div class="footer">
	<div class="f_nav">
		<ul>
			<li><a href="#">关于我们</a></li>
			<li><a href="#">这里</a></li>
			<li><a href="#">是</a></li>
			<li><a href="#">三味</a></li>
			<li><a href="#">书屋</a></li>
			<li><a href="#">By</a></li>
			<li><a href="#">xxx</a></li>
			<li><a href="#">制作</a></li>
		</ul>
	</div>
	<div class="footer1">
		<p>感谢你的参观 | 设计者：&nbsp; <a href="http://w3layouts.com/"> XXXXXX</a></p>
	</div>
</div>
</div>
</div>
</body>
<script>
	var $title_cl = $("ul.nav li:eq(2)");
	$(document).ready(function(){
		$title_cl.addClass("active").siblings().removeClass("active");
	});
</script>
</html>