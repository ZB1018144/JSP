package cn.cslg.dao;

import cn.cslg.bean.CarBean;
import cn.cslg.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarDao {

    public boolean insert(CarBean carbean) throws SQLException {// 新增
        Connection con = null;
        PreparedStatement ps = null;
        int i = 0;
        try {
            con = new DatabaseConnection().getconnection();
            String sql = "insert into car(brand,type,price)" + "values(?,?,?);";

            ps = con.prepareStatement(sql);
//			ps.setString(1, empbean.getId());
            ps.setString(1, carbean.getBrand());
            ps.setString(2, carbean.getType());
            ps.setString(3, carbean.getPrice());

            i = ps.executeUpdate();
            return i > 0 ? true : false;
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        ps.close();
        con.close();
        return false;
    }

    public boolean delete(String id) throws SQLException {// 删除
        Connection con = null;
        PreparedStatement ps = null;
        int i = 0;
        try {
            con = new DatabaseConnection().getconnection();
            String sql = "delete from car where id=?;";
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            i = ps.executeUpdate();
            return i > 0 ? true : false;

        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        ps.close();
        con.close();
        return false;
    }

    public boolean update(CarBean carbean) throws SQLException {// 更新
        Connection con = null;
        PreparedStatement ps = null;
        int i = 0;
        try {
            con = new DatabaseConnection().getconnection();
            String sql = "update car set brand=?,type=?,price=? where id=?";

            ps = con.prepareStatement(sql);

            ps.setString(1, carbean.getBrand());
            ps.setString(2, carbean.getType());
            ps.setString(3, carbean.getPrice());
            ps.setString(4, carbean.getId());

            i = ps.executeUpdate();
            return i > 0 ? true : false;
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        ps.close();
        con.close();
        return false;
    }

    public List<CarBean> query() throws SQLException {// 查询
        List<CarBean> list = new ArrayList<CarBean>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = new DatabaseConnection().getconnection();

        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String sql = "select * from car";

        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        CarBean ed = null;

        while (rs.next()) {
            ed = new CarBean();
            ed.setId(rs.getString("id"));
            ed.setBrand(rs.getString("brand"));
            ed.setType(rs.getString("type"));
            ed.setPrice(rs.getString("price"));
            list.add(ed);
        }
        ps.close();
        con.close();
        return list;
    }

    public CarBean selectCarById(String id) throws SQLException{  //根据ID进行查询
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con=new DatabaseConnection().getconnection();

        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String sql="select * from car where id=?";
        ps=con.prepareStatement(sql);
        ps.setString(1, id);
        rs=ps.executeQuery();
        CarBean rb=null;

        while(rs.next()){
            rb = new CarBean();
            rb.setId(rs.getString("id"));
            rb.setBrand(rs.getString("brand"));
            rb.setType(rs.getString("type"));
            rb.setPrice(rs.getString("price"));

        }

        return rb;
    }

}
