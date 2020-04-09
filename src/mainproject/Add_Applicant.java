package mainproject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add_Applicant
 */
@WebServlet("/Add_Applicant")
public class Add_Applicant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String cname=request.getParameter("cname");
		String jobid=request.getParameter("jobid");
		String id=request.getParameter("id");
		String domain=request.getParameter("domain");
		String requiredvac=request.getParameter("vac");
		SimpleDateFormat formatter ; 
        formatter = new SimpleDateFormat("yyyy-MM-dd");

		
		String priority=request.getParameter("priority");
		int experience=Integer.parseInt(request.getParameter("exp"));
		String type=null;
		
		if(experience <= 2){
			type="Written test";
		}else if(experience>2 & experience<6){
			type="personal interview";
		}
		else
		{
			type="Telephonic interview";
		}
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ajay@123");
			Statement st = conn.createStatement();
			String sql= "select * from applicants";
			ResultSet rs= st.executeQuery(sql);
			
			java.util.Date date=formatter.parse(request.getParameter("date"));
			
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			
			PreparedStatement ps = conn.prepareStatement
                    ("insert into applicants values(?,?,?,?,?,?,?,?,?)");
	 
	        ps.setString(1, jobid);
	        ps.setString(2, id);
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
				out.println("window.alert('Submitted.....Every candidate wll be notified!')");
				out.println("window.location.replace('HRmainpage.jsp')");
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}




