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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/candidatelogin1")
public class candidatelogin1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public candidatelogin1() {
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
        
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
            java.sql.Statement s = conn.createStatement();
            ResultSet rs =s.executeQuery("select * from candidatelog");
        
            int i=0;
            while(rs.next())
			{
				if(rs.getString(6).equals(id) && rs.getString(7).equals(pass)){
					i=1;
					 HttpSession session=request.getSession();  
					 session.setAttribute("username",id);
					break;
				}
			}
            if(i==1){
            
            	response.sendRedirect("candidatemainpage.jsp?id="+id);

			}else{
				out.println("<script language='Javascript'>");
				out.println("window.alert('Please Enter Valid Credentials')");
				out.println("window.location.replace('http://localhost:8090/mainproject/candidatelogin1.jsp')");
				out.println("</script>");
			}
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        }
}
