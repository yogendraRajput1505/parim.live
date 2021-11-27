package admin;


import database.FranchiseStore;
import hibernate.HibernateUtil;
import otherJavaFiles.ExtraMethods;

import java.util.Date;
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

public class AddStore extends HttpServlet {

	public void doPost(HttpServletRequest req ,HttpServletResponse  res ) throws IOException , ServletException
	{
		getCustomProduct(req,res);
	}
	
	public void getCustomProduct(HttpServletRequest req ,HttpServletResponse  res)
	{
   	    String id=null;
   	    String name = null;//
   	    String contact = null;//
   	    String email = null;//
   	    String city =null;//
   	    String address = null;//
   	    String imagePath = null;
   	    String storeType=null;
		Date date=null;
   	    InputStream fileContent = null;
   	    String imageName=null;
   	    String fileExtension =null;
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
	                if (fieldName.equals("id")){
						id = item.getString();
					}
	                else if (fieldName.equals("name")){
						name = item.getString();
					}
	                else if (fieldName.equals("storeType")){
	                	storeType = item.getString();
					}
					else if (fieldName.equals("contact")){
						contact = item.getString();
					}
					else if (fieldName.equals("email")){
						email =item.getString();
					}
					else if (fieldName.equals("city")){
						city = item.getString();
					}
					else if (fieldName.equals("address")){
						address= item.getString();
					}
					
	            } 
	            else
	            {
	                // Process form file field (input type="file").
	                String fieldName = item.getFieldName();
	                String fileName = FilenameUtils.getName(item.getName());
	                //jo files h unka content inputStream mai aa gaya h 
	                fileContent = item.getInputStream();                	          
	                if (fieldName.equals("storePhoto")) {
	                	fileExtension = new ExtraMethods().getFileExtension(fileName);
	                }
		        }
		    }
	        imageName = randomNumber+"_"+name+fileExtension;
        	imagePath = req.getServletContext().getRealPath("/images/store/"+imageName);
//         	System.out.println("Path 1 : "+req.getServletContext().getContextPath().toString());
        	req.getServletContext().getContextPath().toString();
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
	  addProductInAllProducts(id,storeType,name,contact,email,city,address,"images/store/"+imageName,date); 
	}
	
	public void addProductInAllProducts(String id,String storeType, String name, String contact, String email, String city, String address, String imagePath,Date date){
		Session ses  = HibernateUtil.getSessionFactory().openSession();
//		Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
//        applySettings(configuration.getProperties());
//        SessionFactory sf = configuration.buildSessionFactory(builder.build());
//        Session ses = sf.openSession();
        
   	    Transaction tx = ses.beginTransaction();
		//String type = new ExtraMethods().getUserType(shopId);
		FranchiseStore ps = new FranchiseStore();
		
		if(id==null || id.equals("")){ 
			//adding new Stoew
			id = new ExtraMethods().generateId("parim_");
		}
		ps.setId(id);
		ps.setStoreType(storeType);
		ps.setAddress(address);
		ps.setCity(city);
		ps.setEmail(email);
		ps.setImagePath(imagePath);
		ps.setName(name);
		ps.setPhone(contact);
		
		ses.saveOrUpdate(ps);		
		ses.getTransaction().commit();
		ses.close();
	}
}