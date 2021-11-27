package  otherJavaFiles;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.HttpURLConnection;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;


public class sendSMS2 {

	public static void main(String[] args)
	{
		System.out.println(new sendSMS2().sendSms("Dear Customer","TXTLCL","916396387551","qdHHbTS+kcM-H2pbTzHX2ruBjvvVe1HjPfDSWI83TJ"));//9682885936
	}

	public String sendSms(String message_param , String sender_param , String number_param ,String apiKeyParam ) {
		try {
			// Construct data
			String apiKey = "apikey=" + apiKeyParam;

			String message = "&message=" + message_param +"\n"+getCurrentTime();
			String sender = "&sender=" + sender_param;
			String numbers = "&numbers=" + number_param;
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + sender + message ;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
				
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			e.printStackTrace();
			return "Error "+e;
		}
	}

	public String getCurrentTime()
	{
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date d1 = new Date();
		String date = dateFormat.format(d1);
	//	System.out.println(date); //2016/11/16 12:08:43
		return date;
	}

}