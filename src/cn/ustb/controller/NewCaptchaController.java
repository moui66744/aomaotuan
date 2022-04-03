package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.ShearCaptcha;

@WebServlet("/NewCaptchaController.do")
public class NewCaptchaController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//定义图形验证码的长、宽、验证码字符数、干扰线宽度
		ShearCaptcha captcha = CaptchaUtil.createShearCaptcha(80, 30, 4, 2);
		//图形验证码写出，可以写出到文件，也可以写出到流
//		captcha.write("../../images/captcha.png");
		captcha.write(response.getOutputStream());
		//验证图形验证码的有效性，返回boolean值
		String captchaCode = captcha.getCode();
		getServletContext().setAttribute("captchaCode", captchaCode);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
