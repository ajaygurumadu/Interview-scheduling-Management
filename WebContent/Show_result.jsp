<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	ResultSet rs1 = null;
	
	%>
	
	
	
	<center><h2>Interview Results</h2></center>
	<div class="container">
	<table class="table table-striped" >
	<thead>
	<tr>
	
	<td><b>Id</b></td>
	<td><b>Result of Interview</b></td>
	
	</tr>
	
</thead>
	<%
	
	try{ 
		
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Ajay@123");
	st=conn.createStatement();

	rs = st.executeQuery("SELECT * FROM hrinterview t1 INNER JOIN log t2 ON t1.id = t2.id  ");

	while(rs.next()){
	%>
	<tbody>
	<tr>
	
	
	<td><%=rs.getString(1) %></td>

	
	<td><%=rs.getString(10) %></td>
	
		</tbody>
	<% 
	}
	String sql="truncate log";
	st.executeUpdate(sql);
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

	</table>
</div>
</body>
</html>