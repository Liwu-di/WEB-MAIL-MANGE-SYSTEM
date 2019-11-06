<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文件</title>
</head>
<body>
	<!-- enctype="multipart/form-data"不对字符编码。在使用包含文件上传控件的表单时，必须使用该值。 -->
	 <s:form action="upload" method="post" enctype="multipart/form-data">
 	<s:textfield name="title" label="请选择文件"/>
 	<s:file name="file" label="选择文件"/>
 	<s:submit value="上传"/>
 </s:form>

</body>
</html>