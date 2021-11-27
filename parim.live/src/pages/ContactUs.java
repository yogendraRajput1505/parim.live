package pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import hibernate.HibernateUtil;
import sendMail.SendMail;
import database.Enquiries;

public class ContactUs extends HttpServlet {

	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		String emailMessage = xyz(req,res);
		SendMail sm = new SendMail();
		String email = getServletConfig().getInitParameter("emailId");
		String password = getServletConfig().getInitParameter("emailPassword");
		String title = getServletConfig().getInitParameter("emailTitle");
		String sendTo = getServletConfig().getInitParameter("sendEmailTo");
		
		sm.sendMail(email ,password ,title,emailMessage,sendTo);
		
	}
	
	public String xyz(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String city = req.getParameter("city");
		String message = req.getParameter("message");
		
		Session ses = HibernateUtil.getSessionFactory().openSession();
//		Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//        applySettings(configuration.getProperties());
//        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//        Session ses = sf.openSession();
        
		Enquiries p1 = new Enquiries();
		
		p1.setCity(city);
		p1.setEmail(email);
		p1.setEnquiryDate(Calendar.getInstance().getTime());
		p1.setMessage(message);
		p1.setName(name);
		p1.setPhone(phone);
		
		ses.beginTransaction();
		ses.save(p1);
		ses.getTransaction().commit();
		ses.close();
		
		String emailMessage = "There is one More Request For Parim.live : "+"\n"+"\n"+
				  "Name of Applicant : "+name+"\n"+
				  "Email of Applicant : "+email+"\n"+
				  "Phone of Applicant : "+phone+"\n"+
				  "City : "+city+"\n"+
				  "message : "+message+"\n"+
				  
				  "Date and Time : "+Calendar.getInstance().getTime()+"\n"+"\n"+
				  "GO -> http://parim.live/admin/enquiries.jsp";
		
		return emailMessage;
	}	
	
}
