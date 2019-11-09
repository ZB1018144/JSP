package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Triangle;

/**
 * Servlet implementation class TriangleServlet
 */
@WebServlet("/TriangleServlet")
public class TriangleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TriangleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String s1 = request.getParameter("s1");
		String s2 = request.getParameter("s2");
		String s3 = request.getParameter("s3");
		
//		�ж��������Ƿ�Ϊ����0
		double num1 = 0;
		double num2 = 0;
		double num3 = 0;
		try {
		num1 = Double.parseDouble(s1);
		num2 = Double.parseDouble(s2);
		num3 = Double.parseDouble(s3);
		} catch (NumberFormatException e) {
			session.setAttribute("error", "����������ߵĳ��ȱ���Ϊ����0����ֵ");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
			
		}
		if(num1<=0||num2<=0||num3<=0){
			session.setAttribute("error", "����������ߵĳ��ȱ���Ϊ����0����ֵ");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
//		У���������Ƿ������������
		
		Triangle tr = new Triangle();
		boolean isTriangle = tr.isTriangle(num1, num2, num3);
		if(!isTriangle) {
			session.setAttribute("error", "����������ߵĳ��Ȳ�����������Σ������κ�������֮�ʹ��ڵ�����");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
//		�������
		double area = tr.doArea(num1, num2, num3);
		session.setAttribute("area", area);
		response.sendRedirect(request.getContextPath() + "/show.jsp");

}
}
