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

		// 获得在下面代码中要用的request,response,session对象
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;

		long time = System.currentTimeMillis();
		System.out.println("过滤开始");
		System.out.println(time);

		// 取得用户名信息
		String username = request.getParameter("username");
		System.out.println(username);
		if (username.startsWith("T")) {
			servletRequest.getRequestDispatcher("error.jsp").forward(servletRequest, servletResponse);
		} else {
			System.out.println(request.getContextPath());
			filterChain.doFilter(servletRequest, servletResponse);
			long atime = System.currentTimeMillis();
			System.out.println(time);
			System.out.println("过滤结束");
			System.out.println("请求被处理时间是：" + request.getContextPath() + "(" + (atime - time) + ")");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.config = filterConfig;
	}

}
