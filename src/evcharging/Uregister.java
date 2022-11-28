package evcharging;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Uregister
 */
public class Uregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
int id=0;
	    
		String name = request.getParameter("name");
		String email =request.getParameter("email");
		String mobile =request.getParameter("mobile");
		String pass =request.getParameter("pass");
		//int mobile=Integer.parseInt(request.getParameter("mobile"));//
		//int pass=Integer.parseInt(request.getParameter("pass"));
		String city =request.getParameter("city");
		
		try{
			Connection con = DBConnection.connect();
	    	PreparedStatement pstmt = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, mobile);
			pstmt.setString(5, pass);
			pstmt.setString(6, city);
			
			
	
		int i= pstmt.executeUpdate();
			
			if (i>0)
			{
				response.sendRedirect("indexx.html");
				
				System.out.println("registration successful");
				
			}
			else
			{
				response.sendRedirect("errorreg");
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
