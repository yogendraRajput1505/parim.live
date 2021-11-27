package otherJavaFiles;
import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import otherJavaFiles.sendSMS2;

public class SendOtp extends HttpServlet {
	
	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		System.out.println("doPost()");
		xyz(req,res);
	}
	
	public void xyz(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		String otp = req.getParameter("otp");
		String phone = req.getParameter("phone");
		pw.println("OTP is"+otp);
		pw.println("Phone is"+phone);
		
		String messageApiKey = getServletConfig().getInitParameter("messageApiKey");
	
		String s1 = new sendSMS2().sendSms("Your OTP for Parim.live is : "+otp,"TXTLCL","91"+phone,messageApiKey);
	
		System.out.println("SendOtp.java -> OTP send - "+otp);
		
		pw.close();
	}
	
}
