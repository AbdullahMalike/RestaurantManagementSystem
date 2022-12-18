package restaurantmanagementsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class partyreserv {
	public void addpartyres(int partyid,String Username,long ContactNo,String arrivaldate,String Arrivaltime,String decorationtype,int totalmembers){
		try {
		    // Load the JDBC driver
		    Class.forName("com.mysql.jdbc.Driver");

		    // Establish a connection to the database
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurantmanagementsystem", "root", "");

		    // Create a statement
		    Statement stmt = conn.createStatement();

		    // Insert the data into the table
		    String preservation = "INSERT INTO `partyreservation` (`partyid`, `Username`, `ContactNo`, `arrivaldate`, `Arrivaltime`, `decorationtype`, `totalmembers`)  values( '"+partyid+"', '"+Username+"', '"+ContactNo+"', '"+arrivaldate+"','"+Arrivaltime+"','"+decorationtype+"','"+totalmembers+"' )";
		    
		    stmt.executeUpdate(preservation);

		    // Close the connection
		    conn.close();
		  } catch (Exception e) {
		    System.out.println(e);
		  }
	}
}
