package cn.ustb.util;

import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

import cn.ustb.bean.Users;

import java.io.IOException;  
import java.io.InputStream;  
import java.util.Date;  
import java.util.Properties;  

import javax.mail.Authenticator;  
import javax.mail.Message.RecipientType;  
import javax.mail.PasswordAuthentication;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  


public class ChangePassbyEmaiUtil {
	   private static final String FROM = "linmao510322@163.com";  


	    /** 
	     * ���������������ӵ��ʼ� 
	     */  
	    public static void sendResetPasswordEmail(Users user ,String userEmail) {  
	        Session session = getSession();  
	        MimeMessage message = new MimeMessage(session);  
	        try {  
	            message.setSubject("�һ������ʻ�������");  
	            message.setSentDate(new Date());  
	            message.setFrom(new InternetAddress(FROM));  
	            message.setRecipient(RecipientType.TO, new InternetAddress(userEmail));  
	            message.setContent("Ҫʹ���µ�����, ��ʹ������������������:<br/><a href='" + GenerateLinkUtil.generateResetPwdLink(user) +"'>���������������</a>","text/html;charset=utf-8");  
	            // �����ʼ�  
	            Transport.send(message);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	    }  

	    public static Session getSession() {  
			Properties prop = new Properties();
			// ����debug���ԣ��Ա��ڿ���̨�鿴
			prop.setProperty("mail.debug", "true");
			// �����ʼ�������������
			prop.setProperty("mail.host", "smtp.qq.com");
			// ���ͷ�������Ҫ�����֤
			prop.setProperty("mail.smtp.auth", "true");
			// �����ʼ�Э������
			prop.setProperty("mail.transport.protocol", "smtp");
			// ����SSL���ܣ������ʧ��
	        prop.setProperty("mail.smtp.port", "25");  
	        prop.setProperty("mail.smtp.auth", "true");  
	        
	        Session session = Session.getInstance(prop, new Authenticator() {  
	            @Override  
	            protected PasswordAuthentication getPasswordAuthentication() {  
	                String password = null;  
	                InputStream is = ChangePassbyEmaiUtil.class.getResourceAsStream("nnmziltksskfeafc");  
	                byte[] b = new byte[1024];  
	                try {  
	                    int len = is.read(b);  
	                    password = new String(b,0,len);  
	                } catch (IOException e) {  
	                    e.printStackTrace();  
	                }  
	                return new PasswordAuthentication(FROM, password);  
	            }  

	        });  
	        return session;  
	    }  
}

