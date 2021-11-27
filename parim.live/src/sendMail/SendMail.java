package sendMail;

import java.util.*;  
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.Session;

public class SendMail {
	public static void main(String [] args){
		System.out.println("data75");
		String userName = "info@parim.live";
		String password = "7827810841@info";
		String subject = "Hi Yogendra";
		String message = "Dear Mail Crawler,"+"\n\n Please do not spam my email!"+"\n\n Data Entered By you is: ";
		String sendTo = "sonurajput1505@gmail.com";
		new SendMail().sendMail(userName ,password ,subject,message,sendTo);
		System.out.println("Mail sent");
	}	

	
	
	
	 //mail code
	 public void sendMail(String username , String password , String subject , String msg , String sendTo) {
	   System.out.println("Sending mail is in progress...");
      String messageData=null;

      Properties prop = new Properties();
	   prop.put("mail.smtp.host", "mail.parim.live");
      prop.put("mail.smtp.port", "587");
      prop.put("mail.smtp.auth", "true");
      prop.put("mail.smtp.starttls.enable", "true"); //TLS
      prop.put("mail.smtp.EnableSSL.enable","true");

	   prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");   
	   prop.setProperty("mail.smtp.socketFactory.fallback", "false");   
	   prop.setProperty("mail.smtp.port", "465");   
	   prop.setProperty("mail.smtp.socketFactory.port", "465"); 
	
		Session session = Session.getDefaultInstance(prop, 
		   new javax.mail.Authenticator(){
		       protected PasswordAuthentication getPasswordAuthentication() {
		           return new PasswordAuthentication(
		               username, password);// Specify the Username and the PassWord
		       }
		});

      try {

	       Message message = new MimeMessage(session);
	       message.setFrom(new InternetAddress(username));
	       message.setRecipients(
	               Message.RecipientType.TO,
	               InternetAddress.parse(sendTo)
	       );
	       message.setSubject(subject);
	       messageData = msg;
	
	       //3) create MimeBodyPart object and set your message text     
		   BodyPart messageBodyPart1 = new MimeBodyPart();  
		   messageBodyPart1.setText(messageData);  
		     	    
		   //5) create Multipart object and add MimeBodyPart objects to this object      
		   Multipart multipart = new MimeMultipart();  
		   multipart.addBodyPart(messageBodyPart1);  
	
		   //6) set the multiplart object to the message object  
		   message.setContent(multipart);  
	           Transport.send(message);
	           System.out.println("Done");
	       } catch (MessagingException e) {
	           e.printStackTrace();
	       }
	   }
	 
	
	
	 //mail code
	 public void sendGmail(String username , String password , String subject , String msg , String sendTo) {
	   System.out.println("Sending mail is in progress...");
       String messageData=null;

       Properties prop = new Properties();
	   prop.put("mail.smtp.host", "smtp.gmail.com");
       prop.put("mail.smtp.port", "587");
       prop.put("mail.smtp.auth", "true");
       prop.put("mail.smtp.starttls.enable", "true"); //TLS
       prop.put("mail.smtp.EnableSSL.enable","true");

	   prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");   
	   prop.setProperty("mail.smtp.socketFactory.fallback", "false");   
	   prop.setProperty("mail.smtp.port", "465");   
	   prop.setProperty("mail.smtp.socketFactory.port", "465"); 
	
		Session session = Session.getDefaultInstance(prop, 
		   new javax.mail.Authenticator(){
		       protected PasswordAuthentication getPasswordAuthentication() {
		           return new PasswordAuthentication(
		               username, password);// Specify the Username and the PassWord
		       }
		});

       try {

	       Message message = new MimeMessage(session);
	       message.setFrom(new InternetAddress(username));
	       message.setRecipients(
	               Message.RecipientType.TO,
	               InternetAddress.parse(sendTo)
	       );
	       message.setSubject(subject);
	       messageData = msg;
	
	       //3) create MimeBodyPart object and set your message text     
		   BodyPart messageBodyPart1 = new MimeBodyPart();  
		   messageBodyPart1.setText(messageData);  
		     	    
		   //5) create Multipart object and add MimeBodyPart objects to this object      
		   Multipart multipart = new MimeMultipart();  
		   multipart.addBodyPart(messageBodyPart1);  
	
		   //6) set the multiplart object to the message object  
		   message.setContent(multipart);  
	           Transport.send(message);
	           System.out.println("Done");
	       } catch (MessagingException e) {
	           e.printStackTrace();
	       }
	   }

}
