package cn.cslg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.cslg.bean.UserBean;
import util.DatabaseConnection;

public class UserDao {
	
	public UserBean query(String username,String password) throws SQLException, ClassNotFoundException{//��ѯ���û��������¼
		Connection con=null;
		PreparedStatement ps=null;//Ԥ��
		ResultSet rs=null;//���
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
		UserBean ub=null;
		
		
		while(rs.next()){
			ub = new UserBean();
			ub.setUsername(rs.getString("username"));
			ub.setPassword(rs.getString("password"));
		}

		return ub;
	}
	
	

}
