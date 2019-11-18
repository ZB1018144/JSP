package cn.cslg.servlet;

import cn.cslg.bean.CarBean;
import cn.cslg.dao.CarDao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ShowServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
       request.setCharacterEncoding("utf-8");
        CarDao dao = new CarDao();
        List<CarBean> list = null;
        try {
            list = dao.query();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("list",list);
        request.getRequestDispatcher("/car.jsp").forward(request,response);
    }
}
