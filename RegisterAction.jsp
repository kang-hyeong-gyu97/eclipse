<%@page import="test.BoardDao.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="test.BoardDao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwStr = request.getParameter("pw");
	int pw = Integer.parseInt(pwStr);
	String name = request.getParameter("name");
	
	Connection conn = DBConnection.getConnection();
	String sql = "INSERT INTO simple_member(id, pw, name) values(?,?,?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setInt(2, pw);
	pstmt.setString(3, name);
	pstmt.executeUpdate();
%>
<script>
alert("가입되었습니다. 로그인 해주세요.");
location.href="Login.jsp";
	
</script>