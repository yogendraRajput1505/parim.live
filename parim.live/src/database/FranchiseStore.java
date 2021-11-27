package database;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
@Table(name = "groceri1_loginuser.FranchiseStore")
public class FranchiseStore{
	@Id
	@Column(name = "ID")
	private String id=null;
		
	@Column(name = "NAME2")
	private String name=null;
	
	@Column(name = "EMAIL")
	private String email=null;
	
	@Column(name = "PHONE")
	private String phone=null;
	
	@Column(name = "CITY")
	private String city=null;
	
	@Column(name = "ADDRESS")
	private String address=null;
	
	@Column(name = "STORE_TYPE")
	private String storeType=null;
	
	@Column(name = "IMAGE_PATH")
	private String imagePath=null;
	
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

	public void setCity(String city)
	{
		this.city=city;
	}
	public String getCity()
	{
		return this.city;
	}

	public void setAddress(String address)
	{
		this.address=address;
	}
	public String getAddress()
	{
		return this.address;
	}
	
	public void setStoreType(String storeType)
	{
		this.storeType=storeType;
	}
	public String getStoreType()
	{
		return storeType;
	}
	
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	public String getImagePath(){
		return this.imagePath;
	}
}