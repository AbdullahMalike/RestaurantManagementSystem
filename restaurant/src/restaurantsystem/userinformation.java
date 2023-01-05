package restaurantsystem;
import java.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class userinformation {
	public void adduser(String Name,long Number,String Address,String AreaName,String Email,int ID){
		try {
		    // Load the JDBC driver
		    Class.forName("com.mysql.jdbc.Driver");

		    
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurant", "root", "");

		    // Create a statement
		    Statement stmt = conn.createStatement();

		    // Insert the data into the table
		    String preservation = "INSERT INTO `userinformation` (`Name`, `Number`, `Address`, `AreaName`,`Email`, `ID`)  values( '"+Name+"', '"+Number+"', '"+Address+"', '"+AreaName+"','"+Email+"','"+ID+"' )";
		    
		    stmt.executeUpdate(preservation);

		    // Close the connection
		    conn.close();
		  } catch (Exception e) {
		    System.out.println(e);
		  }
	}
}
