package mainproject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Types;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin_Update_Edit
 */
@WebServlet("/Admin_Update_Edit")
public class Admin_Update_Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Update_Edit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        PrintWriter out = response.getWriter();
        String cid=request.getParameter("cid");
        String date = request.getParameter("date");
        String venue = request.getParameter("venue");

    	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
			PreparedStatement ps = conn.prepareStatement("update hrupdatestatus set date=?,venue=? where cid="+cid);
	        ps.setString(1, date);
	        ps.setString(2,venue);
	        int i = ps.executeUpdate();
	        if(i!=0){
				out.println("<script language='Javascript'>");
				out.println("window.alert('Updated status!!!!')");
				RequestDispatcher rd=request.getRequestDispatcher("adminhomepage.jsp");
				rd.forward(request, response);
	        }else{
				out.println("<script language='Javascript'>");
				out.println("window.alert('Registration not successful')");
				out.println("window.location.replace('http://localhost:8090/mainproject/adminhomepage.jsp')");
				out.println("</script>");
	        }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
