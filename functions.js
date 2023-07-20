
let left_btn=document.getElementsByClassName("bi-chevron-left")[0];
let right_btn=document.getElementsByClassName("bi-chevron-right")[0];
let cards=document.getElementsByClassName("cards")[0];

left_btn.addEventListener('click',()=>{
  cards.scrollLeft-=140;
})
right_btn.addEventListener('click',()=>{
  cards.scrollLeft+=140;
})
 

let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  let x=document.getElementsByClassName("logo");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  x[slideIndex-1].style.display="block";
}

// Get the anchor element with id "link"
var linkElement = document.getElementById("link");

// Define a function to update the href value based on the current slide
function updateHref() {
  // Get the current slide index (1-based)
  var currentSlideIndex = slideIndex;

  // Update the href value based on the current slide index
  if (currentSlideIndex === 1) {
    linkElement.href = "movie.php?param=The Super Mario Bros. Movie"; // Set the desired URL for slide 1
  } else if (currentSlideIndex === 2) {
    linkElement.href = "movie.php?param=Dungeons"; // Set the desired URL for slide 2
  } else if (currentSlideIndex === 3) {
    linkElement.href = "movie.php?param=Evil Dead Rise"; // Set the desired URL for slide 3
  }
}
// Call the function initially to set the href value based on the initial slide
updateHref();
setInterval(updateHref, 1000);

