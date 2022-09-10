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

        <title>Admin Portal-Edit/Delete Record</title>
        <link rel="icon" href="img/favicon.png" type="image/x-icon">
        <!-- Style Sheets -->
        <link rel="stylesheet" href="CSS/admin_home.css">
         <link rel="stylesheet" href="CSS/recurrentStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- JavaScript -->
		<script defer src="JS/admin_home.js"></script>
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
            	ADMIN-HOME
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
                        <a href="#" class="btn btn-light my-2 my-sm-0 ml-2 mr-2"
				data-bs-toggle="modal" data-bs-target="#createProfile">Create New Profile</a>
                        </li>
                        
                        
                        
                        <li>
                        <a href="#" class="btn btn-light my-2 my-sm-0 ml-2 mr-2"
				data-bs-toggle="modal" data-bs-target="#editProfile">Edit Profile</a>
                        </li>
                        
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
    
    
    <!-- Create new Profile Modal Start-->
					<div class="modal fade" id="createProfile" tabindex="-1" aria-labelledby="createProfileLabel" aria-hidden="true">
					
					  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
					    <div class="modal-content">
    	<form action="addadminservlet" method="post" class="row g-4 d-flex align-items-center justify-content-center">
					    
					      <div class="modal-header px-5">
					        <h5 class="modal-title" id="createProfileLabel">Create New Admin Profile</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        <div class="container">
					        	
					        	<%-- <%
					String passmismatch = (String) session.getAttribute("passmismatch");
					if (passmismatch != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=passmismatch%></div>
					<%
					
					}
					%> --%>
					        		<div class="col-12">
						        		<label for="newName"><b>Name*</b></label>
						        		 <input type="text" class="form-control content" id="newName" name="t1" required>
                                    </div>
                                    <div class="col-12">
						        		<label for="newEmail"><b>E-Mail*</b></label>
						        		 <input type="email" class="form-control content" id="newEmail" name="t2" required>
                                    </div>
                                    <div class="col-12">
						        		<label for="pass"><b>Password*</b></label>
						        		 <input type="password" class="form-control content" id="pass" name="t3" required>
                                    </div>
                                    <div class="col-12">
						        		<label for="conPass"><b>Confirm Password*</b></label>
						        		 <input type="password" class="form-control content" id="conPass" name="t4" required>
                                    </div>
                                  
                                     
					        	
					        </div>
					        
					      </div>
					      <div class="modal-footer px-5">
					      <!-- <button type="button" class="btn btn-danger">Delete</button> -->
					      
					      
					      <button class="btn btn-warning" type="submit">Create</button>
					      
					       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					        
					      </div>
					      
					      
					      
					      </form>
					    </div>
					  </div>
					</div>
					
    <!-- Create new Profile Modal End-->
    
    
    <!-- Edit Profile Modal Start -->
					<div class="modal fade" id="editProfile" tabindex="-1" aria-labelledby="editProfileLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
					    <div class="modal-content">
					    <form action="editadminservlet" method="post" class="row g-4 d-flex align-items-center justify-content-center">
					      <div class="modal-header px-5">
					        <h5 class="modal-title" id="editProfileLabel">Edit Profile</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        <div class="container">
					        	
					        	
                                    <div class="col-12">
						        		<label for="exEmail"><b>E-Mail*</b></label>
						        		 <input type="email" class="form-control content" id="exEmail" name="p2" readonly="readonly" value="<%=user2.getId()%>">
                                    </div>
					        		<div class="col-12">
						        		<label for="exName"><b>Name*</b></label>
						        		 <input type="text" class="form-control content" id="exName" name="p1" value="<%=user2.getName()%>" required>
                                    </div>
                                    <div class="col-12">
						        		<label for="newPass"><b>New Password*</b></label>
						        		 <input type="password" class="form-control content" id="newPass" name="p3" required>
                                    </div>
                                    <div class="col-12">
						        		<label for="conNewPass"><b>Confirm New Password*</b></label>
						        		 <input type="password" class="form-control content" id="conNewPass" name="p4" required>
                                    </div>                 
                                                                                          					        	
					        </div>
					        
					      </div>
					      <div class="modal-footer px-5">
					      
					      <button class="btn btn-warning" type="submit">Confirm</button>
					       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					        
					      </div>
					      </form>
					    </div>
					  </div>
					</div> 
    <!-- Edit Profile Modal Start -->
    
    <!-- Offcanvas End -->
    	
    	
    	
    	<!-- Edit_Delete Record Form Section Start -->
    <%-- <section style="margin-top:130px; margin-bottom:20px;">
        
        
        <div class="container add_form ">
            
            <form  class="row g-4" action="deleteservlet">
            	<div class="col-12  ">
                    <label for="pid">Plant Id*</label>
                    <input type="text" class="form-control" id="pid" name="pid"  required>
                </div>
                
                <div class=" col-md-6 d-flex justify-content-center ">
                    <a class="btn btn-block btn-dark" href="edit.jsp?pid=<%=pid%>"
				type="submit">UPDATE RECORD</a>

                </div>
                <div class=" col-md-6 d-flex justify-content-center ">
                   <button type="submit" class="btn btn-block btn-dark">DELETE RECORD</button>

                </div>
            </form>

            
        </div>
    </section> --%>
    <!-- Edit_Delete Record Form Section End -->
    <%
					String paysuccess = (String) session.getAttribute("login-pass");
					if (paysuccess != null) {
					%>
					<div class="alert alert-success" role="alert"><%=paysuccess%></div>
					<%
					session.removeAttribute("login-pass");
					}
	%>
		
		<%
				String addsuc = (String) session.getAttribute("add-success");
				if (addsuc != null) {
				%>
				<div class="alert alert-success" role="alert"><%=addsuc%>
				</div>
				<%
				session.removeAttribute("add-success");
				}
				%>
			
				<%
				String addfail = (String) session.getAttribute("add-fail");
				if (addfail != null) {
				%>
				<div class="alert alert-danger" role="alert"><%=addfail%>
				</div>
				<%
				session.removeAttribute("add-fail");
				}
	%>
	
	
	
		
    
    <%
					String deletesuc = (String) session.getAttribute("delete-success");
					if (deletesuc != null) {
					%>
					<div class="alert alert-success" role="alert"><%=deletesuc%>
					</div>
					<%
					session.removeAttribute("delete-success");
					}
					%>
					
					<%
					String deletefail = (String) session.getAttribute("delete-fail");
					if (deletefail != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=deletefail%>
					</div>
					<%
					session.removeAttribute("delete-fail");
					}
	%>			
	
	
	<%
					String editsuc = (String) session.getAttribute("edit-success");
					if (editsuc != null) {
					%>
					<div class="alert alert-success" role="alert"><%=editsuc%>
					</div>
					<%
					session.removeAttribute("edit-success");
					}
					%>
					
					<%
					String editfail = (String) session.getAttribute("edit-fail");
					if (editfail != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=editfail%>
					</div>
					<%
					session.removeAttribute("edit-fail");
					}
	%>	
	
	
	<%
					String qrsuccess = (String) session.getAttribute("qr-success");
					if (qrsuccess != null) {
					%>
					<div class="alert alert-success" role="alert"><%=qrsuccess%>
					</div>
					<%
					session.removeAttribute("qr-success");
					}
					%>
					
					<%
					String qrfail = (String) session.getAttribute("qr-fail");
					if (qrfail != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=qrfail%>
					</div>
					<%
					session.removeAttribute("qr-fail");
					}
	%>
	
	<%
					String createsuccess = (String) session.getAttribute("create-success");
					if (createsuccess != null) {
					%>
					<div class="alert alert-success" role="alert"><%=createsuccess%>
					</div>
					<%
					session.removeAttribute("create-success");
					}
					%>
					
					<%
					String createfail = (String) session.getAttribute("create-fail");
					if (qrfail != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=createfail%>
					</div>
					<%
					session.removeAttribute("create-fail");
					}
	%>	
	
	<%
					String admineditsuccess = (String) session.getAttribute("adminedit-success");
					if (admineditsuccess != null) {
					%>
					<div class="alert alert-success" role="alert"><%=admineditsuccess%>
					</div>
					<%
					session.removeAttribute("adminedit-success");
					}
					%>
					
					<%
					String admineditfail = (String) session.getAttribute("adminedit-fail");
					if (admineditfail != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=admineditfail%>
					</div>
					<%
					session.removeAttribute("adminedit-fail");
					}
	%>	
    
    <%
    			String passmismatch = (String) session.getAttribute("pass-mismatch");
					if (passmismatch != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=passmismatch%></div>
					<%
					session.removeAttribute("pass-mismatch");
					}
					%>
    
   <!--  Add New Record Start -->
   	<div class="container mt-4 mb-3">              
         <div class="input-group d-flex justify-content-center">
    		<div class="input-group-text content" id="btnGroupAddon">
    			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
