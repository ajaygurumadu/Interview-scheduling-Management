package mainproject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/Edits")
public class Edits extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edits() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String jobid=request.getParameter("jobid");
		String empid=request.getParameter("id");
		String domain=request.getParameter("domain");
		String requiredvac=request.getParameter("vac");
	
		String priority=request.getParameter("priority");
		int experience=Integer.parseInt(request.getParameter("exp"));
		String cname=request.getParameter("cname");
		String type=null;
		SimpleDateFormat formatter ; 
        formatter = new SimpleDateFormat("yyyy-MM-dd");
		
		if(experience <= 2){
			type="Written test";
		}else if(experience>2 & experience<6){
			type="personal interview";
		}
		else
		{
			type="Telephonic interview";
		}
//		String sql="update applicant set sno=?,name=?,contact=?,email=?,experience=?,type=? where sno="+sno;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
			PreparedStatement ps = conn.prepareStatement("update applicants set jobid=?,empid=?,domain=?,requiredvac=?,date=?,priority=?,experience=?,type=?,companyname=? where jobid="+jobid);
			
			java.util.Date date=formatter.parse(request.getParameter("date"));
			
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			
			ps.setString(1, jobid);
	        ps.setString(2, empid);
	        ps.setString(3, domain);
	        ps.setString(4, requiredvac);
	        ps.setDate(5, sqlDate);
	        ps.setString(6,priority);
	        ps.setInt(7,experience);
	        ps.setString(8,type);
	        ps.setString(9,cname);
	        
	        int i = ps.executeUpdate();
	        if(i!=0){
				out.println("<script language='Javascript'>");
				out.println("window.alert('Your Details were Saved Successfully')");
				out.println("window.location.replace('HRmainpage.jsp')");
				out.println("</script>");
	        }else{
				out.println("<script language='Javascript'>");
				out.println("window.alert('Please Enter Valid Credentials')");
				out.println("window.location.replace('http://localhost:8090/mainproject/HRmainpage.jsp')");
				out.println("</script>");
	        }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
