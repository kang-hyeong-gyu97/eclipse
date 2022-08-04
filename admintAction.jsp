<%@page import="test.BoardDao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String point = request.getParameter("point");
	
	
	Connection conn = DBConnection.getConnection();
	String sql = "UPDATE set id=?, pw=?, name=?, point=? where rno =?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, point);
	pstmt.executeUpdate();
	
%>
<script>
	alert("수정되었습니다.");
	location.href="admin.jsp";
</script>