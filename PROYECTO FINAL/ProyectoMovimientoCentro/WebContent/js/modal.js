
var modal = document.getElementById('fondoModal');

var modales = document.getElementsByClassName("modalAcambiar")


//var btn = document.getElementById("boton");


var span = document.getElementsByClassName("botonCerrar")[0];

var cod_candidato;
var valueModalActual;
var click;

function botonCandidatoActual(clicado){
	
	click = clicado;
	
	modales[click].style.display ="block";
	modal.style.display = "block";
	
}




//btn.onclick = function() {
  //	modal.style.display = "block";
//}


span.onclick = function() {
  modal.style.display = "none";
  
  modales[click].style.display ="none";
  
}

// Cerrar al pulsar en cualquier lado de la ventana
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
    modales[click].style.display ="none";
    
  }
}