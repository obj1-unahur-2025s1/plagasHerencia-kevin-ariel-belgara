import elementos.*
class Plaga{
  var poblacion
  method transmiteEnfermedades()= poblacion >= 10 && self.condicionAdicional()
  //method condicionAdicional()
   method condicionAdicional()= true 
  //method efectoAdicional()
  method daño() = poblacion
  method efectoDeAtacar(){
     poblacion += poblacion * 0.1
  }
  method atacar(unElemento){
    unElemento.recibirAtaqueDe(self)
    self.efectoDeAtacar()
    //self.efectoAdicional()
  }
}
class Cucarachas inherits Plaga{
   var pesoPromedioBicho
   override method daño()= super()/2
   override method condicionAdicional()= pesoPromedioBicho >= 10 
   override method efectoDeAtacar(){
      super()
      pesoPromedioBicho +=2
   }
   /*
   method efectoAdicional(){
      pesoPromedioBicho +=2
     
   }
   */

}
class Pulgas inherits Plaga{
   override method daño()= super() * 2
} 
class Garrapatas inherits Pulgas{
   override method efectoDeAtacar(){
       poblacion += poblacion * 0.2
   }
}
class Mosquitos inherits Plaga{
   
   override method condicionAdicional()= poblacion % 3 == 0

}
class Caracoles inherits Plaga{
    override method transmiteEnfermedades()= clima.llovio()
   //Se sobreescribe ,por lo que no hay que usar el metodo condicion adicional
}
object clima{
    var property llovio = true
}
