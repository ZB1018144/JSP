package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnnection {
	
	String Driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/login"; 
    String username="root";
    String pas="";
    private static Connection con;
	public DatabaseConnnection() throws ClassNotFoundException, SQLException {
		Class.forName(Driver);
		con=DriverManager.getConnection(url, username, pas);
	}
    
	public Connection  getconnection(){
		return this.con;
		
	}
	
	public void close(){
		
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		}
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		DatabaseConnnection dc = new DatabaseConnnection();
		if(con==null){
			System.out.print("con fail!");
			
		}
		else {
			System.out.print("con success!");
		}
	}


}
