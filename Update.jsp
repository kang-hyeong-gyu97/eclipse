<%@page import="test.BoardDao.DBConnection"%>
<%@page import="test.Board.Dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.BoardDao.BoardDao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원관리 - 수정관리자</h1>
<form action = "adminAction.jsp">
	ID:<input type="readonly" name="id"><br>
	PW:<input type="password" name="pw"><br>
	NAME:<input type="text" name="name"><br>
	POINT:<input type="text" name="point"><br>
	<input type="submit" value="작성완료">
</form>
</body>
</html>