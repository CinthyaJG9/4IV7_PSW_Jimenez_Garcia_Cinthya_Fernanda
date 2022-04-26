function validar(){
        if(document.formulario.nombre.value==""||document.formulario.apmat.value==""||document.formulario.appat.value==""||document.formulario.numempleado.value==""){
        alert("Falta un campo");
        return false;
        }else{
        return submit();
        }
        }
        
                function validar2(){
        if(document.formulario.numempleado.value==""){
        alert("Falta campo Numero empleado");
                document.index.numpleado.focus();
        return false;
        }else{
        return submit();
        }
        }
                
        function validN(e) {
            var tecla = document.all ? tecla = e.keyCode : tecla = e.which;
            return ((tecla > 47 && tecla < 58) || tecla == 8);
        }
 
        function validL(e) {
            var tecla = document.all ? tecla = e.keyCode : tecla = e.which;
            var especiales = [8, 32, 13];/*back, space, enter */
 
            for (var i in especiales) {
            if (tecla == especiales[i]) { return true;/*break; */}
            }
            return (((tecla > 96 && tecla < 123) || (tecla > 64 && tecla < 91)) || tecla == 8);
        }
        
 
 
