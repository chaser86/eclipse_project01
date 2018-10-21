<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/fileUpload" method="post" enctype="multipart/form-data">
		<input type="file" name="file">
		<input type="submit" value="제출">
	</form>
</body>
</html>