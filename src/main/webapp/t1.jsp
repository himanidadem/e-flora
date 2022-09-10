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
	  
	  <%
	  if(request.getParameter("pid")!=null){
	  
	  int id =Integer.parseInt(request.getParameter("pid")) ;
	    treesDAO obj=new treesDAO(DBConnect.getconn());
	    trees p=obj.getdatabyid(id);
	    if(p!=null)
    	{
	  %>

  <title>SFC e-Flora | <%=p.getSname() %> </title>
  
  <%} else{%>
	    
	
		 <title>SFC e-Flora | Flora </title>
	<% }%>

    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <!-- Style Sheets -->
    <link rel="stylesheet" href="CSS/recurrentStyle.css">
    <link rel="stylesheet" href="CSS/t1.css">
    <link rel="stylesheet" href="CSS/nav_footer.css">
    <!-- JavaScript -->
 <!-- JavaScript -->
  <script defer src="JS/flora.js"></script>
  <script defer src="JS/light_box.js"></script>
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



<%
     		
     			 
     		 
	/* int id =Integer.parseInt(request.getParameter("pid")) ;
    treesDAO obj=new treesDAO(DBConnect.getconn());
    trees p=obj.getdatabyid(id); */
    if(p!=null)
	{
    		
    	
    
	%>
    <!-- Parallax and Tree Info Section Start  -->
    <section class="mb-5">
        <div class="parallax">
            <div id="parallax_heading">
                FLORA
            </div>
        </div>
        <div class="container heading_section text-center" id="resultset" tabindex="1">
        
            <div class="row">
            	<%
              			if(p.getSname().isEmpty()==false){
              				
              			
              		%>
                <div class="col-12 ">             		
                    <span class="scific_name" data-aos="fade-up"><%=p.getSname()%>    
                    </span>   
                </div>
                     <%
              			}
                    %>
                    
                    <%
              			if(p.getHname().isEmpty()==false){              				              			
              		%>
                <div class="col-12 ">
                    <span class="hindi_name" data-aos="fade-up"><%=p.getHname()%></span>
                </div>
                	<%
              			}
                    %>
                <%
              			if(p.getTname().isEmpty()==false){              				              			
              		%>
                <div class="col-12 ">
                    <span class="telugu_name" data-aos="fade-up"><%=p.getTname()%></span>
                </div>
                <%
              			}
                    %>
            </div>
        </div>
        <div class="container-fluid fields_section px-lg-5 py-lg-5 px-3 py-4">
            <ul >
           		 <%   if(p.getFamily().isEmpty()==false){%>         		 
                <li data-aos="fade-up">
                    <span class="field_name">FAMILY: &nbsp;</span>
                    <span class="content"><%=p.getFamily()%></span>
                </li>
                <%} if(p.getCname().isEmpty()==false) {%>
                <li data-aos="fade-up">
                    <span class="field_name">COMMON NAME: &nbsp;</span>
                    <span class="content"><%=p.getCname()%></span>
                </li >
                
                
        
                 <%}  if(p.getVname().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">VERNACULAR NAME: &nbsp;</span>
                    <span class="content"><%=p.getVname()%></span>
                </li >
                <%}  if(p.getPart().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">USEFUL PART: &nbsp;</span>
                    <span class="content"><%=p.getPart()%></span>
                </li>
                <%}  if(p.getUses().isEmpty()==false){%>     
               <li data-aos="fade-up">
                    <span class="field_name">USES/MEDICINAL USES: &nbsp;</span>
                    <span class="content"><%=p.getUses()%></span>
                </li>
                <%}  if(p.getPeriod().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">FLOWERING PERIOD: &nbsp;</span>
                    <span class="content"><%=p.getPeriod()%></span>
                </li>
                <%} if(p.getRtype().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">ROOT TYPE: &nbsp;</span>
                    <span class="content"><%=p.getRtype()%></span>
                </li>
                <%}  if(p.getHabitat().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">HABITAT: &nbsp;</span>
                    <span class="content"><%=p.getHabitat()%></span>
                </li>
                <%}  if(p.getCat().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">CATEGORY: &nbsp;</span>
                    <span class="content"><%=p.getCat()%></span>
                </li>
                <%}  if(p.getLocation().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">CAMPUS LOCATION: &nbsp;</span>
                    <span class="content"><%=p.getLocation()%></span>
                </li>
                <%}  if(p.getKey().isEmpty()==false){%>     
                <li data-aos="fade-up">
                    <span class="field_name">KEY CHARACTERISTICS: &nbsp;</span>
                    <span class="content"><%=p.getKey()%></span>
                </li>
                <%}%>

            </ul>
        </div>
    </section>
    <!-- Parallax and Tree Info Section End  -->


    <!-- Photo Gallery Start -->
    <section>
        <div class="container mt-5"> 
            <div id="photo_gallery_heading" class="d-flex justify-content-center title" data-aos="fade-up">
                Photo Gallery
            </div>    
                <div class="row" data-aos="fade-up">
                    <div class="col-lg-3 col-md-6 col-12 p-1">
                        <div class="image_container">
                            <img class="image" id="image1" src="<%=p.getLink1()%>">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-12 p-1">
                        <div class="image_container">
                            <img class="image" id="image2" src="<%=p.getLink2()%>">
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12 p-1" >
                        <div class="image_container">
                            <img class="image" id="image3" src="<%=p.getLink3()%>">
                        </div>
                    </div>
                
                    <div class="col-lg-4 col-md-6 col-12 p-1">
                        <div class="image_container">
                            <img class="image" id="image4" src="<%=p.getLink4()%>">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12 p-1">
                        <div class="image_container">
                            <img class="image" id="image5" src="<%=p.getLink5()%>">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12 p-1">
                        <div class="image_container">
                            <img class="image" id="image6" src="<%=p.getLink6()%>">
                        </div>
                    </div>
                </div>
        </div>
    </section>
    <!-- Photo Gallery End -->


<%
    	}
     		 }
%>



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