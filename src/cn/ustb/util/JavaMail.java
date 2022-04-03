package cn.ustb.util;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.sun.mail.util.MailSSLSocketFactory;
public class JavaMail {
	public static void main(String[] args) throws Exception {
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
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.socketFactory", sf);
		// ����session
		Session session = Session.getInstance(prop);
		// ͨ��session�õ�transport����
		Transport ts = session.getTransport();
		// �����ʼ����������������ͣ��ʺţ�POP3/SMTPЭ����Ȩ�� 163ʹ�ã�smtp.163.com
		ts.connect("smtp.qq.com", "2264586251", "nnmziltksskfeafc");
		// �����ʼ�
		Message message = createSimpleMail(session);
		// �����ʼ�
		ts.sendMessage(message, message.getAllRecipients());
		ts.close();
	}

	/**
	 * @Method: createSimpleMail
	 * @Description: ����һ��ֻ�����ı����ʼ�
	 */
	public static MimeMessage createSimpleMail(Session session) throws Exception {
			//  ��ȡ6Ϊ�����֤��
			String[] letters = new String[] {
					"q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m",
					"A","W","E","R","T","Y","U","I","O","P","A","S","D","F","G","H","J","K","L","Z","X","C","V","B","N","M",
					"0","1","2","3","4","5","6","7","8","9"};
			String stringBuilder ="";
			for (int i = 0; i < 6; i++) {
				stringBuilder = stringBuilder + letters[(int)Math.floor(Math.random()*letters.length)];
			}
		
		// �����ʼ�����
		MimeMessage message = new MimeMessage(session);
		// ָ���ʼ��ķ�����
		message.setFrom(new InternetAddress("2264586251@qq.com"));
		// ָ���ʼ����ռ��ˣ����ڷ����˺��ռ�����һ���ģ��Ǿ����Լ����Լ���
		message.setRecipient(Message.RecipientType.TO, new InternetAddress("2264586251@qq.com"));
		// �ʼ��ı���
		message.setSubject("JavaMail����");
		// �ʼ����ı�����
	    message.setContent("��ӭ��ע�᡾MC����Ƽ���,�˺�ע����֤��Ϊ(һ������Ч):"+stringBuilder+",����ظ�������", "text/html;charset=UTF-8");
		
		// ���ش����õ��ʼ�����
		return message;
	}

}
