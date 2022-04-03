package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.Users;
import cn.ustb.service.UsersService;
import cn.ustb.service.UsersServiceImpl;

@WebServlet("/UserLoginController.do")
public class UserLoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userPhone = request.getParameter("userName");
		String userPass = request.getParameter("userPass");
		

		String captchaInput = request.getParameter("captchaInput");
		Object captchaCode = getServletContext().getAttribute("captchaCode");
		UsersService service = new UsersServiceImpl();
		Users users = service.getUsersByUserPhoneAndUserPass(userPhone, userPass);
		System.out.println(users);
		if (users == null || captchaCode.toString().equals(captchaInput) == false) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("users", users);
			request.getSession().setMaxInactiveInterval(9000);
			request.setAttribute("users", users);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
