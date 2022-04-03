package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;

import cn.ustb.bean.Users;
import cn.ustb.service.UsersService;
import cn.ustb.service.UsersServiceImpl;
import cn.ustb.util.SessionUtil;

/**
 * Servlet implementation class UserPhoneJudgeController
 */
@WebServlet("/UserPhoneJudgeController.do")
public class UserPhoneJudgeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userPhone = request.getParameter("userPhone");
        Users userInfo =(Users)request.getSession().getAttribute("users");
        if(!userInfo.getUserPhone().equals(userPhone)){
        	System.out.println("手机号错误");
        	renderData(response, "手机号错误");
        	return;
        }
		//短信验证码
		String verifyCode = request.getParameter("verifyCode");
		System.out.println(verifyCode);
		String error = SessionUtil.validate(request.getSession(), userPhone, verifyCode);
		System.out.println(0);
		System.out.println(error);
		
		if(!error.equals("")){
			System.out.println(1);
			//renderData(response, "短信验证码错误");
			request.getRequestDispatcher("/Member-xiumiphone.jsp").forward(request, response);
			return;
		}

		else {
			System.out.println(2);
			request.getRequestDispatcher("/Member-xiumixiugai.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void renderData(HttpServletResponse response, String data){
		try {
			response.setContentType("text/plain;charset=UTF-8");
			response.getWriter().write(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
