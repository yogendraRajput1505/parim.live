package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import database.FranchiseStore;
import hibernate.HibernateUtil;

public class DeleteStore extends HttpServlet {
	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		deleteStore(req.getParameter("id"));
	}
	
	public  void deleteStore(String id){
		Session ses  = HibernateUtil.getSessionFactory().openSession();
//		Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//        applySettings(configuration.getProperties());
//        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//        Session ses = sf.openSession();
        
   	    Transaction tx = ses.beginTransaction();
		try{
			
	  	    Object obj = ses.load(FranchiseStore.class,id);
		    FranchiseStore ca=(FranchiseStore)obj;
		    ses.delete(ca);
		   // ses.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	    tx.commit();
		ses.close();
	}
	
}
