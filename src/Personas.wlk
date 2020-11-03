import Suenios.*

class Personas {
	var edad
	const carrerasAEstudiar = #{}
	const carrerasCompletadas = #{}
	const plata 
	const lugares = #{}
	const hijos = #{}
	var tieneTrabajo = false
	var felicidonios
	const sueniosPendientes = []
	const sueniosCompletadas = []
	const tipoPersona
	
	
	method cumplir(suenio){
		suenio.cumplir(self)
		sueniosCompletadas.add(suenio)
		sueniosPendientes.remove(suenio)
	}
	
	method quiereEstudiarCarrera(carrera){
		return carrerasAEstudiar.contains(carrera)
	}
	
	method yaEstudioLaCarrera(carrera){
		return carrerasCompletadas.contains(carrera)
	}
	method recibirse(carrera){
		carrerasCompletadas.add(carrera)
	}
	
	method dejarDeSerPlanero(){
		tieneTrabajo = true
	}
	
	method cuantaPlataQuiere(){
		return plata
	}
	
	method conocer(destino){
		lugares.add(destino)
	}
	
	method tieneHijo(){
		return hijos.size() > 0
	}
	
	method tenerHijo(hijo){
		hijos.add(hijo)
	}
	
	method sumarFelicidonios(cantidad){
		felicidonios += cantidad
	}
	
	method cumplirSuenio(){
		const suenioElegido = tipoPersona.elegirSuenio(sueniosPendientes)
		self.cumplir(suenioElegido)
	}

	method esFeliz(){
		return felicidonios > self.cuantaFelicidadMeFalta()
	}
	
	method cuantaFelicidadMeFalta(){
		return sueniosPendientes.sum{suenio => suenio.felicidonios()}
	}
}

object realista{
	
	method elegirSuenio(suenios){
		return suenios.max{suenio => suenio.felicidonios()}
	}
}

object alocado{
	
	method elegirSuenio(suenios){
		return suenios.anyOne()
	}
}

object obsesivo{
	
	method elegirSuenio(suenios){
		return suenios.first()	
	}
	
}
