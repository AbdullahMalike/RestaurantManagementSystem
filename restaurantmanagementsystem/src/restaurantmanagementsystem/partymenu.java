package restaurantmanagementsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class partymenu {
	public String partmenu (int PartyMenuID) {
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con =
			 DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurantmanagementsystem","root","");
			 Statement stmt=con.createStatement();
			 ResultSet rs=stmt.executeQuery("SELECT `PartyMenuID`,`FoodName`, `price`,`RestaurantName` from `partymenu` where `PartyMenuID` ='"+PartyMenuID+"' ");
	         String pmenu;
	         rs.next();		 
	         pmenu = "PartyMenuID: " + rs.getInt(1) + "	FoodName: " + rs.getString(2) + " Price: " + rs.getInt(3) + " Restaurant Name:  " + rs.getString(4);
	         
			con.close();
			return pmenu;
			 } catch(Exception e)
			 {
			 System.out.println(e);
			 }
		return "";
		
	 }
}
