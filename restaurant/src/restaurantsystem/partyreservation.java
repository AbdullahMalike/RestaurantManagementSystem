package restaurantsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class partyreservation {
	public void party(String Name,int Members,String Date,int TotalSeats,String PartyType,String Time,long PhoneNumber,int ID){
		try {
		    // Load the JDBC driver
		    Class.forName("com.mysql.jdbc.Driver");

		    // Establish a connection to the database
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurant", "root", "");

		    // Create a statement
		    Statement stmt = conn.createStatement();

		    // Insert the data into the table
		    String preservation = "INSERT INTO `partyreservation` (`Name`, `Members`, `Date`, `TotalSeats`,`PartyType`,`Time`,`PhoneNumber`, `ID`) "
		    		+ " values( '"+Name+"', '"+Members+"', '"+Date+"', '"+TotalSeats+"','"+PartyType+"','"+Time+"','"+PhoneNumber+"','"+ID+"' )";
		    
		    stmt.executeUpdate(preservation);

		    // Close the connection
		    conn.close();
		  } catch (Exception e) {
		    System.out.println(e);
		  }
	}
}
