package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class CheckCaptchaCodeController
 */
@WebServlet("/CheckCaptchaCodeController.do")
public class CheckCaptchaCodeController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String captchaInput = request.getParameter("captchaInput");
		//Í¼Æ¬ÑéÖ¤Âë
		Object captchaCode = getServletContext().getAttribute("captchaCode");
		if (captchaCode.toString().equals(captchaInput) == false) {
			renderData(response, "Í¼Æ¬ÑéÖ¤Âë´íÎó");
		} else {
			renderData(response, "success");
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
