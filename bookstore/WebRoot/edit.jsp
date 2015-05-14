<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>My JSP 'error.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script Language="JavaScript" Type="text/javascript">
	function validateForm(frmUpload) {

		//检查是否提交了上传文件否弹出提示不需要这一功能的删除即可   

		if (document.all.file.value == "")

		{

			alert("没有选择上传的文件！");

			frmUpload.uploadFile.focus();

			return false;

		}

		//截取提交上传文件的扩展名  

		var ext = frmUpload.file.value.match(/^(.*)(\.)(.{1,8})$/)[3];

		ext = ext.toLowerCase(); //设置允许上传文件的扩展名           

		if (ext == "jpg" || ext == "gif" || ext == "png" || ext== "tmp") {
			frmUpload.fileType.value = "." + ext;
			return true;

		} else {

			alert("只允许上传 .jpg或gif 或png文件，请重新选择需要上传的文件！");

			return false;

		}

	}
</script>
</head>

<body>
<c:if test="${sessionScope.user.id eq 'admin'}">
	<form name="frmUpload" action="editBooksAction" method="post" enctype="multipart/form-data"
		onsubmit="return validateForm(this)" >
		<table class="contact-form">

			<tr>
				<td>book id</td>
				<td><input type="number" name="bookId" /></td>
			</tr>

			<tr>
				<td>image</td>
				<td><input type="file" name="file" /></td>
				
			</tr>
		</table>
		<input type="hidden"  name="fileType"/>
		<input type="submit" value="submit" />
	</form>
	<a href="listBooksAction">点我回主页</a>
	</c:if>
</body>
</html>
