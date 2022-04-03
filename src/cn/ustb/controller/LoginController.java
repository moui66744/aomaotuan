package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Admins;
import cn.ustb.mapper.AdminsMapper;
import cn.ustb.service.AdminsService;
import cn.ustb.service.AdminsServiceImpl;
import cn.ustb.util.MybatisUtil;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController.do")
public class LoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adminName = request.getParameter("adminName");
		String adminPass = request.getParameter("adminPass");
		AdminsService service = new AdminsServiceImpl();
		Admins admins = service.getAdminByAdminNameAndAdminPass(adminName, adminPass);
		System.out.println(admins);
		if (admins == null) {
			response.sendRedirect("adminlogin.jsp");
		} else {
			request.getSession().setAttribute("admins", admins);
			response.sendRedirect("admin/main.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
