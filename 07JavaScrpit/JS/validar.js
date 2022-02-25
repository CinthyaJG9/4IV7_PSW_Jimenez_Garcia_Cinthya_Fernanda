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
}