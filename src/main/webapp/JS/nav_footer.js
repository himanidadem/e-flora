$(document).ready(function () {
        var url = window.location.href;
        const lastSegment = url.split("/").pop();
        const rurl=url.substring(0,url.lastIndexOf("/")+1);
        
        /*console.log(lastSegment);
        console.log(rurl);*/
        
        const flora=["t1.jsp","florasname.jsp","floracname.jsp","florasearch.jsp","florafilter.jsp"];
        for(var i=0;i<flora.length;i++){
			if(lastSegment.includes(flora[i])){
				url=rurl+"flora.jsp";
			}
		}
		
		
		
		const gallery=["bottleGarden.html","butterflyGarden.html","cactusCorner.html","natureSmile.html","palmetum.html","polyHouse.html","rockPoint.html","rosarium.html","sanjeevani.html","sportsArena.html","quadrangle.html","cycadrium.html"]
        for(var i=0;i<gallery.length;i++){
			if(lastSegment.includes(gallery[i])){
				url="#";
			}
		}
        
        
        $('.navbar ul li a[href="'+ url +'"]').parent().addClass('active');       
        $('.navbar ul li a').filter(function() {	
             return this.href == url;
        }).parent().addClass('active');
        
        if(url=="#"){
			var url=window.location.href;
			 $('.navbar ul li a[href="'+ url +'"]').parent().addClass('active');       
        $('.navbar ul li a').filter(function() {	
             return this.href == url;
        }).parent().addClass('active');
		}
    });

(function () {
  "use strict";

  document
    .querySelector('[data-toggle="offcanvas"]')
    .addEventListener("click", function () {
      document.querySelector(".offcanvas-collapse").classList.toggle("open");
    });
})();


document.addEventListener("DOMContentLoaded", function () {
  window.addEventListener('scroll', function () {
    if (window.scrollY > 200) {
      document.getElementById('navbar_bottom').classList.add('fixed-top');
      // add padding top to show content behind navbar
      navbar_height = document.querySelector('.nav-underline').offsetHeight;
      document.body.style.paddingTop = navbar_height + 'px';
    } else {
      document.getElementById('navbar_bottom').classList.remove('fixed-top');
      // remove padding top from body
      document.body.style.paddingTop = '0';
    }
  });
});






// Remove this function if autohide isn't required
document.addEventListener("DOMContentLoaded", function(){

  el_autohide = document.querySelector('.autohide');

  // add padding-top to bady (if necessary)
  navbar_height = document.querySelector('.nav-underline').offsetHeight;
  // document.body.style.paddingTop = navbar_height + 'px';

  if(el_autohide){
    var last_scroll_top = 0;
    window.addEventListener('scroll', function() {
          let scroll_top = window.scrollY;
          if(scroll_top<300)
          {
            return;
          }
         else if(scroll_top < last_scroll_top) {
              el_autohide.classList.remove('scrolled-down');
              el_autohide.classList.add('scrolled-up');
          }
          else {
              el_autohide.classList.remove('scrolled-up');
              el_autohide.classList.add('scrolled-down');
          }
          last_scroll_top = scroll_top;
    }); 
  }
}); 


/*Text Animation effect*/

//Wrap every letter in a span
var textWrapper = document.querySelector('.ml2');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
 .add({
   targets: '.ml2 .letter',
   scale: [4,1],
   opacity: [0,1],
   translateZ: 0,
   easing: "easeOutExpo",
   duration: 950,
   delay: (el, i) => 70*i
 }).add({
   targets: '.ml2',
   opacity: 0,
   duration: 1000,
   easing: "easeOutExpo",
   delay: 1000
 });




