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
		//����ͼ����֤��ĳ�������֤���ַ����������߿��
		ShearCaptcha captcha = CaptchaUtil.createShearCaptcha(80, 30, 4, 2);
		//ͼ����֤��д��������д�����ļ���Ҳ����д������
//		captcha.write("../../images/captcha.png");
		captcha.write(response.getOutputStream());
		//��֤ͼ����֤�����Ч�ԣ�����booleanֵ
		String captchaCode = captcha.getCode();
		getServletContext().setAttribute("captchaCode", captchaCode);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
