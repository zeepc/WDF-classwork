// Automatic Slideshow
let slidepic = document.getElementsByClassName("slides");
let slideIndex = 0;


function slideIn() {
	// console.log('test')
//hide each picture inside of slidepic
    for (i = 0; i < slidepic.length; i++) {
       slidepic[i].style.display = "none";  
    }
    // check if the at end of slide show, if true start at beginning and display as a block each time. 
    if (slideIndex+1 > slidepic.length) {slideIndex = 1}    
    slidepic[slideIndex].style.display = "block";
    slideIndex++;   
}


setInterval(slideIn, 3000); // images change every 3 seconds
