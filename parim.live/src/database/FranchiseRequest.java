package database;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Column;

import java.util.Date;

@Entity
@Table(name = "groceri1_loginuser.FranchiseContact")
public class FranchiseRequest{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id=0;
		
	@Column(name = "NAME")
	private String name=null;
	
	@Column(name = "EMAIL")
	private String email=null;
	
	@Column(name = "PHONE")
	private String phone=null;
	
	@Column(name = "CITY")
	private String city=null;
	
	@Column(name = "MESSAGE")
	private String message=null;
	
	@Column(name = "REQUEST_TYPE")
	private String requestType=null;
	
	@Column(name = "ENQUIRY_DATE")
	private Date date=null;
	
	public int getId(){
		return id;
	}
	
	public void setName(String name)
	{
		this.name=name;
	}
	public String getName()
	{
		return name;
	}
	
	public void setEmail(String email)
	{
		this.email=email;
	}
	public String getEmail()
	{
		return email;
	}

	public void setPhone(String phone)
	{
		this.phone=phone;
	}
	public String getPhone()
	{
		return this.phone;
	}

	public void setCity(String city)
	{
		this.city=city;
	}
	public String getCity()
	{
		return this.city;
	}

	public void setMessage(String message)
	{
		this.message=message;
	}
	public String getMessage()
	{
		return this.message;
	}
	
	public void setRequestType(String requestType)
	{
		this.requestType=requestType;
	}
	public String getRequestType()
	{
		return this.requestType;
	}
	
	public void setEnquiryDate(Date date)
	{
		this.date=date;
	}
	public Date getEnquiryDate()
	{
		return this.date;
	}
}