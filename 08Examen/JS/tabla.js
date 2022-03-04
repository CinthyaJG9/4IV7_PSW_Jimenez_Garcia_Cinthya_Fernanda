let coche=[] //ojo

function agregar(){

  let valor= document.getElementById("valor").value 
  let cuotai= document.getElementById("cuotai").value 
  let periodo= document.getElementById("periodo").value 

 coche.push([valor, cuotai, periodo])

hacerTable()
}

function hacerTable(){

  let tab= "<thead><tr><th>Valor</th><th>Cuota Inicial</th> <th>Periodo</th></tr></thead><tbody>"
  for (let i = 0; i < coche.length; i++) {
    
    
  }
  document.getElementById("impuesto").innerHTML=tabla;
}