</svg>
    		</div>
    		<button type="button" class="btn btn-success" id="add_record" aria-label="Input group example" aria-describedby="btnGroupAddon" onclick="location.href='./addRecord.jsp'">
					  Add New Record	
			</button> 
  		</div>
  		
   	</div>
   <!--  Add New Record End -->
    
    <!-- Table Section Start -->
    <section>
    
    	<div class="container-fluid mb-3">
    	<table class="table table-responsive table-hover table-bordered ">
			<thead class="table-dark">
				<tr>
					<th scope="col">Plant Id</th>
					<th scope="col">Scientific Name</th>
					<th scope="col">Family</th>
					<th scope="col">Common Name</th>
					<th scope="col">Vernacular Name</th>
					<th scope="col">Name in Hindi</th>
					<th scope="col">Name in Telugu</th>
					<th scope="col">Useful Part</th>
					<th scope="col">Uses</th>
					<th scope="col">Flowering Period</th> 
					<th scope="col">Root Type</th>
					<th scope="col">Habitat</th>
					<th scope="col">Category </th>
					<th scope="col">Key Characteristics </th>
					<th scope="col">Location </th>
					<th scope="col">Image Link 1</th>
					<th scope="col">Image Link 2 </th>
					<th scope="col">Image Link 3 </th>
					<th scope="col">Image Link 4 </th>
					<th scope="col">Image Link 5 </th>
					<th scope="col">Image Link 6 </th> 
					
					 <th scope="col">Edit</th>
					<th scope="col">Delete</th>
					<th scope="col">View</th>
					<th scope="col">QR</th>
					
					
				</tr>
			</thead>
			<tbody>
				<%	
				treesDAO obj = new treesDAO(DBConnect.getconn());
					List<trees> post = obj.getdata();
					for (trees po : post) {
				%>
				
				<tr>
					<td style="font-weight:bold"><%=po.getPid() %></td>
					<td style="font-weight:bold"><%=po.getSname() %></td>
					<td><%=po.getFamily() %></td>
					<td><%=po.getCname() %></td>
					<td><%=po.getVname() %></td>
					<td><%=po.getHname() %></td>
					<td><%=po.getTname() %></td>
					<td><%=po.getPart() %></td>
					<td><%=po.getUses() %></td>				
					<td><%=po.getPeriod() %></td>
					<td><%=po.getRtype() %></td>
					<td><%=po.getHabitat() %></td>
					<td><%=po.getCat() %></td>
					<td><%=po.getKey() %></td>
					<td><%=po.getLocation() %></td>
					<td><%=po.getLink1() %></td>
					<td><%=po.getLink2() %></td>
					<td><%=po.getLink3() %></td>
					<td><%=po.getLink4() %></td>
					<td><%=po.getLink5() %></td>
					<td><%=po.getLink6() %></td> 
					
					<td><a href="edit.jsp?pid=<%=po.getPid()%>" class="btn btn-success">
					<i  class="fa-solid fa-pen-to-square edit"></i>
					</a></td>
					<td>					
					
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal<%=po.getPid()%>">
					  <i class="fa-solid fa-trash-can delete"></i>
					</button> 
					</td>
					<!-- Modal -->
					<div class="modal fade" id="exampleModal<%=po.getPid()%>" tabindex="-1" aria-labelledby="exampleModalLabel<%=po.getPid()%>" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel<%=po.getPid()%>">Delete Record</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        Are you sure you want to delete <b><%=po.getSname() %>?</b>
					        
					      </div>
					      <div class="modal-footer">
					      <!-- <button type="button" class="btn btn-danger">Delete</button> -->
					      <a href="deleteservlet?pid=<%=po.getPid()%>" class="btn btn-danger">Delete</a>
					       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					        
					      </div>
					    </div>
					  </div>
					</div>
					
					
					
					
					
					
					<td><a href="t2.jsp?pid=<%=po.getPid()%>" class="btn btn-primary">
					<i class="fa-solid fa-eye view"></i>
					</a></td>
					
					
					
					<td><a href="QRgenerater?pid=<%=po.getPid() %>" class="btn btn-warning" style="font-weight:bold">
					<i class="fa-solid fa-download download"></i>
					</a></td>
					
					
					
					

					
					
					
					
				</tr>
				<%
				 }
				%>
				
		
				
			</tbody>
		</table>
    	</div>
    </section>
    
    
     
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>

</body>

</html>