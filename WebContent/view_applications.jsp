<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body style="background-color:	#E6E6FA">

	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
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
	<h2>Cabdidates Applied For Interview </h2>
	<div class="container">
	<table class="table table-striped" >
	<thead>
	<tr>
	<td><b>Job id</b></td>
	<td><b>Candidate Id</b></td>
	<td><b>Name</b></td>
	<td><b>Highest Degree</b></td>
	<td><b>10th GPA</b></td>
	<td><b>Inter GPA</b></td>
	<td><b>Highest Degree GPA</b></td>
	<td><b>Interested Domain</b></td>
	<td><b>Experience</b></td>
	<td><b>Contact Number</b></td>
	<td><b>Email Id</b></td>
	
	</tr>
	</thead>
	<%
	try{ 
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Ajay@123");
	st=conn.createStatement();
	rs = st.executeQuery("select * from applyjobs");
	while(rs.next()){
	%>
	<tbody>
	<tr bgcolor="#DEB887">
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><%=rs.getString(7) %></td>
	<td><%=rs.getString(8) %></td>
	<td><%=rs.getString(9) %></td>
	<td><%=rs.getString(10) %></td>
		<td><%=rs.getString(11) %></td>

		<td><form action="HR_Update_Status.jsp">
	<input type="submit" value="Update Status"></form></td>
	<td><form action="Hr_review.html">
	<input type="submit" value="Conduct Interview"></form></td>
	<td><form action="Hrfeedback.html">
	<input type="submit" value="Feedback"></form></td>
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