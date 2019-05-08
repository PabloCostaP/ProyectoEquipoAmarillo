window.onload = function() {
  init();
};

function init() {
	var element = document.getElementsByClassName("opcion");
	var boton = document.getElementsByClassName("boton");
	for(var i = 0; i < boton.length; i++) {
		boton[i].addEventListener("click", function() {
			next(this);
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

function next(boton, element) {
	var cont = 0;
	debugger;
	if(cont==0) {
		if(element.getAttribute("value")==1) {
			$("container1").css("display", "none");
			$("containerVoluntarios1").css("display", "initial");
		}else if(element.getAttribute("value")==2) {

		}
	}
}

function click(element) {
	var elements = document.getElementsByClassName("opcion");
	
	element.classList.add("seleccionado");
	next(this);
}

function mouseover(element) {
	element.classList.add("marcado");
}

function mouseout(element) {
	element.classList.remove("marcado");
}