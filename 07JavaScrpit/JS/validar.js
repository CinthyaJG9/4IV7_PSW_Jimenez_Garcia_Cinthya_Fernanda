function validar(formulario){

    if(formulario.nombre.value.length)<5{

        alert("Por favor escribe más de 5 caracteres en el campo nombre");
        formulario.nombre.focus();
    return false;

    }
}