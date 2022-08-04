package test.BoardDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import test.Board.Dto.BoardDto;

public class BoardDao {
 public boolean getLogin(String id, String pw) {
	 Connection conn = DBConnection.getConnection();
	 String sql = "SELECT count(*) FROM simple_member where id=? and pw=?";
		int cnt = 0;
		try{
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return cnt==1;
 }
 
 public ArrayList<BoardDto> getBoardList()throws Exception{
	 Connection conn = DBConnection.getConnection();
	 
	 String sql = "SELECT * FROM simple_member";
	 
	 ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	 
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery();
	 while(rs.next()) {
		 String id = rs.getString("id");
		 String pw = rs.getString("pw");
		 String name = rs.getString("name");
		 String point = rs.getString("point");
		 BoardDto dto = new BoardDto(id, pw, name, point);
		 list.add(dto);
	 	}
	 return list;
 	}
}
