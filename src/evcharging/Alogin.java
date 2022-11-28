package evcharging;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Alogin
 */
public class Alogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		try{
			
			Connection con = DBConnection.connect();
		    PreparedStatement pstmt = con.prepareStatement("select * from admin  where email=? and pass=?");
			
			pstmt.setString(1,email);
			pstmt.setString(2,pass);
		
			ResultSet rs= pstmt.executeQuery();
			
			if (rs.next())
			{
				response.sendRedirect("AdminDash.jsp");
				System.out.println("login successfully");
				
			}
			else
			{
				response.sendRedirect("err    orreg.html");
				System.out.println("oops! invalid username or password please try again");
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
