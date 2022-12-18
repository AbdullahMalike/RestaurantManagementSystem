package restaurantmanagementsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class order {
	public void addorder(int orderID,String Name,String FoodName,int Quantity,long Contact){
		try {
		    // Load the JDBC driver
		    Class.forName("com.mysql.jdbc.Driver");

		    // Establish a connection to the database
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurantmanagementsystem", "root", "");

		    // Create a statement
		    Statement stmt = conn.createStatement();

		    // Insert the data into the table
		    String foodorder = "INSERT INTO `foodorder` (`orderID`, `Name`, `FoodName`, `Quantity`, `Contact`)  values( '"+orderID+"', '"+Name+"', '"+FoodName+"', '"+Quantity+"','"+Contact+"' )";
		    
		    stmt.executeUpdate(foodorder);

		    // Close the connection
		    conn.close();
		  } catch (Exception e) {
		    System.out.println(e);
		  }
	}
}
