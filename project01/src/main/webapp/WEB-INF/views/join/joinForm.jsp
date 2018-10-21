<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common1.jspf" %>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/center.css" />">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/views/common2.jspf" %>
<title>회원가입</title>
<script type="text/javascript">
function validate(){
	
	var id = $('#id').val();
	var name = $('#name').val();
	var password = $('#password').val();
	var passwordConf = $('#passwordConf').val();
	var email = $('#email').val();
	
	if(id == null || id == '') {
		alert('아이디를 입력하세요.');
		$('#id').focus();
		throw '';
	} else if(password == null || password == '') {
		alert('비밀번호를 입력하세요.');
		$('#password').focus();
		throw '';
	} else if(passwordConf == null || passwordConf == '') {
		alert('비밀번호 확인을 입력하세요.');
		$('#passwordConf').focus();
		throw '';
	} else if(name == null || name == '') {
		alert('이름을 입력하세요.');
		$('#name').focus();
		throw '';
	} else if(email == null || email == '') {
		alert('이메일을 입력하세요.');
		$('#email').focus();
		throw '';
	}
}
$(function(){
	
	$('#join').click(function(){
		
		validate();
		
		var id = $('#id').val();
		var password = $('#password').val();
		var passwordConf = $('#passwordConf').val();
		var email = $('#email').val();
		var emailPattern = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
		var name = $('#name').val();
		
		if(id.length > 8) {
			alert('아이디는 8자 까지 가능합니다.');
			$('#id').val('');
			$('#id').focus();
		} else if(password.length < 8) {
			
			alert('비밀번호는 8자 이상이어야 합니다.');
			$('#password').focus();
			
		} else if(password != passwordConf) {
			
			alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
			$('#passwordConf').focus();
			
		} else if(!emailPattern.test(email)) {
			
			alert('이메일 형식이 아닙니다. 다시 확인해 주세요.');
			$('#email').focus();
			
		} else if(name.length > 10) {
			
			alert('이름은 10자를 넘을 수 없습니다.');
			$('#name').focus();
			
		}
		
		$('#joinForm').attr('action', '/ysm/join/join');
		$('#joinForm').attr('method', 'post');
		$('#joinForm').submit();
		
	});
	
	$('#id').keyup(function(){
		
		var id = $(this).val();
		var pattern = /^[a-zA-Z0-9]+$/;
		
		if(!pattern.test(id)) {
			alert('아이디는 영문과 숫자만 사용가능합니다.');
			$(this).val('');
			$(this).focus();
		}
	});
	
	$('#name').keyup(function(){
		
		var name = $('#name').val();
		var pattern = /^[가-힣a-zA-Z]+$/;
		
		if(!pattern.test(name)) {
			
			alert('이름은 한글과 영문만 사용가능합니다.');
			$(this).val('');
			$(this).focus();
			
		}
	});
	
});
</script>
</head>
<body>
<div class="layer">
  <div class="layer_inner">
    <div class="content">
    	<form id="joinForm">
	    	<label for="id">아이디: </label>
	    	<input id="id" name="id" type="text">
	    	<br><br>
	    	<label for="password">비밀번호: </label>
	    	<input id="password" name="password" type="password">
	    	<br>
	    	<label for="passwordConf">비밀번호 확인: </label>
	    	<input id="passwordConf" name="passwordConf" type="password">
	    	<br><br>
	    	<label for="name">이름: </label>
	    	<input id="name" name="name" type="text">
	    	<br><br>
	    	<label for="email">이메일: </label>
	    	<input id="email" name="email" type="text">
	   		<input type="button" id="join" value="회원가입">
    	</form>
    </div>
  </div>
</div>
</body>
</html>