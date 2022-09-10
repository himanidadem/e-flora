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

        <title>Admin Portal-Edit Record</title>
        <link rel="icon" href="img/favicon.png" type="image/x-icon">
        <!-- Style Sheets -->
       <link rel="stylesheet" href="CSS/add_edit.css">
	   <link rel="stylesheet" href="CSS/recurrentStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
         <!-- JavaScript -->
 		 <script defer src="JS/light_box.js"></script>

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
            	Edit Record
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
    			
    	
    	      
    	<!-- Edit-Record Form Section Start -->
    <section >
        <div class="container add_edit_form my-5">
     		 <%
     		 if(request.getParameter("pid")!=null){
     			 
     		 
	int id =Integer.parseInt(request.getParameter("pid")) ;
    treesDAO obj=new treesDAO(DBConnect.getconn());
    trees p=obj.getdatabyid(id);
    	if(p!=null)
    	{
    		
    	
    
		%>
        
        
	
	
	
            <form  class="row g-4 pb-5" action="editservlet" autocomplete="off" method="post" enctype = "multipart/form-data">
            	<!-- <div class="col-12  "> -->
                   <!--  <label for="pid">Plant Id*</label> -->
                    <input type="text" class="form-control" id="pid" name="pid" required  value="<%=id%>" hidden>
                <!-- </div> -->
                
                <div class="col-md-6">
                    <label for="scientific_name">Scientific Name</label>
                    <input type="text" class="form-control" id="scientific_name" name="sname" value="<%=p.getSname()%>">
                </div>
                <div class="col-md-6">
                    <label for="family_name">Family</label>
                    <input type="text" class="form-control" id="family_name" name="family" value="<%=p.getFamily()%>">
                </div>
                <div class="col-md-6">
                    <label for="common_name">Common Name</label>
                    <input type="text" class="form-control" id="common_name" name="cname" value="<%=p.getCname()%>">
                </div>
                <div class="col-md-6">
                    <label for="vernacular_name">Vernacular Name</label>
                    <input type="text" class="form-control" id="vernacular_name" name="vname" value="<%=p.getVname()%>">
                </div>
                <div class="col-md-6">
                    <label for="hindi_name">Name in Hindi</label>
                    <input type="text" class="form-control" id="hindi_name" name="hname" value="<%=p.getHname()%>">
                </div>
                <div class="col-md-6">
                    <label for="telugu_name">Name in Telugu</label>
                    <input type="text" class="form-control" id="telugu_name" name="tname" value="<%=p.getTname()%>">
                </div>
                
                
                
                
                
                
                <div class="col-md-6">
                	
                	<label for="useful_part">Useful Part</label>
					<input list="useful_part"  name="part"  class="form-control selectpicker" value="<%=p.getPart()%>">
					 <datalist id="useful_part">
					 	
                   		 
						<%
                        List<trees> post1 = obj.getpart();
                        for (trees po : post1) {
                        %>
                        <option value="<%=po.getPart()%>">
                    <%
                    }
                    %> 
					</datalist>  
                
                                               
                
                
                    <%-- <label for="useful_part">Useful Part</label>
                    <select class="form-control selectpicker" name="part" id="useful_part" multiple data-live-search="true" >
                    <%
                    	if(p.getPart()!=null)
                    	{                    		
                    %>
                    <option selected value="<%=p.getPart()%>"><%=p.getPart()%></option>
                    <% 
                    	}
                    %>
                    
                     <%	
					List<trees> post1 = obj.getpart();
					for (trees po : post1) {								
					%>
                        <option value="<%=po.getPart()%>"><%=po.getPart()%> </option>
                    <%
					}
                    %>                                                                            
                    </select> --%>
                    
                </div>
                
                <div class="col-md-6   ">
                    <label for="uses">Uses/Medicinal Uses</label>
                    <input type="text" class="form-control" id="uses" name="uses" value="<%=p.getUses()%>">
                </div>
                <div class="col-md-6   ">
                
                <label for="flowering_period">Flowering Period</label>
					<input list="flowering_period" type="text" name="period"  class="form-control selectpicker" value="<%=p.getPeriod()%>">
					 <datalist id="flowering_period">
					 
						<%
                        List<trees> post2 = obj.getperiod();
                        for (trees po : post2) {
                        %>
                        <option value="<%=po.getPeriod()%>">
                    <%
                    }
                    %> 
					</datalist> 
                
                
                
                
                    <%-- <label for="flowering_period">Flowering Period</label>
                    <select class="form-control selectpicker" name="period" id="flowering_period" multiple data-live-search="true" >
                        <%
                    	if(p.getPeriod()!=null)
                    	{
                    		
                    %>
                    <option selected value="<%=p.getPeriod()%>"><%=p.getPeriod()%></option>
                    <% 
                    	}
                    %>
                    
                     <%	
					List<trees> post2 = obj.getperiod();
					for (trees po : post2) {
						
							
					%>
                        <option value="<%=po.getPeriod()%>"><%=po.getPeriod()%> </option>
                    <%
					
					}
                    %> 

                    </select> --%>
                    
                    
                </div>
                <div class="col-md-6   ">
                    <label for="root_type">Root Type</label>
                    <input type="text" class="form-control" id="rtype" name="rtype" value="<%=p.getRtype()%>">
                </div>
                <div class="col-md-6   ">
                    <label for="habitat">Habitat</label>
                    <input type="text" class="form-control" id="habitat" name="habitat" value="<%=p.getHabitat()%>">
                </div>
                
                <div class="col-md-6  ">
                
                
                	<label for="category">Category</label>                   
					<input list="category" type="text" name="cat"  class="form-control selectpicker" value="<%=p.getCat()%>">
					 <datalist id="category">
					
						<%
                        List<trees> post3 = obj.getcat();
                        for (trees po : post3) {
                        %>
                        <option value="<%=po.getCat()%>">
                    <%
                    }
                    %> 
					</datalist>
                
                    <%-- <label for="category">Category</label>
                    <select class="form-control selectpicker" name="cat" id="category"  data-live-search="true">
                        <option selected disabled>Choose an Option</option>                                                                                    
                    <%
                    	if(p.getCat()!=null)
                    	{
                    		
                    %>
                    <option selected value="<%=p.getCat()%>"><%=p.getCat()%></option>
                    <% 
                    	}
                    %>
                    
                     <%	
                     List<trees> post3 = obj.getcat();
					for (trees po : post3) {
						
							
					%>
                        <option value="<%=po.getCat()%>"><%=po.getCat()%> </option>
                    <%
					
					}
                    %> 
                    
                    </select> --%>
                    
                </div>
                
                <div class="col-md-6  ">
                    <label for="ccat">Type</label>
					<input list="ccat" type="text" name="ccat"  class="form-control selectpicker" value="<%=p.getCcat()%>">
					 <datalist id="ccat">
					 
						<%
                        List<trees> post4 = obj.getccat();
                        for (trees po : post4) {
                        %>
                        <option value="<%=po.getCcat()%>">
                    <%
                    }
                    %> 
					</datalist> 
                    
                    
                    <%-- <select class="form-control selectpicker" name="ccat"
						id="ccat" data-live-search="true">
                        <option selected disabled>Choose an Option</option>
                        <%
                        List<trees> post4 = obj.getccat();
                        for (trees po : post4) {
                        %>
                        <option value="<%=po.getCcat()%>"><%=po.getCcat()%> </option>
                    <%
                    }
                    %> 
                    </select> --%>
                    
                </div>
                
                
                <div class="col-md-6  ">
                
                
                <label for="location">Location</label>
					<input list="location" type="text" name="location"  class="form-control selectpicker" value="<%=p.getLocation()%>" required>
					 <datalist id="location">
					 
						<%
                        List<trees> post5 = obj.getlocation();
                        for (trees po : post5) {
                        %>
                        <option value="<%=po.getLocation()%>">
                    <%
                    }
                    %> 
					</datalist> 
                
                
                    <%-- <label for="location">Location*</label>
                    <select class="form-control selectpicker" name="location" id="location" multiple data-live-search="true" required >
                                          
                    <%
                    	if(p.getLocation()!=null)
                    	{
                    		
                    %>
                    <option selected value="<%=p.getLocation()%>"><%=p.getLocation()%></option>
                    <% 
                    	}
                    %>
                    
                     <%	
                     List<trees> post5 = obj.getlocation();
 					for (trees po : post5) {
						
					%>
                        <option value="<%=po.getLocation()%>"><%=po.getLocation()%> </option>
                    <%
					
 					}
                    %> 
                        

                    </select> --%>
                </div>
                
                <div class="col-12">
                    <label for="key_characteristics">Key Characteristics</label>
                    <input type="text" class="form-control" id="key_characteristics" name="key" value="<%=p.getKey()%>">
                </div>
                
                <div class="col-md-12 d-flex flex-column align-items-center my-3">
                    <label for="pic1">Picture Face</label>
                    <div class="col-12 p-0">
	                     <div class="image_container">
	                            <img class="image" id="image1" src="<%=p.getLink1()%>">
	                            <input type="text" value="<%=p.getLink1()%>" name="orglink1" hidden>
	                     </div>
                    <input type="file" class="form-control mt-3" id="link1"
						name="link1">
	                 </div>
                </div>
                
                
                <div class="col-md-12">
                   <div class="row">
	                    <div class="col-lg-6 col-md-6 col-12 p-1 my-3">
                    <label for="pic1">Picture 2</label>
	                        <div class="image_container">
	                            <img class="image" id="image2" src="<%=p.getLink2()%>">
	                            <input type="text" value="<%=p.getLink2()%>" name="orglink2" hidden>								
	                        </div>
	                        <input type="file" class="form-control mt-3" id="link2" name="link2">
	                    </div>
	                    
	                    <div class="col-lg-6 col-md-6 col-12 p-1 my-3" >
	                    <label for="pic1">Picture 3</label>
	                        <div class="image_container">
	                            <img class="image" id="image3" src="<%=p.getLink3()%>">
	                            <input type="text" value="<%=p.getLink3()%>" name="orglink3" hidden>
	                        </div>
	                        <input type="file" class="form-control mt-3" id="link3" name="link3">	
	                    </div>
	                
	                    <div class="col-lg-12 col-md-6 col-12 p-1 my-3">
	                    <label for="pic1">Picture 4</label>
	                        <div class="image_container">
	                            <img class="image" id="image4" src="<%=p.getLink4()%>">
	                            <input type="text" value="<%=p.getLink4()%>" name="orglink4" hidden>
								
	                        </div>
	                        <input type="file" class="form-control mt-3" id="link4" name="link4">	
	                        
	                    </div>
	                    <div class="col-lg-6 col-md-6 col-12 p-1 my-3">
	                    <label for="pic1">Picture 5</label>
	                        <div class="image_container">
	                            <img class="image" id="image5" src="<%=p.getLink5()%>">
	                            <input type="text" value="<%=p.getLink5()%>" name="orglink5" hidden>

	                        </div>
								<input type="file" class="form-control mt-3" id="link5" name="link5">	
	                    </div>
	                    <div class="col-lg-6 col-md-6 col-12 p-1 my-3">
	                    <label for="pic1">Picture 6</label>
	                        <div class="image_container">
	                            <img class="image" id="image6" src="<%=p.getLink6()%>">
	                            <input type="text" value="<%=p.getLink6()%>" name="orglink6" hidden>

	                        </div>
								<input type="file" class="form-control mt-3" id="link6" name="link6">		
	                    </div>
                    </div> 
                    
                    
                   
                </div>
                
                
                
                <div class=" col-12 d-flex justify-content-center ">
                    <button class="btn btn-block btn-dark" class="form-control" type="submit">UPDATE RECORD</button>

                </div>
                
                
                
                
            </form>
            
	<%
	
	}
     		 }	
    %>
            
        </div>
    </section>
    <!-- Edit-Record Form Section End -->
    
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>

</body>

</html>