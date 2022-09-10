<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>SFC e-Flora | Admin Login </title>
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <!-- Style Sheets -->
    <link rel="stylesheet" href="CSS/recurrentStyle.css">
    <link rel="stylesheet" href="CSS/login.css">
    <link rel="stylesheet" href="CSS/nav_footer.css">
    <!-- JavaScript -->
    <script defer src="JS/login.js"></script>
	  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/b7670464f6.js" crossorigin="anonymous"></script>
    

</head>

<body>

 <!-- Navigation Bar Start -->
  	<div id="nav-placeholder">

	</div>	
	
	<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$.get("navigation.html", function(data){
    $("#nav-placeholder").replaceWith(data);
});
</script>	
  <!-- Navigation Bar End -->



	


	
    <section class="d-flex justify-content-center align-items-center">
        
            <!-- <div class="d-flex justify-content-center align-items center"> -->
                <div class="vertical-center ">
                <div class="container px-0 card_face row">
                    <div class="d-none d-md-block col-6 p-0">
                    	
                    	<img src="img/p3.JPG" alt="" class="image">
                    	
                    </div>
                    <div class="card_body col-md-6 col-12">
                        <form action="loginServlet" method="post" class="row g-4 d-flex align-items-center justify-content-center">
					
							<div>
								<h2>ADMIN LOGIN</h2>
							</div>
							
							<%
					String loginfail = (String) session.getAttribute("login-fail");
					if (loginfail != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=loginfail%>
					</div>
					<%
					session.removeAttribute("login-fail");
					}
					%>
					<%
					String loginerror = (String) session.getAttribute("login-error");
					if (loginerror != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=loginerror%></div>
					<%
					session.removeAttribute("login-error");
					}
					%>

					<%
					String logout = (String) session.getAttribute("logout1");
					if (logout != null) {
					%>
					<div class="alert alert-success" role="alert"><%=logout%></div>
					<%
					session.removeAttribute("logout1");
					}
					%>
					
					
                            <div class="col-12  align-items-end">
                                <label for="email_login">Email Address</label>
                                <input type="email" class="form-control content" id="email_login" name="t1"
                                    placeholder="Enter a registered Email Address" required>
                            </div>
                            <div class="col-12  align-items-end">
                                <label for="password_login">Password</label>
                                <input type="password" class="form-control content" id="password_login" name="t2"
                                    placeholder="Enter Password" required>
                                
                            </div>
                            
                            <div class=" col-12 d-flex justify-content-center ">
                                <button style="margin-left: 6px;" class="btn content button_s1" type="submit">Login</button>

                            </div>
                    
                        </form>
                    </div>
                </div>
                </div>
       <!--  </div>   -->  

        


    </section>
    
    
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init({
    	duration: 1000,
    });
  </script>
   <script  src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    </body>
    </html>