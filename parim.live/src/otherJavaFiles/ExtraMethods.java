package otherJavaFiles;

import java.util.Calendar;
import java.util.Date;

public class ExtraMethods {

	public static void main(String[] args) {
		// TODO Auto-generated method stub	
	}	
	
	public String generateId(String idType){
		Calendar cal = currentTime(); 
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int month = cal.get(Calendar.MONTH)+1;
		int year = cal.get(Calendar.YEAR);
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int minute = cal.get(Calendar.MINUTE);
		int second = cal.get(Calendar.SECOND);
		String userId = idType;
		
		if(day<10){
			userId += ""+0+day;
		}
		else{
			userId+=day;
		}
		if(month<10){
			userId += ""+0+month; 
		}
		else{
			userId+=month;
		}
		userId += ""+year;
		if(hour<10){
			userId += ""+0+hour;
		}
		else{
			userId+=hour;
		}
		if(minute<10){
			userId += ""+0+minute;
		}
		else{
			userId+=minute;
		}
		if(second<10){
			userId += ""+0+second;
		}
		else{
			userId+=second;
		}
		
		return userId;
	}
	
	public Calendar currentTime(){
		return Calendar.getInstance();
	}
	
	
	
	public String getFileExtension(String searchFileName)
	{
		String fileExtension="";
		char[] c2 = searchFileName.toCharArray();
		int location =searchFileName.lastIndexOf(".");
		if (location>1)
		{
			for (int i=location;i<searchFileName.length() ;i++ )
			{
			fileExtension = fileExtension + c2[i];
			}
		}
		
		return fileExtension; 
	}
}
