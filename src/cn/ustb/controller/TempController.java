package cn.ustb.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.db.Session;
import cn.ustb.bean.Users;
import cn.ustb.service.UsersService;
import cn.ustb.service.UsersServiceImpl;

/**
 * Servlet implementation class TempController
 */
@WebServlet("/TempController.do")
public class TempController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users userInfo =(Users)request.getSession().getAttribute("users");
        //attribute.getClass()
        if (userInfo!=null) {System.out.println(userInfo);}
		if (userInfo!=null) {
			request.setAttribute("users", userInfo);
			request.getRequestDispatcher("Member-xiumi.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
