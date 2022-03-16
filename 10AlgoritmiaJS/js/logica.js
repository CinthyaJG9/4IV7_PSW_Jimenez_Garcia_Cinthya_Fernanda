//problema 3

function problema3(){
    //definir alfabeto
    var alfabeto=['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
                'K', 'L', 'M', 'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T',
                'U', 'V', 'W', 'X', 'Y', 'Z']

                //OBTENER CADENA
    var p3_input=document.querySelector('#p3-input').value;
    var p3_palabras=p3_input.split(',');

    //eliminar espacio que hay entre las palabras
    p3_palabras=p3_palabras.map(function (palabra){

        return palabra.replace(/\$/g,'').toUpperCase();
    });

    //calcular los caracteres unicos de cada palabra

    var p3_resultado='';

    //iterar en cada palabra

    p3_palabras.forEach(function (palabra, i){

        //separar las palabras en un array para leer las letras

        var letras_unicas=[];
        var palabra_array=palabra.split('');

        //iterar al alfabeto

        alfabeto.forEach(function (letra, j){

            //iterar por palabra

            palabra_array.forEach(function (letra_palabra, k){

                //comprobar que la letra está dentro del alfabeto

                if(letra_palabra==letra){

                    //si la letra no la hemos contado la agregamos a un array
                    //para contar las letras unicas

                    if(letras_unicas.indexOf(letra)<0){

                        letras_unicas.push(letra);
                    }
                }
            });
        });
        p3_resultado+='Palabra: '+ palabra + ' = ' + letras_unicas.length + '\n';
    });
    document.querySelector('#p3-output').textContent=p3_resultado;

}
