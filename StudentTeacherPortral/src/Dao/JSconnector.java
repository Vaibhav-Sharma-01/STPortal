package Dao;
import java.sql.Connection;
import java.sql.DriverManager;

public class JSconnector {
	private static Connection con;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "toor");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
