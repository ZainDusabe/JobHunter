

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class ClassPostedServelet
 */
@WebServlet("/ClassPostedServelet")
public class ClassPostedServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassPostedServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title=request.getParameter("title");
		String description=request.getParameter("description");
	
		System.out.println("ind do post method i add servlet");
		Part filePart=request.getPart("image");
		String imageFileStringName=filePart.getSubmittedFileName();
		
		
		
		String uploadPath="C:\\Users\\user\\eclipse-workspace\\GGJOP\\src\\main\\webapp\\images/"+imageFileStringName;
		System.out.println("Upload path :"+uploadPath);
		
		try {
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=filePart.getInputStream();
		byte[] data=new byte[is.available()];
		is.read();
		fos.write(data);
		fos.close();
		}
		catch (Exception e) {
			// TODO: handle exception
		
		}
		Connection connection=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobopportunity","root","");
			PreparedStatement ps;
			String query="insert into posted (title,description,image) values (?,?,?)";
			ps=connection.prepareStatement(query);
			
			ps.setString(1, request.getParameter("title"));
			ps.setString(3, request.getParameter("description"));
			ps.setString(2, imageFileStringName);
			
			
			int rows=ps.executeUpdate();
			
			if(rows>0) {
				System.out.println("the product is registered successfuly");
				response.sendRedirect("Dashboard.jsp");
			}
			else {
				System.out.println("oops");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

}
