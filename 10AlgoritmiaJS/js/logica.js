//problema2

function problema2(){

    var p2_x1 = document.querySelector('#p2-x1').value;
    var p2_x2 = document.querySelector('#p2-x2').value;
    var p2_x3 = document.querySelector('#p2-x3').value;
    var p2_x4 = document.querySelector('#p2-x4').value;
    var p2_x5 = document.querySelector('#p2-x5').value;

    var p2_y1 = document.querySelector('#p2-y1').value;
    var p2_y2 = document.querySelector('#p2-y2').value;
    var p2_y3 = document.querySelector('#p2-y3').value;
    var p2_y4 = document.querySelector('#p2-y4').value;
    var p2_y5 = document.querySelector('#p2-y5').value;


    var vector1=[p2_x1, p2_x2, p2_x3, p2_x4, p2_x5];
    var vector2=[p2_y1, p2_y2, p2_y3, p2_y4, p2_y5];

    vector1=vector1.sort(function(x, y){

        return y-x;
    });

    vector2=vector2.sort(function(x, y){

        return y-x;
    });

    vector2=vector2.reverse();

    var p2_resultado=0;

    for(var i=0; i<vector1.length; i++){

        p2_resultado+= vector1[i]*vector2[i];
    }

    document.querySelector('#p2-output').textContent="El producto escalar minimo es: " +p2_resultado;
}

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
