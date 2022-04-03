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
import cn.ustb.util.SessionUtil;


@WebServlet("/UserRegisterController.do")
public class UserRegisterController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String userPhone = request.getParameter("userPhone");
		String userPass = request.getParameter("userPass");
		String userPass2 = request.getParameter("userPass2");
		String userEmail = request.getParameter("userEmail");
		UsersService service = new UsersServiceImpl();
		
		//短信验证码
		String verifyCode = request.getParameter("verifyCode");
		System.out.println(verifyCode);
		String error = SessionUtil.validate(request.getSession(), userPhone, verifyCode);
		
		if (userPass.equals(userPass2) == false) {
			renderData(response, "两次输入的密码不一致");
			return;
		}

		if(!error.equals("")){
			renderData(response, "短信验证码错误");
			return;
		}
		Users users = new Users();
		users.setUserName(userName);
		users.setUserPhone(userPhone);
		users.setUserPass(userPass);
		users.setUserEmail(userEmail);
		int res = service.insertUsers(users);
		if (res > 0) {
			renderData(response, "注册成功");
		} else {
			renderData(response, "注册失败");
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
