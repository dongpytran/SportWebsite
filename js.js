/*Image show*/
var slideShowImage = document.querySelectorAll(".main .intro .img-slideshow");
var nextImageDelay =3200;
var currentImageCounter = 0;

slideShowImage[currentImageCounter].style.opacity = 1;
setInterval(nextImage, nextImageDelay);

function nextImage(){
	slideShowImage[currentImageCounter].style.opacity = 0;
	currentImageCounter =(currentImageCounter + 1)% slideShowImage.length;
	slideShowImage[currentImageCounter].style.opacity = 1;
}

