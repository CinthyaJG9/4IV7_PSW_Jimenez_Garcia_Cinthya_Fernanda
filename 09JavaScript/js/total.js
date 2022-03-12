function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)

        
}


function op(){

    var total= document.formulario.cantidad1.value;
    
    var totalj=parseInt(total);
    
    var descuento=totalj*0.15 ;
    var final=totalj-descuento;
    

    document.formulario.total.value="$"+ final;
    
}

function borrard(){

    document.formulario.cantidad1.value="";
    document.formulario.total.value="";
    
    
}