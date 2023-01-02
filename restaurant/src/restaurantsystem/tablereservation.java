package restaurantsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class tablereservation {
	public void tableres(String Name,int Members,String Date,int TotalSeats,int ID){
		try {
		    // Load the JDBC driver
		    Class.forName("com.mysql.jdbc.Driver");

		    // Establish a connection to the database
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurant", "root", "");

		    // Create a statement
		    Statement stmt = conn.createStatement();

		    // Insert the data into the table
		    String preservation = "INSERT INTO `tablereservation` (`Name`, `Members`, `Date`, `TotalSeats`, `ID`)  values( '"+Name+"', '"+Members+"', '"+Date+"', '"+TotalSeats+"','"+ID+"' )";
		    
		    stmt.executeUpdate(preservation);

		    // Close the connection
		    conn.close();
		  } catch (Exception e) {
		    System.out.println(e);
		  }
	}
}
