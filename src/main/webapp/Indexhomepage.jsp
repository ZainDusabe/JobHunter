<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http.equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get or Give Jobs</title>
    <link rel="stylesheet" href="Style.css"> 
    
    <script>
    		function myfunction1(){
    			var x = document.getElementById("myinput");
    			if(x.type === "password"){
    				x.type = "text";
    			}else{
    				x.type = "password";
    			}
    		}
    		function myfunction(){
    			window.open("Enter username","Enter password")
    		}
    </script>
</head>
<body>
	<div class="header_banner">
    	<div class="icon">
                <h2 class="logo">GGJobs</h2>

            </div>
            
            
            
                    <div class="navbar">
          

            <div class="menu">
                <div class="menulink"> <a href="#">Design</a></div>
                  <div class="menulink"> <a href="#">Help</a></div>
                  	    <div class="dropdown">
	                	<span>Job Category</span>
		                	<div class="dropdown_content">
		                			<a href="#" id="mydashbod" onclick="myfunction()">Salary</a>
		                			<a href="Registrationpage.jsp">Wadje</a>
		                			
		                	</div>
		             </div> 
		             
		             <div class="menulink"> <a href="Account.jsp">Account</a></div>
            </div>

            <div class="search">
                <input type="search" class="srch" name=""  placeholder=" Search items" required >
                <a href="#"><button class="btn"> Search</button></a>
            </div>

        </div>   
            
    	</div>

    <div class="main">
    
    	
        <div class="navbar">
          


        </div>   

         <div class="content">
          <div class="content_img_mover">
          		<img alt="" src="r10.jpg">
          
          </div>

                            
                

             <form  action="KshoploginServer" method="post">
                <div class="signinform">
                    <h2>Login Here!</h2>
                    <input type="text" name=username placeholder="Enter  Username Here" required>
                    <input type="password" name="passwd" id="myinput"  placeholder="Enter Password Here" required>
                    
                    <button  type="submit" class="login_btn"> Sign in  </button>

                    <p class="no_account_link"> Don't have an account?<br>
                        <a href="Account.jsp"> Sign up</a> here</p>
                    <p class="login_linkof_email"><a href="#">Login with </a> </p>

                    <div class="login_icons_for_medias">
                        <a href="#"><ion-icon name="logo-facebook"> </ion-icon></a>
                        <a href="#"><ion-icon name="logo-google"> </ion-icon></a>
                        <a href="#"><ion-icon name="logo-linkedin"> </ion-icon></a>
                        <a href="#"><ion-icon name="logo-twitter"> </ion-icon></a>
                        <a href="#"><ion-icon name="logo-instagram"> </ion-icon></a>
                    </div>
                </div>
            </form>


            </div>


         </div>
    </div>
    
	<footer class="footer">
		<div></div><div></div>
	</footer>
</body>
</html>

 