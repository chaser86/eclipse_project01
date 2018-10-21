<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common1.jspf" %>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/center.css" />">
<%@ include file="/WEB-INF/views/common2.jspf" %>
	<title>Home</title>
<script type="text/javascript">
$(function(){
	
	$('#join').click(function(){
		location.href = "/ysm/join/joinForm";
	});
	
	$('#login').click(function(){
		alert('준비중입니다.');
	});
	
});
</script>
</head>
<body>
<div class="layer">
  <div class="layer_inner">
    <div class="content">
    	<h1>
			Hello world!  
		</h1>
		
		<P>  The time on the server is ${serverTime}. </P>
		<input type="button" id="join" value="회원가입">
		<input type="button" id="login" value="로그인">    
	</div>
  </div>
</div>
</body>
</html>
