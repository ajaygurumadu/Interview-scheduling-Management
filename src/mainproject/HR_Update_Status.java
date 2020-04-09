package mainproject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Types;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/HR_Update_Status")
public class HR_Update_Status extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HR_Update_Status() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String cid = request.getParameter("cid");
        String status = request.getParameter("status");
        String date = request.getParameter("date");
        String venue = request.getParameter("venue");

    	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
			PreparedStatement ps = conn.prepareStatement
                    ("insert into hrupdatestatus values(?,?,?,?)");
	        ps.setString(1, cid);
	        ps.setString(2,status);
	        ps.setString(3,"Not Allocated");
	        ps.setString(4,"Not Allocated");
	        int i = ps.executeUpdate();
	        if(i!=0){
				out.println("<script language='Javascript'>");
				out.println("window.alert('Thanks for Registering')");
				RequestDispatcher rd=request.getRequestDispatcher("HRmainpage.jsp");
				rd.forward(request, response);
	        }else{
				out.println("<script language='Javascript'>");
				out.println("window.alert('Registration not successful')");
				out.println("window.location.replace('http://localhost:8090/mainproject/HR_Update_Status.jsp')");
				out.println("</script>");
	        }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


}
