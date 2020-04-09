package mainproject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/details_job")
public class details_job extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public details_job() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String jobid = request.getParameter("jobid");
        String cid = request.getParameter("cid");
        String name = request.getParameter("name");
        String hd = request.getParameter("hd");
        String tgrade = request.getParameter("tgrade");
        String intergrade = request.getParameter("intergrade");
        String hdgrade = request.getParameter("hdgrade");
        String idomain = request.getParameter("idomain");
        String exp = request.getParameter("exp");
        String cnumber = request.getParameter("cnumber");
        String email=request.getParameter("email");
       
    	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
			PreparedStatement ps = conn.prepareStatement
                    ("insert into applyjobs values(?,?,?,?,?,?,?,?,?,?,?)");
	        ps.setString(1, jobid);
	        ps.setString(2,cid);
	        ps.setString(3,name);
	        ps.setString(4,hd);
	        ps.setString(5,tgrade);
	        ps.setString(6, intergrade);
	        ps.setString(7,hdgrade);
	        ps.setString(8,idomain);
	        ps.setString(9,exp);
	        ps.setString(10,cnumber);
	        ps.setString(11,email);
	      
	        int i = ps.executeUpdate();
	        if(i!=0){
	        	out.println("<script language='Javascript'>");
				out.println("window.alert('Applied Successfully')");
				out.println("window.location.replace('http://localhost:8090/mainproject/candidatemainpage.jsp')");
				out.println("</script>");
	        }else{
	        	out.println("not Submitted");
	        }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	}

}
