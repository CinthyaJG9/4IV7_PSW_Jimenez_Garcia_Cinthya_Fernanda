function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)

    
        
}

function op(){

    var diaHoy= document.formulario.cantidad1.value;
    var mesHoy= document.formulario.cantidad2.value;
    var agnoHoy= document.formulario.cantidad3.value;
    var diaNac= document.formulario.cantidad4.value;
    var mesNac= document.formulario.cantidad5.value;
    var agnoNac= document.formulario.cantidad6.value;
    
    
    var diaHoyJ=parseInt(diaHoy);
    var mesHoyJ=parseInt(mesHoy);
    var agnoHoyJ=parseInt(agnoHoy);
    var diaNacJ=parseInt(diaNac);
    var mesNacJ=parseInt(mesNac);
    var agnoNacJ=parseInt(agnoNac);
    
    while (diaHoyJ>31 || diaNacJ>31) {
        alert("Por favor verifique el día, puesto que no es válido");
        return false;
        
    }
    while (mesHoyJ>12 || mesNacJ>12) {
        alert("Por favor verifique el mes, puesto que no es válido");
        return false;
        
    }
    while (agnoHoyJ>2022) {
        alert("Por favor introduzca el año actual correctamente");
        return false;
        
    }
    while (agnoNacJ>agnoHoyJ) {
        alert("Por favor verifique que los años estén en orden correcto, ya que la operación es inválida");
        return false;
        
    }
    var edad=agnoHoyJ-agnoNacJ;

    
        if (mesNacJ>mesHoyJ) {
            edad-=1;
               
        
        }else{
            if (mesNacJ==mesHoyJ) {
                if (diaNacJ>diaHoyJ) {
                edad-=1;
             }
            
         }
         
            
        }
        

        if(agnoNacJ%4==0){
            edad=Math.trunc(edad/4)
        }

    
    document.formulario.totalm.value=edad+" años";
   
    
}

function borrard(){

    document.formulario.cantidad1.value="";
    document.formulario.cantidad2.value="";
    document.formulario.cantidad3.value="";
    document.formulario.cantidad4.value="";
    document.formulario.cantidad5.value="";
    document.formulario.cantidad6.value="";
    
    document.formulario.totalm.value="";
    
    
    
}