package evcharging;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updatedata
 */
public class Updatedata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatedata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		Connection con = DBConnection.connect();
		String power = request.getParameter("power");
		String mobile = request.getParameter("mobile");
		String pass = request.getParameter("pass");
		System.out.println(pass);
		System.out.println(mobile);
		System.out.println(power);
		
		try {
			PreparedStatement pstmt = con.prepareStatement("update chargingstation set power = ? where mobile = ? and pass = ?  ");
			pstmt.setString(1, power);
			pstmt.setString(2, mobile);
			pstmt.setString(3, pass);
			
			int i  = pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("activestation.jsp");
				System.out.println("data upadated");
			}
			else
			{
				
				System.out.println("fail to upadate");
				
			}
			
		} catch(Exception e){
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
