package admin;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import database.Admin;
import hibernate.HibernateUtil;

public class Login extends HttpServlet { 
	
	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		System.out.println("doPost()");
		xyz(req,res);
	}
	
	public void xyz(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		
		res.setContentType("text/html");
		String enteredId = req.getParameter("id");
		String enteredPassword = req.getParameter("password");

		PrintWriter pw = res.getWriter();
		pw.write(verifyLogin(enteredId, enteredPassword,req));
		pw.close();
	}
	
	
	public String verifyLogin(String enteredId , String enteredPassword,HttpServletRequest req){
		try{
			Session ses = HibernateUtil.getSessionFactory().openSession();
//			Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//	        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//	        applySettings(configuration.getProperties());
//	        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//	        Session ses = sf.openSession();
	        
			  Query userQuery  = ses.createQuery("from "+Admin.class.getName());
		      List rows = userQuery.list();
			  Admin sd = null;
			  for(int i=0;i<rows.size();i++){
  		    	 sd=(Admin) rows.get(i);
  		    	 System.out.println("sd.getId() : "+sd.getId()+" - sd.getPassword() : "+sd.getPassword());
  		    	 System.out.println("enteredId : "+enteredId+" - enteredPassword : "+enteredPassword);
				 if(sd.getId().equals(enteredId)&&sd.getPassword().equals(enteredPassword)){
					 HttpSession session=req.getSession(true);  
				     session.setAttribute("id",enteredId);
				     session.setAttribute("name",sd.getName());
				     session.setAttribute("email",sd.getEmail());
				     session.setAttribute("phone",sd.getPhone());
					 return "true";
				 }    
			  }
			  ses.close(); 
			}
			catch(Exception e){
				e.printStackTrace();
				return "false";
			}
		return "false";
	}
	
		
}
