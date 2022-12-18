package restaurantmanagementsystem;

import java.sql.*;

public class restmenu {
 public String menu (int menuid) {
	 try{
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con =
		 DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurantmanagementsystem","root","");
		 Statement stmt=con.createStatement();
		 ResultSet rs=stmt.executeQuery("SELECT `menuid`,`foodname`,`fooddiscription`,`price` from `menu` where `menuid` ='"+menuid+"' ");
         String remenu;
         rs.next();		 
         remenu = "MenuID: " + rs.getInt(1) + "	Food Name: " + rs.getString(2) + "	Food Discription: " + rs.getString(3) + " Price:  " + rs.getInt(4);
		con.close();
		return remenu;
		 } catch(Exception e)
		 {
		 System.out.println(e);
		 }
	return "";
	
 }
}
