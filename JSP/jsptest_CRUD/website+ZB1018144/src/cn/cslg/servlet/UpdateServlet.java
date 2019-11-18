package cn.cslg.servlet;

import cn.cslg.bean.CarBean;
import cn.cslg.dao.CarDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("context-type", "text/html;charset=utf-8");
        String id = request.getParameter("id");
        String brand = request.getParameter("brand");
        String type = request.getParameter("type");
        String price = request.getParameter("price");
        CarBean ed = new CarBean();
        ed.setId(id);
        ed.setBrand(brand);
        ed.setType(type);
        ed.setPrice(price);

        CarDao dao = new CarDao();
        try {
            dao.update(ed);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        if(id != null && !id.equals("")){
            CarDao dao = new CarDao();
            try {
                CarBean eb = dao.selectCarById(id);
                request.setAttribute("item",eb);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        request.getRequestDispatcher("/alter.jsp").forward(request, response);

    }
}
