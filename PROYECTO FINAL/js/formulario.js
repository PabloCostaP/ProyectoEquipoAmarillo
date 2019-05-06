window.onload = function() {
  init();
};

function init() {
	var element = document.getElementsByClassName("opcion");
	var boton = document.getElementsByClassName("boton");
	for(var i = 0; i < boton.length; i++) {
		element[i].addEventListener("click", function() {
			click(this);
	});
	}
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

function next(element) {
	if(element.id=="boton1") {
		
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