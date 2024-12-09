package hospitalmanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/deletedept")
public class DeleteDept extends HttpServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
			
			
			PreparedStatement ps = con.prepareStatement("delete from dept where id =?");
			
			ps.setInt(1, Integer.parseInt(req.getParameter("id")));
			
			if(ps.executeUpdate()==1)
			{
				PrintWriter pw = res.getWriter();
				pw.write("<html> <body> <h1> Department Deleted Successfully </h1> </body> </html>");
				ps=con.prepareStatement("select * from dept");
				ResultSet r = ps.executeQuery();
				req.setAttribute("rs", r);
				req.getRequestDispatcher("viewalldept.jsp").include(req, res);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
