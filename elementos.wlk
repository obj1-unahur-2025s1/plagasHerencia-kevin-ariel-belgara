class Hogar{
    var mugre
    const confort
    method esBueno()= mugre <= confort/2
     method recibirAtaqueDe(unaPlaga){
        mugre = mugre + unaPlaga.daño()
    }
}
class Huerta{
    var produccion
    method produccion()= produccion
    method esBueno()= produccion > nivelMinimoProduccion.valor
    method recibirAtaqueDe(unaPlaga){
       produccion = 0.max(produccion -(unaPlaga.daño() * 0.1 + if(unaPlaga.transmiteEnfermedades()) 10 else 0))
    }
}
object nivelMinimoProduccion{
    var property valor = 100
       
}
class Mascota{
    var salud
    method esBueno()= salud > 250
    method recibirAtaqueDe(unaPlaga){
      salud = salud - if(unaPlaga.transmiteEnfermedades())unaPlaga.daño() else 0
     
    }
    method efecto2(unaPlaga){
       if(unaPlaga.transmiteEnfermedades()){
       salud = 0.max(salud - unaPlaga.daño())
      }
    }

}
class Barrio{
    const elementos = []
    method agregarElemento(unElemento){
        elementos.add(unElemento)
    }
    method quitarElemento(unElemento){
        elementos.add(unElemento)
    }
    method esBueno(unElemento)= unElemento.esBueno()
    method cantElementosBuenos()= elementos.count({elemento => elemento.esBueno()})
    //method cantElementosMalos()= elementos.count({elemento =>not  elemento.esBueno()})
    method cantElementosMalos()= elementos.size() - self.cantElementosBuenos() 
    method esCopado()= self.cantElementosBuenos() > self.cantElementosMalos()
}
