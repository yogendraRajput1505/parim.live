package database;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Column;

import java.util.Date;

@Entity
@Table(name = "groceri1_loginuser.Admin")
public class Admin{
	@Id
	private String id=null;
		
	@Column(name = "NAME")
	private String name=null;

	@Column(name = "EMAIL")
	private String email=null;
	
	@Column(name = "PHONE")
	private String phone=null;
	
	@Column(name = "PASSWORD")
	private String password=null;
	
	public void setId(String id){
		this.id=id;
	}

	public String getId(){
		return this.id;
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
	
	public void setPassword(String password)
	{
		this.password=password;
	}
	public String getPassword()
	{
		return this.password;
	}

}