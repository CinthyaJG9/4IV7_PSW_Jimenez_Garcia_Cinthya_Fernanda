function validarn(e){

    var teclado=(document.all)? e.keyCode: e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var codigo= String.fromCharCode(teclado);
    return patron.test(codigo)

        
}


function interes(){

    var capital= document.formulario.cantidad.value;
    var meses= document.formulario.meses.value;
    var capitalj=parseInt(capital);
    var mesesj= parseInt(meses);
    
    while (mesesj>48) {
        alert("Por favor introduzca un número menor a 48 meses en el campo")
        return false;
        
    }
    var ganancia= Math.pow(1.02, mesesj)*capitalj
    

    document.formulario.sueldoI.value="$"+ ganancia;
}

function borrard(){

    document.formulario.cantidad.value="";
    document.formulario.meses.value="";
}