<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

</head>
<body style="background-color:#AED6F1">
		<%
String id=request.getParameter("id");
session.setAttribute("id",id);
%>
	<%
	
	try {
	Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	%>
	<center><h2>Status of Application </h2></center>
	<br>
	<br>
	<div class="container">
	<table  class="table table-striped">
<thead>
	<tr>
	
	<td><b>Candidate Id</b></td>
	<td><b>Status</b></td>
	<td><b>Date</b></td>
	<td><b>Venue</b></td>
	</tr>
	</thead>
	<%
	try{ 
		
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Ajay@123");
	st=conn.createStatement();
	rs = st.executeQuery("select * from hrupdatestatus where cid="+id+"");
	while(rs.next()){
	%>
	<tbody>
	<tr>
	
	
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>

	</tr>
	</tbody>
	<% 
	}
	
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</table>
</div>
</body>
</html>