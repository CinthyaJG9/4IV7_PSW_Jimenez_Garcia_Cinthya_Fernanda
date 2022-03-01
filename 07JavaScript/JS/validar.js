//JavaScript es un lenguaje que posee un paradigma orientado a objetos y a funciones, por tal motivo presenta una particularidad la cual es:
//NO TIPADO
//tODO ES VAR-> variable
//De acuerdo al estándar ES6 se manejan 3 tipos de variables:
//VAR, LET es de tipo "protegida", CONST
function validar(formulario){

    if(formulario.nombre.value.length < 5) {

        alert("Por favor escribe más de 5 caracteres en el campo nombre");
        formulario.nombre.focus();
    return false;

    }

    var checkOK= "QWERTYUIOPASDFGHJKLÑZXCVBNM"
    + "qwertyuiopasdfghjklñzxcvbnm";

    var checkSTR= formulario.nombre.value;

    var allValid=true;


    for(var i=0; i<checkSTR.length; i++){

        var ch=checkSTR.charAt(i);

        for(var j=0; j<checkOK.length; j++)
        if(ch==checkOK.charAt(j))
            break;

        if(j==checkOK.length) {

            allValid=false;
            break;
        }   
    }
    if(!allValid){

        alert("Escribe solo letras en el campo Nombre");
        formulario.nombre.focus();
        return false;
    }

    var checkOK= "0123456789";

    var checkSTR= formulario.edad.value;

    var allValid=true;


    for(var i=0; i<checkSTR.length; i++){

        var ch=checkSTR.charAt(i);

        for(var j=0; j<checkOK.length; j++)
        if(ch==checkOK.charAt(j))
            break;

        if(j==checkOK.length) {

            allValid=false;
            break;
        }   
    }
    if(!allValid){

        alert("Escribe solo letras en el campo Edad");
        formulario.edad.focus();
        return false;
    }

    var txt=formulario.email.value;

    //expresión regular

    var b= /^[^@\s]+[^@\.\s]+(\.[^@\.\s])+$/;

    alert("Email " + (b.test(txt)?" ": "no ")+"válido");

    return b.test;

}