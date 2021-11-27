package pages;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import sendMail.SendMail;
import database.FranchiseRequest;
import hibernate.HibernateUtil;

public class FranchiseContact extends HttpServlet {

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
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String city = req.getParameter("city");
		String message = req.getParameter("message");
		String requestType = req.getParameter("requestType");
		
		Session ses = HibernateUtil.getSessionFactory().openSession();		
//		Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//        applySettings(configuration.getProperties());
//        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//        Session ses = sf.openSession();
		
		FranchiseRequest p1 = new FranchiseRequest();
		
		p1.setCity(city);
		p1.setEmail(email);
		p1.setEnquiryDate(Calendar.getInstance().getTime());
		p1.setMessage(message);
		p1.setName(name);
		p1.setPhone(phone);
		p1.setRequestType(requestType);
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
							  "Request for : "+requestType+"\n"+
							  "Date and Time : "+Calendar.getInstance().getTime()+"\n"+"\n"+
							  "GO -> http://parim.live/admin/enquiries.jsp";
		
		return emailMessage;
	}	
	
}
