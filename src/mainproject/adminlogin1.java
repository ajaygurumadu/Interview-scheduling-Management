package mainproject;
import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
/**
 * Servlet implementation class login
 */
@WebServlet("/adminlogin1")
public class adminlogin1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogin1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("id");
        String pass = request.getParameter("pass");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
            java.sql.Statement s = conn.createStatement();
            ResultSet rs =s.executeQuery("select * from adminlog");
            int i=0;
            while(rs.next())
			{
				if(rs.getString(6).equals(email) && rs.getString(7).equals(pass)){
					i++;
					 HttpSession session=request.getSession();  
					 session.setAttribute("id",email);
					break;
				}
			}
            if(i!=0){
				RequestDispatcher rd=request.getRequestDispatcher("index.html");
				
				rd.forward(request, response);
			}else{
				out.println("<script language='Javascript'>");
				out.println("window.alert('Please Enter Valid Credentials')");
				out.println("window.location.replace('http://localhost:8090/mainproject/adminlogin1.html')");
				out.println("</script>");
			}
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        }
}
