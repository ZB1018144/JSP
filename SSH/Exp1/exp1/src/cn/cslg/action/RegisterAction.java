package cn.cslg.action;

import cn.cslg.dao.LoginDao;

public class RegisterAction {

	
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception{
		if(username.isEmpty()||password.isEmpty()) {
			return "error";
		}
		else {
	     LoginDao lb= new LoginDao();
	    if(lb.insert(username,password))
	{
	        return "success";
	}
	else{
	        return "error";
	}
	}
	}
	
}
