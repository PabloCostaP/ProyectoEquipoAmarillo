
var modal = document.getElementById('fondoModal');
var modales = document.getElementsByClassName("modalAcambiar")


//var btn = document.getElementById("boton");


var span = document.getElementsByClassName("botonCerrar")[0];

var cod_candidato;
var valueModalActual;

function botonCandidatoActual(id){
	
	
	


	
	

	modales[1].style.display ="block"
	modal.style.display = "block";
	
	
}

function doSomething(id) {
	  var value = document.getElementById(id).value;
	  console.log(value);
	  //...
	}


//btn.onclick = function() {
  //	modal.style.display = "block";
//}


span.onclick = function() {
  modal.style.display = "none";
}

// Cerrar al pulsar en cualquier lado de la ventana
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}