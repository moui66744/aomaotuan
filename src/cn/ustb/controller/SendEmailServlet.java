package cn.ustb.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.Goods;
import cn.ustb.bean.Users;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;
import cn.ustb.util.HtmlText;
import cn.ustb.util.JavaMailUtil;
import cn.ustb.util.RandomUtil;

@WebServlet("/SendEmailServlet")
public class SendEmailServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("���䷢�͹���");
		System.out.println(1);
		try {
			String email = req.getParameter("email");
	        Users userInfo =(Users)req.getSession().getAttribute("users");
	        if(!userInfo.getUserEmail().equals(email)){
				//e.printStackTrace();
	        	System.out.println("��һ��");
				req.getSession().setAttribute("error", "�ʼ�����ʧ��");
				return;
	        }
			
			JavaMailUtil.receiveMailAccount = email; // ���û���������䷢���ʼ�
 
			// 1�������������ã�������������������Ĳ�������
			Properties props = new Properties();
			// ����debug����
			props.setProperty("mail.debug", "true");
			// ���ͷ�������Ҫ�����֤
			props.setProperty("mail.smtp.auth", "true");
			// �����Ҽ���������������
			props.setProperty("mail.host", JavaMailUtil.emailSMTPHost);
			// �����ʼ�Э������
			props.setProperty("mail.transport.protocol", "smtp");
 
			// 2���������ô����Ự�������ں��ʼ�����������
			Session session = Session.getInstance(props);
			// ����debug�����Բ鿴��ϸ�ķ���log
			session.setDebug(true);
			// 3������һ���ʼ�
			String code = RandomUtil.getRandom();
			System.out.println("������֤�룺" + code);
			String html = HtmlText.html(code);
			MimeMessage message = JavaMailUtil.creatMimeMessage(session, JavaMailUtil.emailAccount,
					JavaMailUtil.receiveMailAccount, html);
 
			// 4������session��ȡ�ʼ��������
			Transport transport = session.getTransport();
			// 5��ʹ�������˺ź������������������emailAccount������message�еķ���������һ�£����򱨴�
			transport.connect(JavaMailUtil.emailAccount, JavaMailUtil.emailPassword);
			// 6�������ʼ�,���������ռ��˵�ַ
			transport.sendMessage(message, message.getAllRecipients());
			// 7���ر�����
			transport.close();
			//  д��session
			
			req.getSession().setAttribute("code", code);
		} catch (Exception e) {
			e.printStackTrace();
			req.getSession().setAttribute("error", "�ʼ�����ʧ��");
		}
	}
}

