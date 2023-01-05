<%@ page import="restaurantsystem.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
</head>
<body>
<h1>New User Added</h1>

<%
 Userinformation au = new UserinformationProxy().getUserinformation();


au.adduser(request.getParameter("Name"),Integer.parseInt(request.getParameter("Number")),
		request.getParameter("Address"),request.getParameter("AreaName"),
		request.getParameter("Email"),Integer.parseInt(request.getParameter("ID")));


%>

</body>
</html>