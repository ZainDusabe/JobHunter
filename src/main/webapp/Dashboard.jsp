    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Job hunter</title>
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
		<%
			response.setHeader("cache-control","no-cache,no-store,must-validate");//http 1.1
			response.setHeader("progma", "no-cache");// HTTP 1.0
			response.setHeader("Expires", "0");//proxies
			
			if(session.getAttribute("username")==null){
				response.sendRedirect("Account.jsp");
			}
		
		%>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top bg-light">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <h1 class="logo"><a href="Dashboard.jsp">${username}<span></span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="#shortterm">Recent post</a></li>
          <li class="nav-link"><a href="#longterm"><span>Post Job</span></a>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>

      </nav><!-- .navbar -->
		<form action="Logout" method="post">
      		<input type="submit" value="Logout" class="get-started-btn scrollto bg-dark">
		</form>
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
 
  <main id="main">
  
    
    
    
    
    
      <section id="shortterm" class="contact">
      <div class="container" data-aos="fade-up">

        		
		<div class="div_content_dashboard">

				<div  class="second_content">
							
			            <table class="table table-striped">
			              <thead>
			                <tr>  <th>Your Recent posts are</th></tr>
			                 <tr>
			                  <th>First Name</th>
			                  <th>Description</th>
			                  <th>Last Name</th>
			                </tr>
			              </thead>
			              <tbody>
			                <tr>
			                <%
			                  try {
			                Class.forName("com.mysql.cj.jdbc.Driver");
			                
			                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobopportunity","root","");
			                String Query="SELECT * FROM posted";
			                
			               
			                
			                Statement stm=conn.createStatement();
			                ResultSet rs=stm.executeQuery(Query);
			                while(rs.next())
			                {
			                %>
			                
			               			
			                <td><%=rs.getString("title") %></td>
			                         <td><%=rs.getString("description") %></td>
			                         <td><%=rs.getString("image") %></td>
			                         <td><a href="updateposted.jsp?id=<%=rs.getString("posted_id")%>"><button class="get-started-btn scrollto bg-dark">Update</button></a></td>

			                         <td><a href="delete1foralluser.jsp?id=<%=rs.getString("posted_id") %>"> <button class="get-started-btn scrollto bg-dark">Delete</button></a></td>
			                
			                   </tr>   
			                <%
			                }
			                  }
			                catch(Exception ex){
			                out.println("Exception:"+ex.getMessage());
			                ex.printStackTrace();
			                }
			                %>
		<!-- String Query="SELECT * FROM posted WHERE uname =user"+user; -->	                 
		
			               
			              </tbody>
			            </table>
				</div>
	</div>
      </div>
    </section><!-- End Contact Section -->
    
    
    
        <section id="longterm" class="contact">
      <div class="container" data-aos="fade-up">

        		
	
						
                        
             <form action="postServer" method="post" enctype="multipart/form-data">
	              <table class="table_to_post">
	              
	              <th><span>Write down all information to post</span></th>
	              		
	              			<tr><td><input type="text" name="title" placeholder="Type job title"></td></tr>
	              			
							<tr><td><textarea rows="" class="group bg-lidht"  cols="" name="description" placeholder="Describe a job  maximum 10 words"></textarea></td></tr>
							<tr><td><input type="file" class="group" name="image" placeholder="Upload jpg image"></td></tr>
							<tr><td><input type="text" class="group" name="type" placeholder="Part or full time"></td></tr>
							<tr><td><input type="text" class="group" name="username" placeholder="Enter username"></td></tr>
							<tr><td><input type="submit" class="group" value="Post"></td><td></tr>
							
	              
	              </table>
              </form>
	</div>

    </section><!-- End Contact Section -->
    
 <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>

       

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p> KN53 Street, Kigali , NY 52</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>info@getjob.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+250 780314784</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
    
      
    

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
  


    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Job Opportunity</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/ -->
        Designed by <a href="#">Ramadhan</a>
      </div>
    </div>
  </footer><!-- End Footer -->


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