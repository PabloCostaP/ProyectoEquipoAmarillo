var acc = document.getElementsByClassName("accordion");
var i;
function ocultarTodos(){
    $("div.panel").each(function(){
        this.style.maxHeight = null
        this.parentNode.firstChild.className = "accordion";
    })
}
for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    var panel = this.nextElementSibling;
    ocultarTodos();
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
		
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
	  this.className = "active accordion";
    } 

  });
}
