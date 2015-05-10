<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<div class="wrap">
<div class="header">
	<div class="logo">
		<a href="index.jsp"><img src="./images/logo.png" alt=""> </a>
	</div>
	<div class="header-right">
	<div class="contact-info">
		<ul>
			<li>您尚未登录</li>
			<li>帮助热线:123-45</li>
		</ul>
	</div>
	<div class="menu">
	 	<ul class="nav">
        <li class="active"><a href="index.jsp" title="Home">主页</a></li>
        <li><a href="user.jsp">个人中心</a></li>
  		<li><a href="contact.jsp">联系我们</a></li>
  		<li><a href="upload.jsp">进入后台</a></li>
  		<li><a href="">注销</a></li>
  		<div class="clear"></div>
      </ul>
	 </div>
	 </div>
	<div class="clear"></div>
</div>
<div class="hdr-btm">
<div class="hdr-btm-bg"></div>
<div class="hdr-btm-left">
	<div class="search">
	  <form>
		<input type="text" value="请输入关键字" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword here';}">
		<input type="submit" value="搜索">
	  </form>
	</div>
	<div class="drp-dwn">
			<select class="custom-select" id="select-1">
			<option selected="selected">种类</option>
			<option>古典文学</option>
			<option>人类历史</option>
			<option>社会哲学</option>
			<option>人与自然</option>
			<option>世界地理</option>
			<option>语言精品</option>
			<option>科学技术</option>
			<option>医学大全</option>
			<option>宇宙探秘</option>
			<option>五年高考</option>
			<option>悬疑推理</option>
			<option>世界名著</option>
			<option>旅游杂志</option>
			<option>计算机科学</option>
		</select>
	</div>
	<div class="txt-right">
		<h3><a href="">搜索商品</a></h3>
	</div>
	<div class="clear"></div>
</div>
</div>