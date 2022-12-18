package restaurantmanagementsystem;

import java.sql.*;

public class register{
	public void addnewuser(int userID,String Username,long phonenumber,String DOB,String gender,String email,String city,String password){
	try {
	    // Load the JDBC driver
	    Class.forName("com.mysql.jdbc.Driver");

	    // Establish a connection to the database
	    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurantmanagementsystem", "root", "");

	    // Create a statement
	    Statement stmt = conn.createStatement();

	    // Insert the data into the table
	    String sql = "INSERT INTO `signup` (`UserID`, `Username`, `phonenumber`, `DOB`, `gender`, `email`, `city`, `password`)  values( '"+userID+"', '"+Username+"', '"+phonenumber+"', '"+DOB+"','"+gender+"','"+email+"','"+city+"','"+password+"' )";
	    
	    stmt.executeUpdate(sql);

	    // Close the connection
	    conn.close();
	  } catch (Exception e) {
	    System.out.println(e);
	  }
}
	} 

