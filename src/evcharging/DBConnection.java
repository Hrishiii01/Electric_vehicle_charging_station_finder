package evcharging;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
static Connection con = null;
public static Connection connect(){
	
	Connection con = null;
	
	try{
		
		//1.Load the Driver
		Class.forName("com.mysql.jdbc.Driver");
		
		//2.Establish Connection
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharging","root","");
		
	}catch(Exception e){
		
		e.printStackTrace();
		
	}
	return con;
	
	
}



}

