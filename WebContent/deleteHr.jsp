<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%
try
{ 
 Class.forName("com.mysql.jdbc.Driver");  //load driver 
 
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");  //create connection 

 if(request.getParameter("delete")!=null)
 {
  String id=request.getParameter("delete");
  
  PreparedStatement pstmt=null; //create statement
  
  pstmt=con.prepareStatement("delete from hrlog where id=? "); //sql delete query
  pstmt.setString(6,id);
  pstmt.executeUpdate(); //execute query
  
  con.close(); //close connection
 }
}
catch(Exception e)
{
 out.println(e);
}
%>