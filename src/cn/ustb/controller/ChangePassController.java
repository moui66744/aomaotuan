package cn.ustb.controller;

import java.io.IOException;
import java.util.HashMap;

import java.io.IOException;  
import java.util.HashMap;  
import java.util.Map;  

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.Users;
import cn.ustb.service.UsersService;
import cn.ustb.service.UsersServiceImpl;

/**
 * Servlet implementation class ChangePassController
 */
@WebServlet("/ChangePassController.do")
public class ChangePassController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users userInfo =(Users)request.getSession().getAttribute("users");
        String userName = userInfo.getUserName();
        String newPassword = request.getParameter("newPassword");  
        String newPassword2 = request.getParameter("newPassword2");  
        System.out.println(newPassword);
        System.out.println(newPassword2);
        Map<String,String> errors = new HashMap<String, String>();  
        if (newPassword == null || "".equals(newPassword)) { 
        	System.out.println(11);
            errors.put("newPassword", "�����벻��Ϊ�գ�");  
			response.setContentType("text/plain;charset=UTF-8");
			response.getWriter().write("�����벻��Ϊ�գ�");
			return;
        }  

        if (newPassword2 == null || "".equals(newPassword2)) {  
            errors.put("newPassword2", "ȷ�������벻��Ϊ�գ�");  
			response.setContentType("text/plain;charset=UTF-8");
			response.getWriter().write("ȷ�������벻��Ϊ�գ�");
			return;
        }  

        if (!newPassword.equals(newPassword2)) {  
            errors.put("passwordError", "������������벻һ�£�"); 
			response.setContentType("text/plain;charset=UTF-8");
			response.getWriter().write("������������벻һ�£�");
			return;
        }  

        if (!errors.isEmpty()) {  
            request.setAttribute("errors", errors);  
            request.getRequestDispatcher("/Member-xiumixiugai.jsp?userName=" + userName).forward(request, response);  
            return;  
        }  

        UsersService userDao = new UsersServiceImpl();  
        int flag = userDao.changePass(userName, newPassword);

        request.getRequestDispatcher("/Member-xiumisuccess.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users userInfo =(Users)request.getSession().getAttribute("users");
        String userName = userInfo.getUserName();
        String newPassword = request.getParameter("newPassword");  
        String newPassword2 = request.getParameter("newPassword2");  
        Map<String,String> errors = new HashMap<String, String>();  
        if (newPassword == null || "".equals(newPassword)) {  
            errors.put("newPassword", "�����벻��Ϊ�գ�");  
            request.getRequestDispatcher("Member-xiumixiugai.jsp").forward(request, response);
            return;  
        }  

        if (newPassword2 == null || "".equals(newPassword2)) {  
            errors.put("newPassword2", "ȷ�������벻��Ϊ�գ�");  
            request.getRequestDispatcher("Member-xiumixiugai.jsp").forward(request, response);
            return;  
        }  

        if (!newPassword.equals(newPassword2)) {  
            errors.put("passwordError", "������������벻һ�£�");  
            request.getRequestDispatcher("Member-xiumixiugai.jsp").forward(request, response);
            return;  
        }  

        if (!errors.isEmpty()) {  
            request.setAttribute("errors", errors);  
            request.getRequestDispatcher("Member-xiumixiugai.jsp?userName=" + userName).forward(request, response);  
            return;  
        }  
        UsersService userDao = new UsersServiceImpl();  
        int flag = userDao.changePass(userName, newPassword);
        request.getRequestDispatcher("Member-xiumisuccess.jsp").forward(request, response);

	}

}
