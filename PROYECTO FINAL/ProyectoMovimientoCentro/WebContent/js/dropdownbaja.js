/**
 * 
 */
$(function() {
  // Set
  var main = $('div.mm-dropdown .textfirst')
  var li = $('div.mm-dropdown > ul > li.input-option')
  var inputoption = $("div.mm-dropdown .option")
  var default_text = 'Elegir candidato';

  // Animation
  main.click(function() {
    main.html(default_text);
    li.toggle('fast');
  });

  // Insert Data
  li.click(function() {
    // hide
    li.toggle('fast');
    var livalue = $(this).data('value');
    var lihtml = $(this).html();
    main.html(lihtml);
    inputoption.val(livalue);
  });
});