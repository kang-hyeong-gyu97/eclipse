<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wi , .btn{
		width:200px;
	}
	.pa{
		padding:2px;
	}
</style>
</head>
<body>
<h1>회원가입</h1>
	<form action = "RegisterAction.jsp">
		ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="id"> <br>
		PW:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password" name="pw"><br>
		NAME:&nbsp<input type ="text" name="name"><br>
		<input type="submit" value="작성완료" class="wi"> 
	</form>
</body>
</html>