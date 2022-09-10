<%@ page language="java" contentType="text/html; charset=UTF-8"%>
 <%@page import="user.*"%>
<%@page import="DAO.*"%>
<%@page import="database.DBConnect"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
	<%
user1 user2 = (user1) session.getAttribute("userd");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login!!!");
}
%>


    <head>
         <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Admin View</title>
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <!-- Style Sheets -->
    <link rel="stylesheet" href="CSS/recurrentStyle.css">
    <link rel="stylesheet" href="CSS/t1.css">
    <link rel="stylesheet" href="CSS/viewDB.css">
   <!--  <link rel="stylesheet" href="CSS/nav_footer.css"> -->
    <!-- JavaScript -->
  <script defer src="JS/light_box.js"></script>
    <script src="JS/nav_footer.js"></script>
    
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/b7670464f6.js" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;700&family=Smooch&family=Suranna&family=Ubuntu:wght@300&display=swap');
    </style>
    </head>

<body>


   <!-- offcanvas start -->
    <div class="sidebar-nav">
        <nav class="navbar navbar-dark sticky-top">
            <div class="container-fluid">
                <!-- Mobile Menu Toggle Button -->
                <div class="me-auto mb-2 mb-lg-0">
                	
                <a class="navbar-brand" id="sfc_logo" target="_blank" href="https://www.sfc.ac.in/">
   				     <img src="img/sfc_logo.png" alt="Sfc Logo" class="img img-responsive">
     			 </a>	
     			 
                </div>
                
                <div class="d-flex justify-content-md-center heading">
            	Demo View
       			 </div> 
                <!-- Menus List -->

                
				
				<div class="ms-auto mb-2 mb-lg-0">
                <div class="btn-group">
                	 
                    <a href="#" class="dropdown-toggle text-dark text-decoration-none" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <%
                        if(user2!=null)
                        {
                        %>
                        <span class="textnone"><%=user2.getName()%></span>
                        <%
                        }
                        %>
                    </a>
                    <ul class=" dropdown-menu dropdown-menu-end">

                        <li>
                        <a href="logoutservlet" class="btn btn-light my-2 my-sm-0 ml-2 mr-2"
				type="submit">Sign Out</a>
                        </li>
                        
                    </ul>
                    
                </div>
                <a id="dg_logo" class="navbar-brand ms-3" href="about.jsp">
  					      <img src="img/dg_logo.png" alt="Digital Garden Logo" class="img img-responsive">
  				    </a>
                </div>
            </div>
            </nav>
    </div>
    <!-- Offcanvas End -->



<%
     		 if(request.getParameter("pid")!=null){
     			 
     		 
	int id =Integer.parseInt(request.getParameter("pid")) ;
    treesDAO obj=new treesDAO(DBConnect.getconn());
    trees p=obj.getdatabyid(id);
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
        <div class="container heading_section text-center">
        
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
            <div id="photo_gallery_heading" class="d-flex justify-content-center">
                Photo Gallery
            </div>    
                <div class="row">
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




   




    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script> -->
</body>

</html>