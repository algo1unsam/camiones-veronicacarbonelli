// TODO no compila!
// TODO testear!!
// TODO si no te complica mucho, sería ideal separar un poco en otro archivo, por ejemplo separar el deposito, o las cargas

// TODO creo que le nombre mas correcto es camion (y no camiones)
// ya que este objeto reprsenta el comportamiento de UN camion
object camiones{
	var aTransportar=[]
	var property cargaMaxima=1000
	
	method cargarCosas(cosa){
		if(self.puedeAceptar(cosa)){
		aTransportar.add(cosa)}
		else{
			error.throwWithMessage("No se Puede Cargar porque el valor por el peso")
		}
		
	}
	method descargar(cosa){
		aTransportar.remove(cosa)
	}
	method consultaSiTieneCargado(cosa){
		return aTransportar.contains(cosa)
	}
	
	method sumaDeLosPesos(){
		return aTransportar.sum({cosa=>cosa.peso()})
	}
	
	method cargaDisponible(){
		return cargaMaxima-(self.sumaDeLosPesos())
	}
	
	// TODO cual es la diferencia entre este y carcarCosas?? los dos hacen el add en la coleccion
	// se ven muy parecidos
	method puedeAceptar(cosa){
		if(self.cargaDisponible(cosa)){
		aTransportar.add(cosa)
		}else{
			error.throwWithMessage("No se Puede Aceptar esta carga")
		}
	}
	method mayorPeligrosidad(){
		return aTransportar.max({cosa=>cosa.peligrosidad()})
	}
	
}

object deposito{
	var cosasGuardadas =[]
	
	
	// TODO la idea era que se banque guardar de a muchas cosas
	// es decir, que se banque una colección
	method guardarCosas(cosa){
	cosasGuardadas.add(cosa)
	}
	
	method cargar(){
		cosasGuardadas.forEach({cosa=>camiones.cargarCosas(cosa)})
	}
	
	
}

object knightRider{
	method peso()=500
	method pelogrosidad()=10
	
	
}




object bumbleblee{
	var property transporte = robot
	method peso()=600
	method peligrosidad()= transporte
	
	
}
object robot{
	method Peligrosidad()= 30
	
	
}
object auto{
	method Peligrosidad()= 15
	
}

object paqueteDeLadrillos{
	
	method peso()= 2
	method peligrosidad()=2

}

object ruta{
		
	method peligrosidad()= 10	
		
	}
	
	
object motoneta{
	var cargas=[]
	var cargaMaxima = 500
	method peso()=100
	method peligrosidad()=5
	
	
	method cargarCosas(cosa){
		if(self.puedeAceptar(cosa)){
		cargas.add(cosa)}
		else{
			error.throwWithMessage("No se Puede Cargar porque el valor por el peso")
		}
		method descargar(cosa){
		cargas.remove(cosa)
	}
	method consultaSiTieneCargado(cosa){
		return cargas.contains(cosa)
	}
	method sumaDeLosPesos(){
		return cargas.sum({cosa=>cosa.peso()})
	}
	
	method cargaDisponible(){
		return cargaMaxima-(self.sumaDeLosPesos())
	}
	method puedeAceptar(cosa){
		if(self.cargaDisponible(cosa)){
		cargas.add(cosa)
		}else{
			error.throwWithMessage("No se Puede Aceptar esta carga")
		}
	}
	method mayorPeligrosidad(){
		return cargas.max({cosa=>cosa.peligrosidad()})
	}
	
	}
	
}
