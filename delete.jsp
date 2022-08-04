<%@page import="test.BoardDao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	Connection conn = DBConnection.getConnection();
	String sql = "DELETE FORM simple_member WHERE id=?, pw=?, name=?, point=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
%>