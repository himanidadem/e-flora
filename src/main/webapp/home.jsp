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
	  
	  
  <title>SFC e-Flora | Home </title>
  <link rel="icon" href="img/favicon.png" type="image/x-icon">
  <!-- Style Sheets -->
  <link rel="stylesheet" href="CSS/recurrentStyle.css">
  <link rel="stylesheet" href="CSS/home.css">
  <link rel="stylesheet" href="CSS/nav_footer.css">
  
  
  <!-- JavaScript -->
  <script defer src="JS/home.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/b7670464f6.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  
  
	

  

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
  
  
  


  <!-- Carousel section Start -->
  <section id="top-carousel" class="mb-5 pb-lg-5 pb-2" >
    <!-- <div class="container p-5" style="background-color:rgb(235, 232, 232)"> -->
    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
          aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4"
          aria-label="Slide 5"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5"
          aria-label="Slide 6"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6"
          aria-label="Slide 7"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/carousel-1.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/carousel-2.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/carousel-3.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/carousel-4.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/carousel-5.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/carousel-6.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/carousel-7.JPG" class="d-block w-100 " alt="...">
          <!-- <rect width="100%" height="100%" fill="#555"></rect> -->
          <div class="carousel-caption " data-aos="fade-down" data-aos-offset="0">
            WELCOME TO SFC e-FLORA
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!-- </div> -->
  </section>
  <!-- Carousel section End -->








  <!-- About Digital Garden Start-->
  <section class="my-5 py-lg-5 py-2" id="dgarden">

    <div class="container">
      <div class="row flex-column-reverse flex-lg-row">
        <div class="col-lg-6 col-xl-5" data-aos="fade-right">

          <img src="img/UG entrance.JPG" alt="" class="image">

        </div>

        <div class="col-lg-6 col-xl-6 offset-xl-1">
          <div class="body" data-aos="fade-left">
            <p class="pre_title m-0 text-center" >ST.FRANCIS COLLEGE FOR WOMEN</p>
            <div class="title d-flex justify-content-center py-3" >

              <span>e-Flora</span>
            </div>
            <div class="content">
              <p>St. Francis college maintains a large variety of flora ranging from big trees to small plants. The species are spread across different locations in the college. SFC is totally dedicated to a clean and green environment. This commitment is reflected in its expansive and green campus housing innovative spaces like SHUBHRAM (Solid waste management centre), Rooftop Solar Photovoltaic Power System, Solar Lights, Greenhouse and Polyhouse.</p>
              <p>Nowadays, everything is digitized so why not a garden or an area with many plant species? So, here comes the concept of Digital Garden of St. Francis College for Women where one can fetch information about diversity of flora in just one click. Isn’t it fascinating?</p>
              <!-- <p>Digital Garden as the name suggests is a systematic way of digitizing the flora in an area so that the
                species details can easily be accessible by a common man. It includes two major parts, the first one
                being the creation of the website and the second one, generating the QR codes for each species.</p> -->
            </div>
          </div>

          <div class="d-flex justify-content-center" data-aos="fade-up">
            <button class="btn btn-lg m-lg-4 m-3 button_s1"  onclick="location.href='./about.jsp'" >
              Read More
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- About Digital Garden End-->


	
	 <!-- Named Places start-->
  <section id="bottom-carousel" class="container mt-5 pt-lg-5 pt-2" >
    <!-- <div class=""> -->
    <!-- <div class="title d-flex justify-content-center py-3">
        <span>NAMED AREAS</span>
      </div> -->
    <div id="carouselExampleCaption" class="carousel slide carousel-fade " data-bs-ride="carousel" data-aos="fade-up" data-aos-duration="1500">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="3"
          aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="4"
          aria-label="Slide 5"></button>
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="5"
          aria-label="Slide 6"></button>
        <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="6"
          aria-label="Slide 7"></button>
          <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="7"
          aria-label="Slide 8"></button>
          <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="8"
          aria-label="Slide 9"></button>
          <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="9"
          aria-label="Slide 10"></button>
          <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="10"
          aria-label="Slide 11"></button>
          <button type="button" data-bs-target="#carouselExampleCaption" data-bs-slide-to="11"
          aria-label="Slide 12"></button>
          
          
          
      </div>
      <div class="carousel-inner">

        <div class="carousel-item active">
          <a href="natureSmile.html">
            <img src="img/crsl-natureSmile.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            NATURE'S SMILE
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>

		<div class="carousel-item">
          <a href="polyHouse.html">
            <img src="img/crsl-polyHouse.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            POLY HOUSE & GREEN HOUSE
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
		<div class="carousel-item">
          <a href="sanjeevani.html">
            <img src="img/crsl-sanjeevani.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            SANJEEVANI
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
        <div class="carousel-item">
          <a href="cactusCorner.html">
            <img src="img/crsl-cactusGarden.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            CACTUS CORNER
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
        <div class="carousel-item">
          <a href="bottleGarden.html">
            <img src="img/crsl-bottleGarden.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            BOTTLE GARDEN
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>

		

        <div class="carousel-item">
          <a href="rockPoint.html">
            <img src="img/crsl-rockPoint.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            ROCK POINT
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
        <div class="carousel-item">
          <a href="palmetum.html">
            <img src="img/crsl-palmetum.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            PALMETUM
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
        <div class="carousel-item">
          <a href="rosarium.html">
            <img src="img/crsl-rosarium.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            ROSARIUM
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
        <div class="carousel-item">
          <a href="butterflyGarden.html">
            <img src="img/crsl-butterflyGarden.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            BUTTERFLY GARDEN
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        
        <div class="carousel-item">
          <a href="sportsArena.html">
            <img src="img/crsl-sportsArena.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            SPORTS ARENA
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        <div class="carousel-item">
          <a href="quadranlge.html">
            <img src="img/crsl-quadrangle.JPG" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            QUADRANGLE
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>
        <div class="carousel-item">
          <a href="cycadarium.html">
            <img src="img/crsl-cycadarium.jpg" class="d-block w-100" alt="...">
          </a>
          <div class="carousel-caption ">
            <!-- <div class="info"> -->
            CYCADARIUM
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <!-- </div> -->
          </div>
        </div>


        


        
        
        
        

		
        
        

      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaption" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaption" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!-- </div> -->
  </section>

  <!-- Named Places end-->
	
	


  <!-- AutoPlay video start -->
  <section class="container-fluid mt-5 pt-lg-5 " >
    <div class=" pt-2 mb-5 " id="autoplay">
      <div class="embed-video">
        <video src="img/autoplay-video.mov" loop controls controlsList="nodownload" id="video"></video>
      </div>
      <div class="video-des col" data-aos="zoom-out">
        <div class="col-lg-12">
          <span >
            TAKE A GLANCE AT OUR GREEN CAMPUS

          </span>
        </div>
      </div>
    </div>
  </section>
  <!-- AutoPlay video End -->



  <!-- Flora Page Quick Links Start -->
  <section class="floraquick my-5 pt-lg-5 pt-2">
    <div class="container text-center">
      <!-- <p class="pre_title m-0 text-center">QUICK LINK</p> -->
      <div class="title d-flex justify-content-center py-3" data-aos="fade-up">
        <span>FLORA IN SFC</span>
      </div>
      <div class="row mx-auto my-auto justify-content-center" >
        <div id="recipeCarousel" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner" role="listbox" data-aos="fade-up">
          	
         <%	
     		 			int i=0;
                		String[] sname=new String[500];
                		String[] link=new String[500];
                		int[] pid=new int[10];
                		treesDAO obj = new treesDAO(DBConnect.getconn());
					List<trees> post = obj.getdata();
					for (trees po : post) {
						if(i==10)
							break;
						else{
						pid[i]=po.getPid();
						 sname[i]=po.getSname();
						 link[i]=po.getLink1();
						 i++;
						}
					}%>
					
			<div class="carousel-item active">
              <div class="col-lg-3 col-md-6 col-12 ">
                <div class="card">
                
                  <div class="card-img">
                  <a href="./t1.jsp?pid=<%=pid[0]%>">
                    <img src="<%=link[0]%>" class="img-fluid qlinkimg">
                  </a>
                    <div class="image_content">
                      <span class="image_name"><%=sname[0]%></span>
                    </div>
                  </div>
              </div>
              </div>
              </div> 
						
					<%
					for(i=1;i<10;i++){										
				%>
            
            <div class="carousel-item">
              <div class="col-lg-3 col-md-6 col-12 ">
                <div class="card">
                
                  <div class="card-img">
                  <a href="./t1.jsp?pid=<%=pid[i]%>">
                    <img src="<%=link[i]%>" class="img-fluid qlinkimg">
                    </a>
                    <div class="image_content">
                      <span class="image_name"><%=sname[i]%></span>
                    </div>
                  </div>
              </div>
              </div>
              </div> 
           <%} %> 
       
                       
        </div>  
          <div class="container d-flex justify-content-center" data-aos="fade-up">
            <button class="btn btn-lg m-lg-4 m-3 button_s1" onclick="location.href='./flora.jsp'">
              View More
            </button>
          </div>
          <a class="carousel-control-prev bg-transparent w-aut" href="#recipeCarousel" role="button"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          </a>
          <a class="carousel-control-next bg-transparent w-aut" href="#recipeCarousel" role="button"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
          </a>
        
      </div>
    </div>
  </section>
  <!-- Flora Page Quick Links End -->


 

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