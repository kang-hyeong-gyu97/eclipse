<%@page import="test.BoardDao.BoardDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	BoardDao bDao = new BoardDao();
	boolean result = bDao.getLogin(id, pw);
	
	
	if(result){
		session.setAttribute("loginId", id);
		if(id.equals("admin")){
			%>
			<script>
				location.href="admin.jsp";
			</script>
			<%
		
		}else{
			%>
			String id = request.setParameter("id");
			<script>
			
			location.href = "main.jsp";
			</script>
			
			<%
			
			
		}
		
	}else{
		%>
		<script>
			alert("아이디/비밀번호를 다시 확인하세요.");
			location.href="Login.jsp";
		</script>
		<%
	}
	
	
%>