package admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import database.FranchiseStore;
import database.GalleryImages;
import hibernate.HibernateUtil;

public class DeleteImage extends HttpServlet {
	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		System.out.println("DeleteImage doPost()");
		boolean isImageDeleted = deleteData(Integer.parseInt(req.getParameter("id")));
		System.out.println("isImageDeleted : "+isImageDeleted);
		if(isImageDeleted){
			
			deleteImage(req.getParameter("path"),req);
		}
		
	}
	
	public  boolean deleteData(int id){
		Session ses  = HibernateUtil.getSessionFactory().openSession();
//		Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//        applySettings(configuration.getProperties());
//        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//        Session ses = sf.openSession();
        
   	    Transaction tx = ses.beginTransaction();
		
		try {
		  // your code
		  String hql = "delete from GalleryImages where id= :id";
		  Query query = ses.createQuery(hql);
		  query.setInteger("id",id);
		  System.out.println(query.executeUpdate());
		  // your code end

		  tx.commit();
		  ses.close();
		} catch (Throwable t) {
		  tx.rollback();
		  throw t;
		}
		return true;
	}
	
	public void deleteImage(String path,HttpServletRequest req){
        path =req.getServletContext().getRealPath("/"+path);
		File deleteFile = new File(path) ;
		// check if the file  present or not
		System.out.println("deleteImage()");
		if( deleteFile.exists() )
		deleteFile.delete() ;
		
	}
	
}
