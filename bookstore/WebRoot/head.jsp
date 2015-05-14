<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="wrap">
<div class="header">
	<div class="logo">
		<a href="listBooksAction"><img src="./images/logo.png" alt=""> </a>
	</div>
	<div class="header-right">
	<div class="contact-info">
		<ul>
			<li>
			<c:choose>
				<c:when test="${empty sessionScope.user}">您尚示登录</c:when>
				<c:otherwise>用户: ${sessionScope.user.id }</c:otherwise>
			</c:choose>
			</li>
			<li>帮助热线:123-45</li>
		</ul>
	</div>
	<div class="menu">
	 	<ul class="nav">
        <li class="active"><a href="listBooksAction?" title="Home">主页</a></li>
        <c:if test="${!empty sessionScope.user}"><li><a href="user.jsp">个人中心</a></li></c:if>
  		<li><a href="contact.jsp">联系我们</a></li>
  		<c:if test="${sessionScope.user.id eq 'admin'}"><li><a href="upload.jsp">进入后台</a></li></c:if>
  		<c:if test="${!empty sessionScope.user}"><li><a href="logoutAction">注销</a></li></c:if>
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