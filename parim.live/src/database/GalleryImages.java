package database;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
@Table(name = "groceri1_loginuser.GalleryImages")
public class GalleryImages{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id=0;
			
	@Column(name = "IMAGE_PATH")
	private String imagePath=null;
	
	@Column(name = "SHOE_USER")
	private String shoeUser=null;
		
	public int getId(){
		return this.id;
	}
		
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	public String getImagePath(){
		return this.imagePath;
	}
	
	public void setShoeUser(String shoeUser){
		this.shoeUser = shoeUser;
	}
	public String getShoeUser(){
		return this.shoeUser;
	}
}