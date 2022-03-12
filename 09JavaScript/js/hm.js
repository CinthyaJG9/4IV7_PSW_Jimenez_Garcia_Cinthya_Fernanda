function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)

        
}

function op(){

    var mujeres= document.formulario.cantidad1.value;
    var hombres= document.formulario.cantidad2.value;
    
    
    var mujeresj=parseInt(mujeres);
    var hombresj=parseInt(hombres);
    
    
    var total=(mujeresj+hombresj);
    var totalm=(mujeresj/total)*100;
    var totalh=(hombresj/total)*100;
    
    document.formulario.totalm.value=totalm+"%";
    document.formulario.totalh.value=totalh+"%";
    
}

function borrard(){

    document.formulario.cantidad1.value="";
    document.formulario.cantidad2.value="";
    
    document.formulario.totalm.value="";
    document.formulario.totalh.value="";
    
    
}