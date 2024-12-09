package hospitalmanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/addpatient")
public class AddPatientServlet extends HttpServlet {
   
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
			
			
			PreparedStatement ps = con.prepareStatement("insert into patient values(?,?,?,?,?,?)");
			
			ps.setInt(1, Integer.parseInt(req.getParameter("id")));
			
			ps.setString(2, req.getParameter("name"));
			
			ps.setInt(3, Integer.parseInt(req.getParameter("age")));
			
			ps.setString(4, req.getParameter("gender"));
			
			ps.setLong(5, Long.parseLong(req.getParameter("phone")));
			
			ps.setString(6, req.getParameter("city"));
			
			if(ps.executeUpdate()==1)
			{
				PrintWriter pw = res.getWriter();
				pw.write("<html> <body> <h1> Patient Add Successfully </h1> </body> </html>");
				req.getRequestDispatcher("index.jsp").include(req, res);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
}
