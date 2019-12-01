package cn.cslg.action;

import cn.cslg.dao.LoginDao;

public class RegisterAction {

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

	public String execute() throws Exception {
		if (username.isEmpty() || password.isEmpty()) {
			return "error";
		} else {
			LoginDao lb = new LoginDao();
			if (lb.insert(username, password, age, sex)) {
				return "success";
			} else {
				return "error";
			}
		}
	}
}
