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

  <title>SFC e-Flora | About </title>
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <!-- Style Sheets -->
    <link rel="stylesheet" href="CSS/recurrentStyle.css">
    <link rel="stylesheet" href="CSS/about.css">
    <link rel="stylesheet" href="CSS/nav_footer.css">
    
    
    <!-- JavaScript -->
    <!-- <script defer src="JS/about.js"></script> -->
   
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/b7670464f6.js" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js"
    integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous"
    async></script>
    
    
    

</head>

<body>

   
   
   
   <!-- Navigation Bar Start -->
   <div id="nav-placeholder">

	</div>
	
	<script>
	$(function(){
	  $("#nav-placeholder").load("navigation.html");
	});
	</script>
	  <!-- Navigation Bar End -->


  <!-- Parallax Section Start-->
  <!-- <section>
    <div class="parallax">
      <div id="parallax_heading">
      </div>
    </div>
  </section> -->
  <!-- Parallax Section Start-->




  

  <section>
    
    <div class="container" style="margin-top: 20px;" >
      <div class="row">
        <div class="col-12">
          <div class="image_container">
            <img class="image" src="img/quadrangle.jpg">
          </div>
        </div>
      </div>
    </div>
    <div class="lower_curve_container">
      <div class="col-12 body container px-lg-5 px-4 pt-lg-5 py-4 p d-flex flex-column align-items-center" style="margin-top: 370px;">
            <div class="d-flex justify-content-center title p-2" style="margin-top:200px" data-aos="fade-up">
              COLLEGE HISTORY
            </div>
            <div class="content text-center" data-aos="fade-up">
              St. Francis College for Women is a Catholic Minority Institution located in Begumpet, Hyderabad founded by the sisters of Charity of Sts. Bartolomea Capitanio and Vincenza Gerosa in 1959, for the education of women. The college derives its inspiration from the person and teachings of Jesus Christ, who is its norm, protector, and guide. 
              <br><br>
              Inspired by the visionary dynamism of St. Bartholomea, the Foundress of the sisters of Charity, St. Francis College has its vision “Holistic Education for the Empowerment of Women”
            </div>
          </div>
          
          <div class="col-12 container d-flex justify-content-center align-items-center flex-column flex-sm-row" >
          
          <div class="col-md-6  col-12 d-flex justify-content-sm-end justify-content-center px-sm-2 px-0 mb-2 mb-sm-0" data-aos="fade-right">       	
             <img src="img/sister_capitanio.jpeg" alt="" class="image">         		         
          </div>
          <div class="col-md-6 col-12 d-flex justify-content-sm-start justify-content-center px-sm-2 px-0" data-aos="fade-left">       	
             <img src="img/sister_gerosa.jpg" alt="" class="image">
          </div>
          
          
               	
             <!-- <img src="https://source.unsplash.com/600x700?QRcode" alt="" class="image">         		         
    
         
             <img src="https://source.unsplash.com/600x700?QRcode" alt="" class="image"> -->
      
          </div>
          
          
          
          
          <div class="col-12 container px-lg-5 px-4 pt-lg-4 py-3 d-flex flex-column align-items-center ">
          	<div class="d-flex justify-content-center title p-2 " data-aos="fade-up">
              MOTTO
            </div>
            <div class="content text-center" data-aos="fade-up">
              Wisdom and Peace through Love
            </div>
          </div>
          
          <div class="col-12 container px-lg-5 px-4 pt-lg-4 py-3 d-flex flex-column align-items-center ">
          	<div class="d-flex justify-content-center title p-2 " data-aos="fade-up">
              VISION
            </div>
            <div class="content text-center" data-aos="fade-up">
              Holistic Education For Empowerment Of Women
            </div>
          </div>
  
  
          <div class="col-12 container px-lg-5 px-4 pt-lg-4 py-3 d-flex flex-column align-items-center">
            <div class="d-flex justify-content-center title p-2 " data-aos="fade-up">
              MISSION
            </div>
            <div class="content" data-aos="fade-up">
              Motivating students to become
            </div>
            <div class="text-left content" data-aos="fade-up">
              <ul>
                <li><i class="fas fa-check-double"></i> Intellectually Competent</li>
                <li><i class="fas fa-check-double"></i> Morally Upright</li>
                <li><i class="fas fa-check-double"></i> Socially Committed</li>
                <li><i class="fas fa-check-double"></i> Emotionally Stable </li>
                <li><i class="fas fa-check-double"></i> Spiritually Inspired</li>
                <li><i class="fas fa-check-double"></i> Patriotic Women citizens of India</li>
              </ul>
            </div>
          </div>
    </div>
  </section>





	<section>
		<div class="container" style="margin: 40px auto;" >
      <div class="row">
        <div class="col-12">
          <div class="image_container">
            <img class="image" src="img/jesus_cover.JPG">
          </div>
        </div>
      </div>
    </div>
	</section>




  <section class="mt-5" id="dgarden">
    <div class="container pt-5">
      <div class="row" data-masonry='{"percentPosition": true }'>
        
        <div class="col-lg-6 col-12 pe-lg-5 px-3">
          <div class="body">
            <div class="title d-flex justify-content-center py-3" data-aos="fade-right">
              e-Flora
            </div>
            <div class="content" data-aos="fade-right">
              <p>St. Francis college maintains a large variety of flora ranging from big trees to small plants. The species are spread across different locations in the college. SFC is totally dedicated to a clean and green environment. This commitment is reflected in its expansive and green campus housing innovative spaces like SHUBHRAM (Solid waste management centre), Rooftop Solar Photovoltaic Power System, Solar Lights, Greenhouse and Polyhouse.</p>
              <p>Nowadays, everything is digitized so why not a garden or an area with many plant species? So, here comes the concept of Digital Garden of St. Francis College for Women where one can fetch information about diversity of flora in just one click. Isn’t it fascinating?</p>
              <p>e-Flora as the name suggests is a systematic way of digitizing the flora in an area so that the details of the species can easily be accessible by a common man. It includes two major parts, the first one being the creation of the website and the second one, generating the QR codes for each species. The idea to implement Digital Garden in our college was given by our Principle <b>Sr.Sandra Horta</b>.</p>
                
                
                
              
            </div>
          </div>
        </div>



        <div class="col-lg-6 col-12 d-flex align-items-end justify-content-end" data-aos="fade-left">
          <!-- <div class="image_container"> -->
            <img src="img/qrScan.JPG" alt="" class="image">
          <!-- </div> -->
        </div>
        <div class="col-12" data-aos="fade-up">
          <div class="content pt-lg-5 pt-3">
            <p> Our digital garden website includes many functionalities such as sorting of species based on their type, flowering period, location, and useful part through which species details are easily available. One can also search the plant species in the search bar according to the alphabetical order which makes it much easier to find them based on their names. When you select and click on a particular plant species you will be redirected to a page which includes details and the photo gallery of the species. Visitors can toggle to the home page and view an entire catalogue of flora. The website is user- friendly and easy to maintain. </p>
            <p>When we generate unique QR CODES to each species, visitors can learn more about the species by scanning the QR code using QR code scanner in the mobile and it will  redirect the user to the website  page containing all the information about the species. All species details are well documented and therefore the details will be presented in a neat format. The QR codes will be placed along with the plant labels across different locations in the campus.
            </p>
            <p>As of now, 130 plants are documented from various locations in the college which includes common plants to rare species. </p>
            <p>The main idea behind this project is to introduce our college’s floristic diversity to the world and to make the information accessible to everyone who might not be a plantaholic in  just few steps. A team was formed to implement e-Flora in the campus. Sr.Sandra Horta (principal),  Ms.Himani Dadem and  Ms.Sameera Buduwarthy (Students of Bsc. Hons software engineering) mentored by Ms.Afeefa Noorain (Department of Computer Science), Ms.Dhanalakshmi (Department of Environmental Sciences), Ms.Mary Anthony (Department of Botany), Photography and Videography was done by  Mr.Jagdish,  Mr.Sridhar and  Mr.Ram are the major Contributors.</p>
          </div>
        </div>

      </div>
    </div>
  </section>



  <!-- <section>
    <div class="container bg-white px-md-2 px-0" id="contributors">
      <div class="title d-flex justify-content-center py-3" data-aos="fade-up">
        Project Committe
      </div>
      <div class="content pb-md-5 px-md-5 p-0" >
	<p data-aos="fade-up">SR. Sandra Horta (PRINCIPAL) </p>	
		<p data-aos="fade-up">Himani Dadem AND Sameera Buduwarthy (Students Of Bsc. Hons Software Engineering) Mentored By Ms. Afeefa Noorain (Department Of Computer Science)</p>
		<p data-aos="fade-up">Ms Dhanalakshmi ( Department Of Environmental Sciences)</p>
		<p data-aos="fade-up">Ms Mary Anthony ( Department Of Botany)</p>
		<p data-aos="fade-up">Photography And Videography Done By: Jagdish, Sridhar And Ram.</p>

		
      </div>
    </div>
    <div class="upper_curve_container d-none d-md-block " data-aos="fade-up">

    </div>
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