package cn.cslg.action;

import cn.cslg.bean.LoginBean;
import cn.cslg.dao.LoginDao;

public class LoginAction {

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
     LoginDao lb=new LoginDao();
    if(lb.query(username, password) != null)
{
        return "success";
}
else{
        return "error";
}
}
}
