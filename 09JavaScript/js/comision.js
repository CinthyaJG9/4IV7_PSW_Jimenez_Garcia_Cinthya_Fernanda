function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)

        
}


function op(){

    var venta1= document.formulario.cantidad1.value;
    var venta2= document.formulario.cantidad2.value;
    var venta3= document.formulario.cantidad3.value;
    var sueldo= document.formulario.cantidad4.value;
    var venta1j=parseInt(venta1);
    var venta2j=parseInt(venta2);
    var venta3j=parseInt(venta3);
    var sueldoj=parseInt(sueldo);
     
    var comision=(venta1j+venta2j+venta3j)*0.10;
    var total=((comision)+(sueldoj));

    document.formulario.sueldoB.value="$"+ sueldoj;
    document.formulario.comisiones.value="$"+ comision;
    document.formulario.sueldoT.value= "$"+ total;
}

function borrard(){

    document.formulario.cantidad1.value="";
    document.formulario.cantidad2.value="";
    document.formulario.cantidad3.value="";
    document.formulario.cantidad4.value="";
    
}