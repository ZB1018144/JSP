package cn.cslg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.cslg.bean.LoginBean;
import cn.cslg.bean.UserBean;
import util.DatabaseConnection;

public class LoginDao {
	
	public LoginBean query(String username,String password) throws SQLException, ClassNotFoundException{//查询此用户，有则登录
		Connection con=null;
		PreparedStatement ps=null;//预编
		ResultSet rs=null;//结果
		try {
			con=(Connection) new DatabaseConnection().getconnection();
			
			
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
	
public boolean insert(String username,String password,String age,String sex) throws ClassNotFoundException, SQLException{
		
		Connection con=null;
		PreparedStatement ps=null;//预编
		int i =0;//结果
		try {
			con=(Connection) new DatabaseConnection().getconnection();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql="insert into user(username,password,age,sex)"+"values(?,?,?,?)";
		
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		ps.setString(3, age);
		ps.setString(4, sex);
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
