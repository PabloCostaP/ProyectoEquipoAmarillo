
var modal = document.getElementById('fondoModal');




//var btn = document.getElementById("boton");


var span = document.getElementsByClassName("botonCerrar")[0];

function botonCandidato(){
	modal.style.display = "block";
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