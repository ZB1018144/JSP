package cn.cslg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.cslg.bean.LoginBean;
import util.DatabaseConnnection;


public class LoginDao {
	
	public LoginBean query(String username,String password) throws SQLException, ClassNotFoundException{//查询此用户，有则登录
		Connection con=null;
		PreparedStatement ps=null;//预编
		ResultSet rs=null;//结果
		try {
			con=(Connection) new DatabaseConnnection().getconnection();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql="select * from user where username=? and password=?";
		
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		rs=ps.executeQuery();
		LoginBean ub=null;
		
		
		while(rs.next()){
			ub = new LoginBean();
			ub.setUsername(rs.getString("username"));
			ub.setPassword(rs.getString("password"));
		}

		return ub;
	}
	
	public boolean insert(String username,String password) throws ClassNotFoundException, SQLException{
		
		Connection con=null;
		PreparedStatement ps=null;//预编
		int i =0;//结果
		try {
			con=(Connection) new DatabaseConnnection().getconnection();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql="insert into user(username,password)"+"values(?,?)";
		
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		i = ps.executeUpdate();
		ps.close();
		con.close();
		if(i>-1) {
			return true;
		}
		else
			return false;
	}

}
