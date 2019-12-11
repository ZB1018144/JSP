package cn.cslg.dao;

import java.util.List;

import javax.swing.JOptionPane;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import PO.UserInfoPO;
import addHibernateFile.HibernateSessionFactory;

public class UserDao {
	
	 private Session session;
	    private Transaction transaction;
	    private Query query;
	    HibernateSessionFactory getSession;
	    public UserDao(){
	    }
	    public String  saveInfo(UserInfoPO info){
	        String mess="error";
	        getSession=new HibernateSessionFactory();
	        session=HibernateSessionFactory.getSession();
	        try{
	            transaction=session.beginTransaction();
	            session.save(info);
	            transaction.commit();
	            mess="success";
	            return mess;
	        }catch(Exception e){
	            message("RegisterInfo.error:"+e);
	            e.printStackTrace();
	            return null;
	        }
	    }
	    public List queryInfo(String type,Object value){
	        getSession=new HibernateSessionFactory();
	        session=getSession.getSession();
	        try{
	            String hqlsql="from UserInfoPO as u where u.userName=?";
	            query=session.createQuery(hqlsql);
	            query.setParameter(0, value);
	            List list=query.list();
	            transaction=session.beginTransaction();
	            transaction.commit();
	            return list;
	        }catch(Exception e){
	            message("LoginRegisterInfo类中有异常，异常�?:"+e);
	            e.printStackTrace();
	            return null;
	        }
	    }
	    public void message(String mess){
	        int type=JOptionPane.YES_NO_OPTION;
	        String title="提示信息";
	        JOptionPane.showMessageDialog(null, mess, title, type);
	    }

}
