 <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "jobopportunity";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online Job Opportunity</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->

  
  <link href="img/favicon.png" rel="icon">
  
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
 

  <!-- Vendor CSS Files -->
  <link href="aos.css" rel="stylesheet">
  
  <link href="bootstrap.min.css" rel="stylesheet">
  
  <link href="bootstrap-icons.css" rel="stylesheet">
  
  <link href="boxicons.min.css" rel="stylesheet">
  
  <link href="glightbox.min.css" rel="stylesheet">
  
  <link href="remixicon.css" rel="stylesheet">
  
  <link href="swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="style2.css" rel="stylesheet">
  <link href="Style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Gp - v4.7.0
  * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
 
        <section id="longterm" class="contact">
      <div class="container" data-aos="zoom-in">

        		
	
		                <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from posted where posted_id="+id;
rs = statement.executeQuery(sql);
while(rs.next()){
%>				
                        
             <form action="Updateservelet" method="post" enctype="multipart/form-data">
             

	              <table class="table_to_post   bg-dark">
	              
	              <th><span>Write down all information to post</span></th>
	              		
	              			<tr><td><input type="text" name="title" placeholder="Type job title" value="<%=rs.getString("title") %>"></td></tr>
	              			
							<tr><td><textarea rows="" class="group bg-lidht"  cols="" name="description" value="<%=rs.getString("description") %>" placeholder="Describe a job  maximum 10 words"></textarea></td></tr>
							<tr><td><input type="file" class="group" name="image" placeholder="Upload image" value="<%=rs.getString("image") %>"></td></tr>
							<tr><td><input type="text" class="group" name="type" placeholder="Part or full time"value="<%=rs.getString("type") %>"></td></tr>
							<tr><td><input type="text" class="group" name="username" placeholder="Enter username" value="<%=rs.getString("username") %>"></td></tr>
							<tr><td><input type="submit" class="group" value="Update"></td><td></tr>
							
	              
	              </table>
              </form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

    </section><!-- End Contact Section -->
  </main><!-- End #main -->


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="purecounter.js"></script>
  <script src="aos.js"></script>
  <script src="bootstrap.bundle.min.js"></script>
  <script src="glightbox.min.js"></script>
  <script src="sotope.pkgd.min.js"></script>
  <script src="swiper-bundle.min.js"></script>
  <script src="validate.js"></script>

  <!-- Template Main JS File -->
  <script src="main.js"></script>

</body>

</html>