package admin;


import database.GalleryImages;
import hibernate.HibernateUtil;
import otherJavaFiles.ExtraMethods;

import java.util.List;
import java.io.InputStream;
import java.io.File;
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
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.FileUtils;

public class AddGalleryImages extends HttpServlet {

	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		getCustomProduct(req,res);
	}
	
	public void getCustomProduct(HttpServletRequest req ,HttpServletResponse  res)
	{
   	    InputStream fileContent = null;
   	    String imagePath="";
   	    String imageName=null;
   	    String fileExtension =null;
   	    String shoeUser=null;
   	    int randomNumber = (int) (Math.random()*100000);
	  try
	   {
	        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(req);
	        for (FileItem item : items) 
	        {
	            if (item.isFormField()) 
	            {
	                // simple form field ko process karta h (input type="text|radio|checkbox|etc", select, etc).
	                String fieldName = item.getFieldName();
	                if (fieldName.equals("shoeUser")){
	                	shoeUser = item.getString();
					}
	            } 
	            else
	            {
	                // Process form file field (input type="file").
	                String fieldName = item.getFieldName();
	                String fileName = FilenameUtils.getName(item.getName());
	                imageName =randomNumber+"_"+fileName;
	                //jo files h unka content inputStream mai aa gaya h 
	                fileContent = item.getInputStream();                	          
	                if (fieldName.equals("galleryImage")) {
	                	fileExtension = new ExtraMethods().getFileExtension(fileName);
	                }
		        } 
		    }
	        
	        imagePath =req.getServletContext().getRealPath("/images/gallery/"+imageName);
	        System.out.println("imagePath : "+imagePath);
        	//req.getServletContext().getContextPath().toString();
        	File file = new File(imagePath);//file kaha aur kis name se save hogi
        	
        	FileUtils.copyInputStreamToFile(fileContent, file);
       } 
       catch (FileUploadException | IOException e) 
       {
        e.printStackTrace();
       }
       catch(Exception e)
       {
       	e.printStackTrace();
       }
	  addProductInAllProducts("images/gallery/"+imageName,shoeUser); 
	}
	
	public void addProductInAllProducts(String imagePath, String shoeUser){
		Session ses  = HibernateUtil.getSessionFactory().openSession();
//		Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//        applySettings(configuration.getProperties());
//        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//        Session ses = sf.openSession();
        
   	    Transaction tx = ses.beginTransaction();
		//String type = new ExtraMethods().getUserType(shopId);
		GalleryImages ps = new GalleryImages();
		
		ps.setImagePath(imagePath);
		ps.setShoeUser(shoeUser);
		
		ses.saveOrUpdate(ps);		
		ses.getTransaction().commit();
		ses.close();
	}
}