package service;

import java.sql.SQLException;

import dao.UserDao;

public class UserService {
	
	public boolean login(String name,String password) throws SQLException {
		UserDao ud = new UserDao();
		if(ud.query(name, password)==null)
			return false;
			else
				return true;
		
	}

}
