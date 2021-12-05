<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job hunter</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
<div class="row">
    <div class="col-md-9 mx-auto p-0 ">
        <div class="card">
            <div class="login-box">
                <div class="login-snip bg-light"> <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> 
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                    <div class="login-space">
                    
                     <form action="loginservelet" method="post">
                     
                        <div class="login">
                            <div class="group">  <input id="user" type="text" class="input" placeholder="Enter your username" name="username"> </div>
                            <div class="group">  <input id="pass" type="password" class="input" data-type="password" placeholder="Enter your password" name="passwd"> </div>               
                            <div class="group"> <input type="submit" class="button" value="Sign In"> </div>
                            <div class="hr"></div>
                            <div class="foot"> <a href="index.jsp">Home</a> </div>
                        </div>
                        </form>
                        
                        <form action="Signup" method="post" enctype="multipart/form-data">
                        <div class="sign-up-form">
                            <div class="group"> <input id="user" type="text" class="input" placeholder="Enter Lastname" name="lname"> </div>
                            <div class="group">  <input id="pass" type="text" class="input" placeholder="Enter First Name" name="fname"> </div>
                            <div class="group"> <input id="pass" type="text" class="input"  placeholder="Age" name="age"></div>
                            <div class="group">  <input id="pass" type="text" class="input" placeholder="Enter Gender" name="gender"> </div>
                            <div class="group"> <input id="user1" type="email" class="input" placeholder="Enter email" name="email"> </div>                        
                            <div class="group"> <input id="pass" type="text" class="input" placeholder="Mobile number" name="mnmber"> </div> 
                             <input id="group" type="file" class="input group"  value="imager"  name="imgUpload">
                            
                             <div class="group"> <input id="pass" type="text" class="input" placeholder="Create username" name="username"> </div>                   
                            <div class="group"> <input id="pass" type="password" class="input" placeholder="Create Password" name="passwd"> </div>
                            <div class="group"> <input type="submit" class="button" value="Sign Up"> </div>
                            
                            
                            <div class="foot"> <label for="tab-1">Already Member?</label> </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

