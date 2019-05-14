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

function next(boton) {
	var element = getSelectedElement();
		if(element==="voluntario") {
			$("#container1").css("display", "none");
			$("#containerVoluntarios1").css("display", "initial");
		}else if(element==="asistente") {
			$("#container1").css("display", "none");
			$("#datosPersonales").css("display", "initial");
		}else if(element==="europeas") {
			$("#containerVoluntarios1").css("display", "none");
			$("#datosPersonales").css("display", "initial");
		}
	$("div.seleccionado").removeClass("seleccionado");
}

function click(element) {
	$(element).parent().siblings().children().removeClass("seleccionado");
	$(element).addClass("seleccionado");
}

function mouseover(element) {
	element.classList.add("marcado");
}

function mouseout(element) {
	element.classList.remove("marcado");
}

function getSelectedElement() {
	return $("div.seleccionado").attr("value");
}