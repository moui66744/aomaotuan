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
	     * 发送重设密码链接的邮件 
	     */  
	    public static void sendResetPasswordEmail(Users user ,String userEmail) {  
	        Session session = getSession();  
	        MimeMessage message = new MimeMessage(session);  
	        try {  
	            message.setSubject("找回您的帐户与密码");  
	            message.setSentDate(new Date());  
	            message.setFrom(new InternetAddress(FROM));  
	            message.setRecipient(RecipientType.TO, new InternetAddress(userEmail));  
	            message.setContent("要使用新的密码, 请使用以下链接启用密码:<br/><a href='" + GenerateLinkUtil.generateResetPwdLink(user) +"'>点击重新设置密码</a>","text/html;charset=utf-8");  
	            // 发送邮件  
	            Transport.send(message);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	    }  

	    public static Session getSession() {  
			Properties prop = new Properties();
			// 开启debug调试，以便在控制台查看
			prop.setProperty("mail.debug", "true");
			// 设置邮件服务器主机名
			prop.setProperty("mail.host", "smtp.qq.com");
			// 发送服务器需要身份验证
			prop.setProperty("mail.smtp.auth", "true");
			// 发送邮件协议名称
			prop.setProperty("mail.transport.protocol", "smtp");
			// 开启SSL加密，否则会失败
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

