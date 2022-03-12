function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)

        
}

function op(){

    var calif1= document.formulario.cantidad1.value;
    var calif2= document.formulario.cantidad2.value;
    var calif3= document.formulario.cantidad3.value;
    var examen= document.formulario.cantidad4.value;
    var trabajo= document.formulario.cantidad5.value;
    
    var calif1j=parseInt(calif1);
    var calif2j=parseInt(calif2);
    var calif3j=parseInt(calif3);
    var examenj=parseInt(examen);
    var trabajoj=parseInt(trabajo);
    
    while (calif1j>10 || calif2j>10 || calif3j>10) {
        alert("Calificación no válida");
        return false;
        
    }
    
    var promedio=(calif1j+calif2j+calif3j)/3;
    var promediof=(promedio*0.55)+(examenj*0.30)+(trabajoj*0.15);

    document.formulario.total.value=promediof;
    
}

function borrard(){

    document.formulario.cantidad1.value="";
    document.formulario.cantidad2.value="";
    document.formulario.cantidad3.value="";
    document.formulario.cantidad4.value="";
    document.formulario.cantidad5.value="";
    document.formulario.total.value="";
    
    
}