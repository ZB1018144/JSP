package cn.cslg.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharsetEncodingFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        chain.doFilter(req,resp);
        resp.setContentType("text/html;charset=utf-8");
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
