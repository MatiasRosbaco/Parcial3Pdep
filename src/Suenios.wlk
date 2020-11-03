import Personas.*

class Suenios{
	var cumplido = false
	const felicidonios
	method cumplir(persona){
		self.validar(persona)
		self.realizar(persona)
		self.cumplir()
		persona.sumarFelicidonios(felicidonios)
	}
	
	method suenioAmbisioco(){
		return	felicidonios > 100
	}
	
	method cumplir(){
		cumplido = true
	}
	
	method validar(persona)
	method realizar(persona)
	
}


class SuenioMultiple inherits Suenios{
	const suenios = []
	override method validar(persona){
		return suenios.forEach({suenio => suenio.validar(persona)})
	}
	
	override method realizar(persona){
		return suenios.forEach{suenio => suenio.realizar(persona)}
	}
	
}

class Recibirse inherits Suenios{
	const carrera
	override method validar(persona){
		if(!persona.quiereEstudiarCarrera(carrera)){
			throw new Exception(message = "no quiere estudiar esa carrera")	
		}
		if(persona.yaEstudioLaCarrera(carrera)){
			throw new Exception(message = "ya estudio la carrera reiii")
		}
	}
	override method realizar(persona){
		persona.recibirse(carrera)
		
	}
}

class Trabajo inherits Suenios{
	const sueldo
	override method validar(persona){
		if(sueldo < persona.cuantaPlataQuiere()){
			throw new Exception(message ="Ni ahi trabajo por 2 mangos")
		}
	}
	override method realizar(persona){
		persona.dejarDeSerPlanero()		
		
	}
}

class Viajar inherits Suenios{
	const lugar
	override method validar(persona){
		
	}
	
	override method realizar(persona){
		persona.conocer(lugar)
		
	}
}

class AdoptarHijo inherits Suenios{
	const hijo = new Personas(edad = 0, plata = 0, felicidonios = 0, tipoPersona = realista) //me parecio re cute esto por alguna razon
	override method validar(persona){
		if(!persona.tieneHijo()){
			throw new Exception(message = "vas a sobrepoblar el planeta, abstenete porfavor")
		}
	}
	
	override method realizar(persona){
		persona.tenerHijo(hijo)	
		
	}
}
