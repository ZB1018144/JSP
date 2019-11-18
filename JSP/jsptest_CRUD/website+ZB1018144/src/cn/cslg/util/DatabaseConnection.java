package cn.cslg.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    String Driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/db_zb1018144?useUnicode=true&characterEncoding=utf-8";
    String username="root";
    String pas="";
    private static Connection con;
    public DatabaseConnection() throws ClassNotFoundException, SQLException {
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
        DatabaseConnection dc = new DatabaseConnection();
        if(con==null){
            System.out.print("con fail!");

        }
        else {
            System.out.print("con success!");
        }
    }


}
