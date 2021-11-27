package extra;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import database.Admin;
import database.FranchiseRequest;
import database.FranchiseStore;
import database.GalleryImages;
import hibernate.HibernateUtil;
import otherJavaFiles.ExtraMethods;

public class DeleteClass {

	public static void main(String[] args) {
		//addStore();
	//	deleteStore();
//		getStore();
//		parseDate();
		//addproductInProducts();
	//	updateStore();x/x
		//addAdmin();
//		getAdmin();
//		setFranRequest();
//		getFranRequest();
		addGalleryImages();
//		getGalleryImages();
//		deleteGalleryImages();
		int num = (int) (Math.random()*100000);
		System.out.println("num : "+num);
	}
	
	public static void deleteGalleryImages(){
		Session ses = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = ses.beginTransaction();
		try {
		  // your code
		  String hql = "delete from GalleryImages where id= :id";
		  Query query = ses.createQuery(hql);
		  query.setInteger("id",1);
		  System.out.println(query.executeUpdate());
		  // your code end

		  transaction.commit();
		} catch (Throwable t) {
		  transaction.rollback();
		  throw t;
		}
	}
	
	public static void getGalleryImages(){
		try{
			  Session ses = HibernateUtil.getSessionFactory().openSession();
			  Query userQuery  = ses.createQuery("from "+GalleryImages.class.getName());
		      List rows = userQuery.list();
		      GalleryImages sd = null;
			  System.out.println(rows.size());
				for(int i=0;i<rows.size();i++){
			    	sd=(GalleryImages) rows.get(i);
				      System.out.println("id : "+sd.getId());
				      System.out.println("path : "+sd.getImagePath());
				      System.out.println("User : "+sd.getShoeUser());
				      System.out.println("-----------------------------");
			 }
				}
			catch(Exception e){
				e.printStackTrace();
			}
	}
	
	public static void addGalleryImages(){
		Session ses = HibernateUtil.getSessionFactory().openSession();
		 
		GalleryImages admin = new GalleryImages();
		admin.setImagePath("Mt image Path");								
		ses.beginTransaction();
		ses.save(admin);
		ses.getTransaction().commit();
		ses.close();
	}
	
	public static void getAdmin(){
		try{
			  Session ses = HibernateUtil.getSessionFactory().openSession();
			  Query userQuery  = ses.createQuery("from "+Admin.class.getName());
		      List rows = userQuery.list();
			  Admin sd = null;
			  System.out.println(rows.size());
				for(int i=0;i<rows.size();i++){
			    	sd=(Admin) rows.get(i);
				      System.out.println(sd.getId());
				      System.out.println(sd.getName());
				      System.out.println(sd.getEmail());
				      System.out.println(sd.getPhone());
				      System.out.println(sd.getPassword());
			 }
				}
			catch(Exception e){
				e.printStackTrace();
			}
	}
	
	public static void addAdmin(){
		Session ses = HibernateUtil.getSessionFactory().openSession();
		 
		Admin admin = new Admin();
		String id = new ExtraMethods().generateId("admin_");
		
		admin.setId(id);
		admin.setEmail("sonurajput1505@gmail.com");
		admin.setName("Shop 1");
		admin.setPhone("6396387551");
		admin.setPassword("123456");
								
		ses.beginTransaction();
		ses.save(admin);
		ses.getTransaction().commit();
		ses.close();
	}
	
