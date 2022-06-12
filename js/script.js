


function slider(slides fade){

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(a) {
  showSlides(slideIndex += a);
}

function currentSlide(a) {
  showSlides(slideIndex = a);
}

function showSlides(a) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (a > slides.length) {slideIndex = 1}    
  if (a <1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  
  slides[slideIndex-1].style.display = "block";  
 
}