package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidPooledConnection;

import bean.UserBean;
import util.DatabaseConnnection;
import util.DbPoolConnection;

public class UserDao {
	
	public UserBean query(String username,String password) throws SQLException{//查询此用户，有则登录
//		Connection con=null;
		
		DbPoolConnection dbcon =DbPoolConnection.getInstance();
		DruidPooledConnection con = dbcon.getConnection();
		
		PreparedStatement ps=null;//预编
		ResultSet rs=null;//结果
		try {
//			con=(Connection) new DatabaseConnnection().getconnection();
			
			con = dbcon.getConnection();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql="select * from user where username=? and password=?";
		
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		rs=ps.executeQuery();
		UserBean ub=null;
		
		
		while(rs.next()){
			ub = new UserBean();
			ub.setUsername(rs.getString("username"));
			ub.setPassword(rs.getString("password"));
			
			
		}

		return ub;
	}

}
