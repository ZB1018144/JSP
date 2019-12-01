package cn.cslg.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.cslg.dao.UserDao;

public class IocAction extends ActionSupport implements ServletRequestAware{

	private String username;
	private String password;
	private HttpServletRequest request;
	
	
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

	 //必须实现该方法，该方法是接口中的方法
	public void setServletRequest(HttpServletRequest hsr) {
		// TODO Auto-generated method stub
		 request =hsr;
	}

	   public String execute() throws Exception{
		   UserDao lb=new UserDao();
//		   System.out.print(lb.query(username, password));
		    if(lb.query(username, password) != null){
		    	  //通过request对象获取session对象
	             HttpSession session=request.getSession();
	             //把登录名传入session中
	             session.setAttribute("name", this.getUsername());
	             return "success";
	}
	else{
		        return "error";
	}
	    }
}
