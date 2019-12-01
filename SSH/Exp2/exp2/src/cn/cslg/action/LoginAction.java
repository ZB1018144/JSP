package cn.cslg.action;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionSupport;

import cn.cslg.dao.LoginDao;
import cn.cslg.dao.UserDao;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	private String age;
	private String sex;
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
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String login() throws ClassNotFoundException, SQLException{
		  LoginDao lb=new LoginDao();
		    if(lb.query(username, password) != null){
		return SUCCESS;
		    }
		    else {
		    	return "error";
		    }
		 
	}
	public String regist(){
		return SUCCESS;
	}
	
}
