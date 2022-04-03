package cn.ustb.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONObject;
import com.zhenzi.sms.ZhenziSmsClient;
import cn.ustb.util.Config;
import cn.ustb.util.SessionUtil;

/**
 * Servlet implementation class SendMessageController
 */
@WebServlet("/SendMessageController.do")
public class SendMessageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String number = request.getParameter("userPhone");
			String templateId = "6123";
			JSONObject json = null;
			//生成6位验证码
			String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
			System.out.println("验证码: "+verifyCode);
			//发送短信
			ZhenziSmsClient client = new ZhenziSmsClient(Config.apiUrl, Config.appId, Config.appSecret);
			Map<String, Object> params = new HashMap<String, Object>();
		    params.put("number", number);
		    params.put("templateId", templateId);
		    String[] templateParams = {verifyCode, "5分钟内有效"};
		    params.put("templateParams", templateParams);
			String result = client.send(params);
			json = JSONObject.parseObject(result);
			if(json.getIntValue("code") != 0){//发送短信失败
				renderData(response, "获取失败:"+json.getString("data"));
				return; 
			}
			//将验证码存到session中,同时存入创建时间
			HttpSession session = request.getSession();
			SessionUtil.save(session, number, verifyCode, 5 * 60);
			renderData(response, "success");
		} catch (Exception e) {
			e.printStackTrace();
		}
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
