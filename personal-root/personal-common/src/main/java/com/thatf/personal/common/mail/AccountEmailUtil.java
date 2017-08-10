package com.thatf.personal.common.mail;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class AccountEmailUtil {

	private static JavaMailSender javaMailSender;

	private static String systemEmail;

	public static void sendMail(String to,String subject,String htmlText){
		try {
			MimeMessage msg = javaMailSender.createMimeMessage();
			MimeMessageHelper msgHelper = new MimeMessageHelper(msg);

			msgHelper.setFrom(systemEmail);
			msgHelper.setTo(to);
			msgHelper.setSubject(subject);
			msgHelper.setText(htmlText,true);
			
			javaMailSender.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
