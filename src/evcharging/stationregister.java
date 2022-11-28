package evcharging;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class stationregister
 */
public class stationregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stationregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int id=0;
String status="Pending";
	    
		String stationname = request.getParameter("stationname");
		String address =request.getParameter("address");
		String city =request.getParameter("city");
		String taluka =request.getParameter("taluka");
		String district =request.getParameter("district");
		int opentime=Integer.parseInt(request.getParameter("opentime"));
		int closetime=Integer.parseInt(request.getParameter("closetime"));
		int mobile=Integer.parseInt(request.getParameter("mobile"));
		String pass =request.getParameter("pass");
		String power =request.getParameter("power");
		int latitude=Integer.parseInt(request.getParameter("latitude"));
		int longitude=Integer.parseInt(request.getParameter("longitude"));
		
		try{
			Connection con = DBConnection.connect();
	    	PreparedStatement pstmt = con.prepareStatement("insert into chargingstation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setInt(1, id);
			pstmt.setString(2, stationname);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, taluka);
			pstmt.setString(6, district);
			pstmt.setInt(7, opentime);
			pstmt.setInt(8, closetime);
			pstmt.setInt(9, mobile);
			pstmt.setString(10, pass);
			pstmt.setString(11, power);

			pstmt.setInt(12, latitude);
			pstmt.setInt(13, longitude);
			pstmt.setString(14,status);
			
			
			
	
		int i= pstmt.executeUpdate();
			
			if (i>0)
			{
				response.sendRedirect("stationlogin.html");
				
				System.out.println("registration successful");
				
			}
			else
			{
				System.out.println("failed to register");
			}
        	}
		catch(Exception e){
			e.printStackTrace();
		}
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
