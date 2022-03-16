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

        if (diaNacJ==29) {
            if (mesNacJ==02) {
                while (agnoNacJ%4==0) {
                    edad=(agnoHoyJ-agnoNacJ)/4
                   
                }
            }
            
        }

    
    document.formulario.totalm.value=edad+" años";
   
    
}

function borrard(){

    document.formulario.cantidad1.value="";
    document.formulario.cantidad2.value="";
    
    document.formulario.totalm.value="";
    document.formulario.totalh.value="";
    
    
}