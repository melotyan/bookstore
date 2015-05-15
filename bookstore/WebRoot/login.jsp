<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
<script src="./js/jquery-1.7.2.min.js" type="text/javascript">
	</script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
							<li><h2>欢迎回来!</h2></li>
							<div class="clear"></div>
						</ul>
					</div>
					<div class="grid">
					 <div class="contact-form">
						<form action="loginAction" method="post">
							<div>
						    	<span><label class="contact-label">用户名</label></span>
						    	<span><input name="userId" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label class="contact-label">密码</label></span>
						    	<span><input name="password" type="password" class="textbox"></span>
						    </div>
						    <br/>
							<input type="submit" value="登陆"/>
							<input type="reset" value="重置" class="loginbutton"/>
						</form>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<%@include file="/foot.jsp"%>
</body>
</html>
