<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文件</title>
</head>
<body>
	<!-- enctype="multipart/form-data"不对字符编码。在使用包含文件上传控件的表单时，必须使用该值。 -->
	<form action="upload" method="post" enctype="multipart/form-data">
		<input name="f" type="file"/>
		<input name="btnUpload" type="submit" value="上传"/>
	</form>
</body>
</html>