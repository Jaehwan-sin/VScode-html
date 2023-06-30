window.onload=showImage;

function showImage(){
	var ind=parseInt(Math.random()*3+1);
	document.getElementById('foodimage').src='food'+ind+'.jpg';
	setTimeout('showImage()', 3000);
}