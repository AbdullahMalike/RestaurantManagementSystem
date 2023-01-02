<%@ page import="restaurantsystem.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shandar Shinwari</title>
</head>
<body>
<h1>Welcome To Shandar Shinwari</h1>

<%
Partyreservation pr = new PartyreservationProxy().getPartyreservation();


pr.party(request.getParameter("Name"),Integer.parseInt(request.getParameter("Members")),
		request.getParameter("Date"),Integer.parseInt(request.getParameter("TotalSeats")),
		request.getParameter("PartyType"),request.getParameter("Time"),
		Integer.parseInt(request.getParameter("PhoneNumber")),Integer.parseInt(request.getParameter("ID")));


%>

</body>
</html>