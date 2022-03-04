var coche=[] //ojo

function agregar(){

  var valor= document.getElementById("valor").value 
  var cuotai= document.getElementById("cuotai").value 
  var periodo= document.getElementById("periodo").value 

 coche.push([valor, cuotai, periodo])

hacerTabla()
}

function hacerTabla(){
 
  var tab= "<thead><tr><th>Valor</th><th>Cuota Inicial</th> <th>Periodo</th></tr></thead><tbody>"
    for (var i = 0; i <coche.length ; i++) {
    tab += `<tr><td>$coche[i][0]</td><td>coche[i][1]</td>$coche[i][2]<td></td></tr>`
      //total=//OJOOOOOOOOOOOOOO
    }
    tab+= "<tr><td></td><td></td><td>{total}</td></tr></tbody>"


  document.getElementById("impuesto").innerHTML=tab;
}


function operacion(formulario){
  if(formulario.valor.value < 100000 || formulario.valor.value > 1000000){
      alert("El valor del automóvil debe estar entre 100,000.00 y 1,000,000.00");
  }
  if(formulario.cuotai.value < formulario.valor.value*0.1){
      alert("El valor minimo de la cuota inicial es del 10% del automovil");
  }
  var checkOK = "0123456789";
  var checkStr = formulario.Vautomovil.value;
  var todoesvalido = true;

  for(var i = 0; i < checkStr.length; i++){
      var ch = checkStr.charAt(i);
      for(var j = 0; j < checkOK.length; j++){
          if(ch == checkOK.charAt(j)){
              break;
          }    
      }
      if(j == checkOK.length){
          todoesvalido = false;
          break;
      }
  }
  if(!todoesvalido){
      alert("Escriba unicamente números en el campo VALOR DEL AUTO");
      formulario.Vautomovil.focus();
      return false;
  }
  var va = parseFloat(formulario.Vautomovil.value);
  var ci = parseFloat(formulario.CInicial.value);
  var p = parseInt(formulario.Periodo.value);
  var pi = va-ci;
  var T = pi*(1.394)**p;
  var F = document.formulario.VFinal;
  F.value = T;
}