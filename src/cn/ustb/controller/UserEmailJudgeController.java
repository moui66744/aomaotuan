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
		// ��ȡsession�е���֤��
		String sessionCode = (String) req.getSession().getAttribute("code");
		System.out.println(sessionCode);
		
		if(sessionCode != null) {
			//  ��ȡҳ���ύ����֤��
			String inputCode = req.getParameter("code");
			System.out.println("ҳ���ύ����֤��:" + inputCode);
			if (sessionCode.toLowerCase().equals(inputCode.toLowerCase())) {
				String username = req.getParameter("username");
				String password = req.getParameter("password");
				System.out.println("ҳ���ύ:" + username+password);
				//  ��֤�ɹ�����ת�ɹ�ҳ��
				//req.setAttribute("username", username);
				
				req.getRequestDispatcher("/Member-xiumixiugai.jsp").forward(req, resp);
			}else {
				//  ��֤ʧ��
				req.getRequestDispatcher("/Member-xiumiemail.jsp").forward(req, resp);
			}
		}
		else {
			//  ��֤ʧ��
			req.getRequestDispatcher("/Member-xiumiemail.jsp").forward(req, resp);
		}
		//  �Ƴ�session�е���֤��
		req.removeAttribute("code");
	}
}


