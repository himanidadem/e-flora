<%@ page language="java" contentType="text/html; charset=UTF-8"%>
 <%@page import="user.*"%>
<%@page import="DAO.*"%>
<%@page import="database.DBConnect"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<!-- Animation AOS -->
	  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
	  
  <title>SFC e-Flora | Flora </title>
  <link rel="icon" href="img/favicon.png" type="image/x-icon">
  <!-- Style Sheets -->
  <link rel="stylesheet" href="CSS/recurrentStyle.css">
  <link rel="stylesheet" href="CSS/flora.css">
  <link rel="stylesheet" href="CSS/nav_footer.css">
  <!-- JavaScript -->
  <script defer src="JS/flora.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/b7670464f6.js" crossorigin="anonymous"></script>
  

</head>

<body onload="autofocus()">
	
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
 


  <!-- Parallax effect and Selection Menu Start -->
  <section>
    <div class="parallax">
      <div id="parallax_heading">
        FLORA
      </div>
    </div>

    <div class="container selection" id="filterbar" tabindex="1" >
      
        <div class="row " data-aos="fade-up">
          <div class="col-lg-4 col-md-4 col-12 ">
            <div class="row">
              
              
              <form action="florasearch.jsp" method="post" autocomplete="off" class="mt-3">
              <ul class="px-0">
                <li class="heading_font">Search : <i class="fas fa-search"></i>
                
                </li>  
                <li>
                <div class="input-group mb-3">
                	<input class="form-control silent_text content" id="search_bar" type="search"
                    placeholder="Scientific/Vernacular/Common Name" aria-label="search" name="search">
                	
                	<!-- <input type="submit" value="Search" id="search"  class="btn btn-outline-dark"> -->
                	<button class="btn btn-outline-dark" type="submit" value="Search" id="search"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
</svg></button>
                </div>
                </li>
                    
               
                
              </ul>
              </form>
            </div>
            <div class="row ">
              <ul class="mb-0">
                <li class="heading_font">Sort By : 
                <li class="silent_text content">Alphabetical Order Of:</li>
                <div class="row">
                <div class="col-xxl-6 col-xl-7 col-lg-10 col-md-10 col-7 pe-0">  
                
                <li class="attribute_font">     
                <div style="margin-left: 6px; background-color: var(--primary-color); border-radius:0.25rem" class="py-1 px-2 mb-1 content">                          
                <a href="florasname.jsp"><label for="sname">Scientific Name</label></a>
                </div> 
                </li> 
                
                <li class="attribute_font">   
                <div style="margin-left: 6px; background-color: var(--primary-color); border-radius:0.25rem" class="py-1 px-2 mt-1 content">             
                <a href="floracname.jsp"><label for="cname">Common Name </label></a>
                </div>
                </li>
                 
                </div>
                <div class="col-xxl-6 col-xl-5 col-lg-2 col-md-2 col-5 py-lg-3 py-4 px-0">
                <a href="florasname.jsp" style="text-decoration:none; color:black">
                	<i class="fas fa-sort"></i>
                </a>
                </div>
                </div>
              </ul>
            </div>
            
          </div>
		
		
          <div class="col-lg-8 col-md-8 col-12 ">
          <form action="florafilter.jsp" method="post">	
            <div class="row ">
              <div class="col-12 mt-2">
                <span class="heading_font">Filter By : <i class="fas fa-filter"></i></span>
              </div>
            </div>
            <div class="row content">
              <div class="col-lg-6 col-md-6 col-12 ">
                <ul class="px-0">
                  
                  
                  <li>
                    <select class="form-select attribute_font drop_down m-1" name="part">
                      <option selected>Useful Part</option>
                       <%	
                       treesDAO obj = new treesDAO(DBConnect.getconn());
					List<trees> post1 = obj.getpart();
					for (trees po : post1) {
					%>
                        <option value="<%=po.getPart()%>"><%=po.getPart()%> </option>
                    <%
					}
                    %> 
                    </select>
                  </li>
                  <li>
                    <select class="form-select attribute_font drop_down m-1" name="ccat">
                      <option selected>Category</option>
                      <%	
					List<trees> post3 = obj.getccat();
					for (trees po : post3) {
					%>
                        <option value="<%=po.getCcat() %>"><%=po.getCcat() %> </option>
                    <%
					}
                    %> 
                    </select>
                  </li>

                </ul>
              </div>
              <div class="col-lg-6 col-md-6 col-12 ">
                <ul class="px-0">
                
                  <li>
                    <select class="form-select attribute_font drop_down m-1" name="location">
                      <option selected>Campus Location</option>
                      <option value="Aaram Viram">AARAM VIRAM</option>
                      <option value="Volleyball Court">VOLLEYBALL COURT</option>
                        <%	
                        
					List<trees> post4 = obj.getlocation();
					for (trees po : post4) {
					%>
                        <option value="<%=po.getLocation() %>"><%=po.getLocation() %> </option>
                    <%
					}
                    %> 
                    </select>
                  </li>
                  
                  <li>
                    <select class="form-select attribute_font drop_down m-1" name="rtype">
                      <option selected>Root System</option>
                       <%	
					List<trees> post2 = obj.getrtype();
					for (trees po : post2) {
					%>
                        <option value="<%=po.getRtype()%>"><%=po.getRtype()%> </option>
                    <%
					}
                    %> 
                    </select>
                  </li>
                  
                </ul>
              </div>
            </div>
            
            <div class="row ">
              <div class="col-12 d-flex justify-content-center ">
                <!-- <button type="button" class="btn btn-outline-light">Light</button> -->
                <input type="reset" value="Reset" style="margin-left: 6px;" class="btn btn-outline-dark " onclick="window.location.href='./flora.jsp'">
                <input type="submit" value="Apply" style="margin-left: 6px;" class="btn content button_s1" >
              </div>
              
            </div>
            </form>
          </div>
      
        </div>
    </div>


  </section>
  <!-- Parallax effect and Selection Menu End -->

  

  <section >
    <div class="container mt-5">
      <div class="row g-2 ">
     		 <%	
					List<trees> post = obj.getdatacname();
					for (trees po : post) {
					
						
				%>
      	<div class="col-sm-6 col-md-4 col-xl-3 " id="resultset" tabindex="1">
          <div class="image_container" onclick="location.href='./t1.jsp?pid=<%=po.getPid()%>'" data-aos="fade">
            <img class="image" src="<%=po.getLink1() %>" alt="img" width="1000px" height="800px" >
            <div class="image_content">
              <span class="image_name"><%=po.getCname() %> 
              
              </span>
            </div>
          </div>
        </div>
        
      <%
						
					}
      %>
      
        
        
      </div>
    </div>
  </section>






  









  <!-- <section class="mt-3 ">
    <nav aria-label="Page navigation example">
      <ul class="pagination justify-content-center">
        <li class="page-item disabled">
          <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">4</a></li>
        <li class="page-item">
          <a class="page-link" href="#">Next</a>
        </li>
      </ul>
    </nav>
  </section> -->



  <!-- Footer section Start-->
  	<div id="footer-placeholder">

	</div>	
	
	
	<script>
	$.get("footer.html", function(data){
	    $("#footer-placeholder").replaceWith(data);
	});
	</script>
  <!-- Footer section End -->






  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script> -->
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init({
    	duration: 1000,
    });
  </script>
   <script  src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
</body>

</html>