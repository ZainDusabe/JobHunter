
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
 * Servlet implementation class clothesServlet
 */
@MultipartConfig( maxFileSize= 16177215)
@WebServlet("/postServer")
public class postServer extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postServer() {
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


System.out.println("ind do post method i add servlet");
Part filePart=request.getPart("image");
String imageFileStringName=filePart.getSubmittedFileName();
System.out.println("selected image file name :"+imageFileStringName);


String uploadPath="C:/Users/user/Desktop/my eclipse/GGJOP/src/main/webapp/images/"+imageFileStringName;
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
String query="insert into posted (title,description,image,type,username) values (?,?,?,?,?)";
stmt=connection.prepareStatement(query);
stmt.setString(1, request.getParameter("title"));
stmt.setString(2, request.getParameter("description"));
stmt.setString(3,imageFileStringName);
stmt.setString(4, request.getParameter("type"));
stmt.setString(5, request.getParameter("username"));




int rows=stmt.executeUpdate();

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



