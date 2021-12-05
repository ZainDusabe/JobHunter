
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Signup
 */
@MultipartConfig( maxFileSize= 16177215)
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
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
		System.out.println("ind do post method i add servlet");
		Part filePart=request.getPart("imgUpload");
		String imageFileStringName=filePart.getSubmittedFileName();
		System.out.println("selected image file name :"+imageFileStringName);


		String uploadPath="C:/Users/user/Desktop/my eclipse/GGJOP/src/main/webapp/image/"+imageFileStringName;
		System.out.println("Upload path :"+uploadPath);

		try {
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=filePart.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}catch(Exception e) {
		e.printStackTrace();
		}

		Connection connection=null;

		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobopportunity","root","");
		PreparedStatement stmt;
		String query="insert into signuptable (lname,fname,age,gender,email,mnmber,imgUpload,username,passwd) values (?,?,?,?,?,?,?,?,?)";
		stmt=connection.prepareStatement(query);
		
		stmt.setString(1, request.getParameter("fname"));
		stmt.setString(2, request.getParameter("lname"));
		stmt.setInt(3, Integer.parseInt(request.getParameter("age")));
		stmt.setString(4, request.getParameter("gender"));
		stmt.setString(5, request.getParameter("email"));
		stmt.setString(6, request.getParameter("mnmber"));
		stmt.setString(7,imageFileStringName);
		stmt.setString(8, request.getParameter("username"));
		stmt.setString(9, request.getParameter("passwd"));



		int rows=stmt.executeUpdate();

		if(rows>0) {
		System.out.println("the product is registered successfuly");
		response.sendRedirect("Account.jsp");
		}
		else {
		System.out.println("oops");
		}
		} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
		}
	
	
		
		//putting data in file file 

		try {
		String[] rows = new String[1];
		FileWriter f=new FileWriter("C:/Users/user/Desktop/my eclipse/GGJOP/src/main/webapp/filexel/file.csv",true);
		BufferedWriter br=new BufferedWriter(f);
		PrintWriter pw=new PrintWriter(br);

		 
		   for(int p = 1; p<rows.length; p++){
		     pw.append(rows[p]);
		   }

		pw.println( request.getParameter("fname")+ ","+request.getParameter("lname")+","+Integer.parseInt(request.getParameter("age"))+","+request.getParameter("gender")+","+request.getParameter("email")+","+request.getParameter("mnmber")+","+request.getParameter("username")+","+request.getParameter("passwd"));

		pw.flush();
		f.close();


		} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		
		
		
		
	
	}
	

}
