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
			//����6λ��֤��
			String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
			System.out.println("��֤��: "+verifyCode);
			//���Ͷ���
			ZhenziSmsClient client = new ZhenziSmsClient(Config.apiUrl, Config.appId, Config.appSecret);
			Map<String, Object> params = new HashMap<String, Object>();
		    params.put("number", number);
		    params.put("templateId", templateId);
		    String[] templateParams = {verifyCode, "5��������Ч"};
		    params.put("templateParams", templateParams);
			String result = client.send(params);
			json = JSONObject.parseObject(result);
			if(json.getIntValue("code") != 0){//���Ͷ���ʧ��
				renderData(response, "��ȡʧ��:"+json.getString("data"));
				return; 
			}
			//����֤��浽session��,ͬʱ���봴��ʱ��
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