	public static void deleteStore(){
		Session ses  = HibernateUtil.getSessionFactory().openSession();
   	    Transaction tx = ses.beginTransaction();
	 	
		try{
			String id =  "parim_14082020201913";
	  	    Object obj = ses.load(FranchiseStore.class,id);
		    FranchiseStore ca=(FranchiseStore)obj;
		    ses.delete(ca);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	    tx.commit();
		ses.close();	
		
	}
	
	public static void addStore(){
		Session ses = HibernateUtil.getSessionFactory().openSession();
	 
		FranchiseStore cd1 = new FranchiseStore();
		String id = new ExtraMethods().generateId("parim_");
		
		cd1.setId(id);
		cd1.setAddress("Address 1");
		cd1.setCity("Agra");
		cd1.setEmail("sonurajput1505@gmail.com");
		cd1.setImagePath("My image Path");
		cd1.setName("Shop 1");
		cd1.setPhone("6396387551");
		cd1.setStoreType("franchise");
		//cd1.setStoreType("wholeSaler");
		
		ses.beginTransaction();
		ses.save(cd1);
		ses.getTransaction().commit();
		ses.close();
	}
	
	public static void setFranRequest(){
		Session ses = HibernateUtil.getSessionFactory().openSession();
		 
		FranchiseRequest cd1 = new FranchiseRequest();
		String id = new ExtraMethods().generateId("parim_");
		
		

		cd1.setCity("Agra");
		cd1.setEmail("sonurajput1505@gmail.com");
		cd1.setEnquiryDate(Calendar.getInstance().getTime());
		cd1.setMessage("message");
		cd1.setRequestType("franchise");

		cd1.setName("Shop 1");
		cd1.setPhone("6396387551");
								
		ses.beginTransaction();
		ses.save(cd1);
		ses.getTransaction().commit();
		ses.close();
	}
	
	public static void getFranRequest(){
		try{
			  Session ses = HibernateUtil.getSessionFactory().openSession();
			  Query userQuery  = ses.createQuery("from "+FranchiseRequest.class.getName()+" c where requestType = :franchise");
			  userQuery.setParameter("franchise","franchise");
		      List rows = userQuery.list();
			  FranchiseRequest sd = null;
				for(int i=0;i<rows.size();i++){
			    	sd=(FranchiseRequest) rows.get(i);
				      System.out.println(sd.getId());
				      System.out.println(sd.getName());
				      System.out.println(sd.getEmail());
				      System.out.println(sd.getPhone());
				      System.out.println(sd.getCity());
				      System.out.println(sd.getMessage());
				      System.out.println(sd.getRequestType());
				      System.out.println(sd.getEnquiryDate());
				      System.out.println("-----------------------------------------------------------");
  			 }
				  System.out.println("Size of rows : "+rows.size());
				}
  			catch(Exception e){
  				e.printStackTrace();
  			}
	}
		
	public static void getStore(){
		try{
			  Session ses = HibernateUtil.getSessionFactory().openSession();
			  Query userQuery  = ses.createQuery("from "+FranchiseStore.class.getName()+" c where storeType = :franchise");
			  userQuery.setParameter("franchise","wholesaler");
		      List rows = userQuery.list();
		      FranchiseStore sd = null;
			  System.out.println(rows.size());
				for(int i=0;i<rows.size();i++){
			    	sd=(FranchiseStore) rows.get(i);
				      System.out.println(sd.getId());
				      System.out.println(sd.getName());
				      System.out.println(sd.getEmail());
				      System.out.println(sd.getPhone());
				      System.out.println(sd.getCity());
				      System.out.println(sd.getAddress());
				      System.out.println(sd.getImagePath());
				      System.out.println("-----------------------------------------------------------");
				}
			}
  			catch(Exception e){
  				e.printStackTrace();
  				
  			}
	}
	
	public static void parseDate(){
		String s1 = "2020-08-13 02:49:03.0";
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd,HH:mm:ss");
		Date date = null;
		try {
			date = formatter.parse(s1);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(date);
	}
	
	public static void updateStore(){
		Session ses = HibernateUtil.getSessionFactory().openSession();
		String type = "ShpData";
		Query userQuery =null;

		userQuery = ses.createQuery("select date  from "+FranchiseStore.class.getName()+" where id = :id");

		userQuery.setParameter("id", "parim_14082020012501");
		List<Object[]> rows = userQuery.list();		
		for (Object[] row: rows) {
			java.sql.Timestamp time = (Timestamp) row[0];
		    System.out.println("date: " + time.toString());
		}		
		
	}
	
	public static void addproductInProducts(){
		Session ses  = HibernateUtil.getSessionFactory().openSession();
	   	   
		Transaction tx = ses.beginTransaction();
		String hqlUpdate = "update FranchiseStore c set"+
		" c.name = :name,"+
		" c.address = :address,"+
		" c.city = :city,"+
		" c.email = :email,"+
		" c.phone = :phone,"+
		" c.imagePath = :imagePath"+
		" where c.id = :id";
		// or String hqlUpdate = "update Customer set name = :newName where name = :oldName";
		int updatedEntities = ses.createQuery( hqlUpdate )
		        .setParameter( "name","nameYogi2" )
		        .setParameter( "address","nameYogi2" )
		        .setParameter( "city","nameYogi2" )
		        .setParameter( "email","nameYogi2" )
		        .setParameter( "phone","nameYogi2" )
		        .setParameter( "imagePath","nameYogi2" )		        
		        .setParameter( "id", "parim_14082020012501" )
		        .executeUpdate();
		tx.commit();
		ses.close();
	}
	
	
	

}
