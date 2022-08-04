<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$(".btn").click(function(){
			location.href="Register.jsp";
		});
	});
</script>
<style>
	.wi , .btn{
		width:175px;
	}
	.pa{
		padding:2px;
	}
</style>
</head>
<body>
<h1>로그인</h1>
<div class="pa">
	<form action = "LoginAction.jsp">
		ID:<input type="text" name="id"><br>
		PW:<input type="password" name="pw"><br>
		<input type="submit" value="로그인" class="wi"><br>
		<button type="button" class="btn">회원가입</button>
	</form>
	</div>
</body>
</html>