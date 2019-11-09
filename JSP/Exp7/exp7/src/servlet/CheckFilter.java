package servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "check", urlPatterns = "/UserServlet")
public class CheckFilter implements Filter {
	private FilterConfig config;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		config = null;
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub

		// ��������������Ҫ�õ�request,response,session����
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;

		long time = System.currentTimeMillis();
		System.out.println("���˿�ʼ");
		System.out.println(time);

		// ȡ���û�����Ϣ
		String username = request.getParameter("username");
		System.out.println(username);
		if (username.startsWith("T")) {
			servletRequest.getRequestDispatcher("error.jsp").forward(servletRequest, servletResponse);
		} else {
			System.out.println(request.getContextPath());
			filterChain.doFilter(servletRequest, servletResponse);
			long atime = System.currentTimeMillis();
			System.out.println(time);
			System.out.println("���˽���");
			System.out.println("���󱻴���ʱ���ǣ�" + request.getContextPath() + "(" + (atime - time) + ")");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.config = filterConfig;
	}

}
