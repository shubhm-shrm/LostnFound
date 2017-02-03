package database;
import java.sql.*;
public class DatabaseConnection {

	 private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	 private static final String DB_URL = "jdbc:mysql://localhost:3306/find";
	 private static final String USER = "root";
	 private static final String PASS = "*******";

	 private static Connection conn = null;
	 
	   public static Connection connection() {
		   try{
		      Class.forName(JDBC_DRIVER);
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		   }catch(SQLException se1){                      //Handle errors for JDBC
	
		      se1.printStackTrace();
	
		   }catch(Exception e){                            //Handle errors for Class.forName
	
		      e.printStackTrace(); }
		   return conn;
		}
	   
	   
	   public static void finish()
	   {
		   try{
			   if(conn!=null)
		            conn.close();
			  }catch(SQLException se3){
		         se3.printStackTrace();
		      }
	   }
}
