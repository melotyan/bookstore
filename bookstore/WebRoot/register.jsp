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

<title>用户注册</title>

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
						<li><h2>欢迎加入!</h2></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="grid">
					<div class="contact-form">
						<form action="registerAction" method="post">
							<div>
						    	<label class="contact-label">用户名<strong style='color:#f00;' class='stron'>*</strong> </label>
						    	<input name="userId" type="text" class="textbox required" id="re_name">
						    </div>
						    <div>
						    	<label class="contact-label">密码<strong style='color:#f00;' class='stron'>*</strong></label>
						    	<input name="password" type="password" class="textbox required" id="re_password">
						    </div>
						    <div>
						    	<label class="contact-label">再次输入密码<strong style='color:#f00;' class='stron'>*</strong></label>
						    	<input name="repassword" type="password" class="textbox required" id="re_repass">
						    </div>
						    <div>
						    	<label class="contact-label">昵称<strong style='color:#f00;' class='stron'>*</strong></label>
						    	<input name="name" type="text" class="textbox required" id="re_nick">
						    	
						    </div>
						    <div>
						    	<label class="contact-label">电话<strong style='color:#f00;' class='stron'>*</strong></label>
						    	<input name="phone" type="text" class="textbox required" id="re_tele">
						    	
						    </div>
						    <div>
						    	<label class="contact-label">住址<strong style='color:#f00;' class='stron'>*</strong></label>
						    	<input name="address" type="text" class="textbox required" id="re_addr">
						    	
						    </div>
						    <br/>
							<input type="submit" value="注册" id="register"/> 
							<input type="reset" value="重置" class="loginbutton"/>
						</form>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<br /> <br />
			<%@include file="/foot.jsp"%>
			<script>

			$("form :input").blur(function(){
				var $sib = $(this).siblings();
				$sib.find(".formtips").remove();
				if(this.value == ""){
					var $errorMsg=$("<strong style='color:#f00;' class='formtips error'>      该项不能为空！</strong>");
					$sib.append($errorMsg);
				}
				else if($(this).is("#re_name")){
					
				}
				else if($(this).is("#re_password")){
					if(this.value.length<6){
						var $errorMsg=$("<strong style='color:#f00;' class='formtips error'>      密码不能小于6位！</strong>");
						$sib.append($errorMsg);
					}
				}
				else if($(this).is("#re_repass")){
					if($(this).val()!=$("#re_password").val()){
						var $errorMsg=$("<strong style='color:#f00;' class='formtips error error2'>      与之前密码不一致！</strong>");
						$sib.append($errorMsg);
					}
				}
				else if($(this).is("#re_tele")){
					var pattern = /^1[3,5,8,6]\d{9}$/;
					if(!pattern.test(this.value)){
						var $errorMsg=$("<strong style='color:#f00;' class='formtips error'>      请输入正确的手机号码！</strong>");
						$sib.append($errorMsg);
					}
				}
			}).keyup(function(){
				$(this).triggerHandler("blur");
			}).focus(function(){
				$(this).triggerHandler("blur");
			});
			$('#register').click(function(){
				$("form .required:input ").trigger('blur');
				var numError = $('form .error').length;
				if(numError){
					return false;
				}
				else{
							$.ajax({
								type : "POST",
								url : "registerAction?userId="
										+ $("#re_name").val() + "&password="
										+ $("#re_password").val() + "&name=" 
										+ $("#re_nick").val() + "&phone="
										+ $("#re_tele").val() + "&address="
										+ $("#re_addr").val(),
								dataType: "html",
								success : function(data) {
									
									var x = $("<div></div>");
									x.html(data);
									if(x.find("title").text()=="欢迎界面")
										window.location.href="welcome.jsp";
									else{
										var $sib = $("#re_name").siblings();
										$sib.find(".formtips").remove();
										var $errorMsg=$("<strong style='color:#f00;' class='formtips error'>      该用户名已被注册！</strong>");
										$sib.append($errorMsg);
									}	
								}
							});
							return false;
				}
			});				
			</script>
</body>
</html>