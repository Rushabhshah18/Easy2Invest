package com.mail;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import com.dao.Dao;

public class sendMail {

	public String transport(String sender,String password,String reciever,int otp)
	{
		
		
		/*HttpSession session=null;*/
		
		
		
				String to = reciever;
				String msg = "Your Password changing link is "+ otp +". Please don't share it with anyone.";
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");
				
				Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(sender, password);// change
																										// accordingly
					}
				});
				
				try {
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress("slashinvester@gmail.com"));// change
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					message.setSubject("Reset your Reliable Investment Password");
					message.setText(msg);

					// send message
					Transport.send(message);
					System.out.println("Message Sent Successfully");
					

				}catch (Exception e) {
					
					e.printStackTrace();
					
				}
			
			
			
		
		
		return "success";
	}
	
}
