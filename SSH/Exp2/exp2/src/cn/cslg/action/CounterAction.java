package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;

public class CounterAction {
	 private static int count = 0;

	    public int getCount() {
	        return count;
	    }

	    public void setCount(int count) {
	        this.count = count;
	    }

	    public CounterAction(int count) {
	        this.count = count;
	    }

	    public CounterAction() {
	    }

	    public String execute() throws Exception{
	        ActionContext ac = ActionContext.getContext();
	        ac.getSession().put("count",++count);
	        return "success";
	    }
}
