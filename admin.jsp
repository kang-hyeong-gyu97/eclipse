<%@page import="test.Board.Dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.BoardDao.BoardDao"%>
<%@page import="test.BoardDao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<style>
	table{
		border-collapse: collapse;
	}
	th, tr, td{
		padding: 10px;
		border: 1px solid grey;
		
	}
</style>
<script>
	$(function(){
		$(".tbtn").click(function(){
			location.href="Update.jsp";
		});
		$(".dbtn").click(function(){
			location.href="delete.jsp";
		});
		$(".lbtn").click(function(){
			location.href="Login.jsp";
		});
	});
	
</script>
</head>
<style>
	body{
		width:500px;
	}
	.lbtn{
		width: 150px;
		float:right;
	}
</style>
<body>
<h1>회원관리</h1>
	<%
		Connection conn = DBConnection.getConnection();
		BoardDao bDao = new BoardDao();
		ArrayList<BoardDto> list = bDao.getBoardList();
	
	%>
	<p><button type="button" class="lbtn">로그인</button></p>
	
	
	<table>
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>NAME</th>
			<th>POINT</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<%
			for(BoardDto dto : list){
		%>
		<tr>
			<td><%=dto.getId() %></td>
			<td><%=dto.getPw() %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getPoint() %></td>
			<td><button type="button" class="tbtn">수정</button></td>
			<td><button type="button" class="dbtn">삭제</button></td>
		</tr>
		<%
			}
		%>
	</table>
	
	<h1>스케줄러 관리</h1>
	<div>
	<button type="button" class="sbtn">스케줄러(20초마다 포인트 1 증가) 실행시작</button>
	<button type="button" class="sdbtn">스케줄러 실행 종료</button>
	</div>

</body>
</html>