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
      alert("El valor minimo de la cuota inicial debe ser 10% del automovil");
  }
  var checkOK = "0123456789";
  var checkStr = formulario.valor.value;
  var allOK = true;

  for(var i = 0; i < checkStr.length; i++){
      var ch = checkStr.charAt(i);
      for(var j = 0; j < checkOK.length; j++){
          if(ch == checkOK.charAt(j)){
              break;
          }    
      }
      if(j == checkOK.length){
          allOK = false;
          break;
      }
  }
  if(!allOK){
    alert("Escriba unicamente números en el campo VALOR");
    formulario.valor.focus();
    return false;
}
var val = parseFloat(formulario.valor.value);
var cuoi = parseFloat(formulario.cuotai.value);
var per = parseInt(formulario.periodo.value);
var other = val-cuoi;
var agn = other*(0.0394)*per;
var final = document.formulario.total;
final.value = agn;
}