window.onload = function() {
  init();
};

function init() {
	var element = document.getElementsByClassName("opcion");
	for(var i = 0; i < element.length; i++) {
		element[i].addEventListener("click", function() {
			click(this);
	});
		element[i].addEventListener("mouseover", function() {
			mouseover(this);
	});
		element[i].addEventListener("mouseover", function() {
			mouseover(this);
	});
		element[i].addEventListener("mouseout", function() {
			mouseout(this);
	});
	}
}

function click(element) {
	element.classList.add("seleccionado");
}

function mouseover(element) {
	element.classList.add("marcado");
}

function mouseout(element) {
	element.classList.remove("marcado");
}