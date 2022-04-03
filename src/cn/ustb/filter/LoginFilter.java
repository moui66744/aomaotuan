package cn.ustb.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpServer;

/*
 * @WebFilter(urlPatterns)
 * urlPatterns: ����Ҫ���ص������·��
 * 	/*���������е�����
 * 	*.jsp���������з���jsp������
 * 	/admin/*���������з���admin�ļ����е���������
 */
@WebFilter("/admin/*")
public class LoginFilter implements Filter {
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	//�������ص����󶼻ᱻdoFilter����
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;
		Object admins = httpServletRequest.getSession().getAttribute("admins");
		if (admins == null) {
			httpServletResponse.sendRedirect(request.getServletContext().getContextPath() + "/adminlogin.jsp");
		} else {
			chain.doFilter(request, response);
		}
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
