/* global e */

function registro(e) 
{
   var teclado=(document.boleta && document.tel)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)
   }