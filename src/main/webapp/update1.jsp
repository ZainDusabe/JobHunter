
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.http.Part" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/jobopportunity";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String title = request.getParameter("title");
String description=request.getParameter("description");
String image=request.getParameter("image");
String type=request.getParameter("type");
String username=request.getParameter("username");
String userid =request.getParameter("id");
if(userid != null)

{
	Connection con = null;
	PreparedStatement ps = null;
	int posted_id = Integer.parseInt(userid);
	try
	{
		
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update posted set title=?,description=?,image=?,type=?,username=? where id="+posted_id;
		ps = con.prepareStatement(sql);
		
		ps.setString(1, title);
		ps.setString(2, description);
		ps.setString(3, image);
		ps.setString(4, username);
		int i = ps.executeUpdate();
		if(i > 0)
		{
		out.print("Record Updated Successfully");
		}
		else
		{
		out.print("There is a problem in updating Record.");
		}	
	}
	catch(SQLException sql)
	{
	
	out.println(sql);
	request.setAttribute("error", sql);
	}
}
else
{
	out.print("There is a problem in updating Record.");
	}

%>