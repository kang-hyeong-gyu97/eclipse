package test.BoardDao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {
	public static Connection getConnection(){
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.1.14:1521:xe";
		String dbId = "test0715";
		String dbPw = "1234";
		Connection conn = null;
		try {
			
			Class.forName(driver);
		conn = DriverManager.getConnection(url, dbId, dbPw);
			 
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
}





