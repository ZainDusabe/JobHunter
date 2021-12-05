    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 

  <!-- image selector -->
<%@page import="com.mysql.cj.exceptions.RSAException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
  <!-- image selector end -->
    
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
	     <%

			//String id = request.getParameter("userid");
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
			ResultSet resultSet = null;
	

	//rs.setBlob("img")
	%>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="index.jsp">JobHunter<span></span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="#testimonials">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
          <li class="dropdown"><a href="#"><span>Job Category</span></a>
            <ul>
              <li><a href="#longterm">Long term</a></li>
              <li><a href="#shortterm">Short term</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->

      <a href="Account.jsp" class="get-started-btn scrollto bg-dark">Account</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
 
  <main id="main">
    <section id="testimonials" class="testimonials">
    
      <div class="container" data-aos="zoom-in">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">
				         <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from posted";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="images/<%=resultSet.getString("image") %>" class="testimonial-img" alt="">
                <h3><%=resultSet.getString("title") %></h3>           
                <p>

                 <%=resultSet.getString("description") %>

                </p>
              </div>
            </div><!-- End testimonial item -->
            
            <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
            </div><!-- End testimonial item -->
          </div>
          <div class="swiper-pagination"></div>
        </div>

      
    </section>


    <!-- ======= About Section ======= -->
   <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
            <h3>This site is a compilation of unique techniques, and tips for job seeking.</h3>
            <p class="fst-italic">
             Job give and get website work as intermediate between job seeker and job giver. All you have to do is the following :
            </p>
            <ul>
              <li>Create user account in order to sign in</li>
              <li>Enter your personal information and your educational qualification</li>
              <li>Specify which jop you are applying for</li>
            </ul>
            <p>
            <h4>
            This site requires your interaction and your personal touch. 
			And it is not a guarantee of a job offer. Properly used and applied,
			 it will lead you to the job offer. But there is a great deal of personal 
			 effort that you will need to provide in between. Never underestimate the 
			 amount of time necessary to find the very best position. Job search is a
			  full-time job. You have invested a large amount of time and money in your
			   education. As the payoff nears, do not sell yourself short in this, 
			   the all-important final lap.

			</h4>
			
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Clients Section ======= -->
 
 
    
    <!-- ======= Counts Section ======= -->

    <!-- ======= Testimonials Section ======= -->
<!-- End Testimonials Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Team</h2>
          <p>Check our Team</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="img/team/zain.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>Ramazani Dusabe</h4>
                <span>Chief Executive Officer</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="member-img">
                <img src="img/team/team-3.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>Confiance Mugisha</h4>
                <span>Product Manage</span>
              </div>
            </div>
          </div>
                 <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="member-img">
                <img src="img/team/team-3.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>Cythia Mugisha</h4>
                <span>Product Manage</span>
              </div>
            </div>
          </div>

   
        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
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
                <p>info@jobhunter.com</p>
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
    
    
    
    
    
        <section id="longterm" class="contact">
      <div class="container" data-aos="fade-up">

        		
		<div class="div_content_dashboard">
				<div  class="second_content">
							
			            <table class="table table-striped">
			              <thead>
			               
			                <tr>  <th>People who are searching job for full  time</th></tr>
			                 <tr>
			                  <th>Title</th>
			                  <th>Description</th>
			                </tr>
			              </thead>
			              <tbody>
			                <tr>
			                <%
			                  try {
			                Class.forName("com.mysql.cj.jdbc.Driver");
			                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobopportunity","root","");
			                String Query="SELECT * FROM posted where type='full'";
			                Statement stm=conn.createStatement();
			                ResultSet rs=stm.executeQuery(Query);
			                while(rs.next())
			                {
			                %>
			               
			                <td><%=rs.getString("title") %></td>
			                <td><%=rs.getString("description") %></td>

			                </tr>
			                      
			                <%
			                }
			                  }
			                catch(Exception ex){
			                out.println("Exception:"+ex.getMessage());
			                ex.printStackTrace();
			                }
			                %>
			                 
			                </tr>
			              
			              </tbody>
			            </table>
				</div>
	</div>
      </div>
    </section><!-- End Contact Section -->
    
    
    
    
    
      <section id="shortterm" class="contact">
      <div class="container" data-aos="fade-up">

        		
		<div class="div_content_dashboard">
				<div  class="second_content">
							
			            <table class="table table-striped">
			              <thead>
			                <tr>  <th>People who are searching job for short term</th></tr>
			                 <tr>
			                  <th>First Name</th>
			                  <th>Last Name</th>
			                </tr>
			              </thead>
			              <tbody>
			                <tr>
			                <%
			                  try {
			                Class.forName("com.mysql.cj.jdbc.Driver");
			                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobopportunity","root","");
			                
			                String Query="SELECT * FROM posted where type='part'";
			                Statement stm=conn.createStatement();
			                ResultSet rs=stm.executeQuery(Query);
			                while(rs.next())
			                {
			                %>
			               
			               
			                <td><%=rs.getString("title") %></td>
			                <td><%=rs.getString("description") %></td>
			                
			                   </tr>   
			                <%
			                }
			                  }
			                catch(Exception ex){
			                out.println("Exception:"+ex.getMessage());
			                ex.printStackTrace();
			                }
			                %>
			                 
		
			               
			              </tbody>
			            </table>
				</div>
	</div>
      </div>
    </section><!-- End Contact Section -->
    
    
    
    
    
    

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>JobSite<span>.</span></h3>
              <p>
                K108 Kacyiru Street <br>
                KG 53, Kigali<br><br>
                <strong>Phone:</strong> +250 780 314 784<br>
                <strong>Email:</strong> info@jobhunter.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"></a>
                <a href="#" class="facebook"></a>
                <a href="#" class="instagram"></a>
                <a href="#" class="google-plus"></a>
                <a href="#" class="linkedin"></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li> <a href="index.jsp">Home</a></li>
              <li> <a href="#about">About us</a></li>
              <li> <a href="Account.jsp">Sign Up</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4></h4>
            <ul>
              <li> <a href="#"></a></li>
              <li><a href="#"></a></li>
              <li> <a href="#"></a></li>
              <li> <a href="#"></a></li>
              <li><a href="#"></a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Please make subsciption so that you can get latest updates</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Job hunter</span></strong>. All Rights Reserved
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


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"></a>

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