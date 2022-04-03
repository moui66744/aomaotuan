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
import cn.ustb.util.ChangePassbyEmaiUtil;

/**
 * Servlet implementation class UserEmailJudgeController
 */
@WebServlet("/UserEmailJudgeController.do")
public class UserEmailJudgeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(1);
//		System.out.println(1);
//		String userName = request.getParameter("userName");
//		String userPass = request.getParameter("userPass"); 
//		System.out.println(2);
//		UsersService service = new UsersServiceImpl();
//		Users users = service.getUsersByUserNameAndUserPass(userName, userPass);
//		System.out.println(userName);
//		System.out.println(userPass);
//		System.out.println(users);
//		System.out.println(3);
//		if (users == null) {
//			System.out.println(4);
//			request.getRequestDispatcher("login.html").forward(request, response);
//		} else {
//			request.setAttribute("users", users);
//			request.getRequestDispatcher("index.html").forward(request, response);
//		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println(2);
		// 获取session中的验证码
		String sessionCode = (String) req.getSession().getAttribute("code");
		System.out.println(sessionCode);
		
		if(sessionCode != null) {
			//  获取页面提交的验证码
			String inputCode = req.getParameter("code");
			System.out.println("页面提交的验证码:" + inputCode);
			if (sessionCode.toLowerCase().equals(inputCode.toLowerCase())) {
				String username = req.getParameter("username");
				String password = req.getParameter("password");
				System.out.println("页面提交:" + username+password);
				//  验证成功，跳转成功页面
				//req.setAttribute("username", username);
				
				req.getRequestDispatcher("/Member-xiumixiugai.jsp").forward(req, resp);
			}else {
				//  验证失败
				req.getRequestDispatcher("/Member-xiumiemail.jsp").forward(req, resp);
			}
		}
		else {
			//  验证失败
			req.getRequestDispatcher("/Member-xiumiemail.jsp").forward(req, resp);
		}
		//  移除session中的验证码
		req.removeAttribute("code");
	}
}


