/*
funcion por medio de exp. regular*/

function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)
    
}

function interes(){

    var valor= document.formulario.cantidad.value;
    var resul= parseInt(valor);
    var interes= resul*0.037;
    var total= interes+resul;

    document.formulario.sueldoI.value="$"+ total;
}
