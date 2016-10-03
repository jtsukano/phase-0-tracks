function addBlueBorder(event) {
	console.log("click happened!");
	event.target.style.border = "2px solid pink"
}

var photo = document.getElementById("js-photo");
photo.addEventListener("click", addPinkBorder);

document.getElementById("p1").style.color = "red";

document.getElementById('js-photo').addEventListener("click", displayDate);