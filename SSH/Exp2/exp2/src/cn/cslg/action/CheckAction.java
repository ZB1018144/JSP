package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckAction extends ActionSupport{
	 private String name;
	    private String password;
	    private String tip;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getTip() {
			return tip;
		}
		public void setTip(String tip) {
			this.tip = tip;
		}
		public CheckAction(String name, String password, String tip) {
			super();
			this.name = name;
			this.password = password;
			this.tip = tip;
		}
		public CheckAction() {
			super();
			// TODO Auto-generated constructor stub
		}
	    
		 public String execute(){
		        ActionContext ac =ActionContext.getContext();
		        if(getName().equals("QQ")&&getPassword().equals("123")){
		            ac.getSession().put("username",getName());
		            this.tip = getText("login.success",new String[]{this.name});
		            return "success";
		        }else {
		            return "error";
		        }
		    }
	
	

}
