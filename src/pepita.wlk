object pepita {
	var energia = 340

	method estaCansada() {
		return energia < 50
	}
	
	method energia(){
		return energia
	}
	
	method estaFeliz () {
		return energia.between(500,100)
	}

	method vola(kms) {
		energia -= 10 + kms
	}
	
	method evaluarYSumar() {
		if(energia.between(300,400)){
		return 10
		}
		else return 0
	}
	
	method evaluarYSumarSiEsMultiplo20 () {
		if(energia % 20 == 0){
		return 15
		}
		else return 0
	}

	method cuantoQuiereVolar() {
		return (energia/5) + self.evaluarYSumar() + self.evaluarYSumarSiEsMultiplo20 ()
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		
		if(self.estaCansada()){
		self.come(alpiste)
		}
		if(self.estaFeliz()){
		self.vola(8)
		}
		
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}



object mijo {
	var seco = false
	
	method mojarse(){
		seco = false
	}
	method secarse(){
		seco = true
	}
	
	method energiaQueOtorga(){
		if(not(seco)){
		return 15
		}
		else return 20
	}
}
object canelones {
	var salsa = false
	var queso = false
	
	method ponerSalsa(){
	salsa = true
	}
	method sacarSalsa(){
	salsa = false
	}
	method ponerQueso(){
	queso = true
	}
	method sacarQueso(){

	queso = false
	}
	
	method energiaQueOtorga(){
		if(salsa){
			return 25
		}
		if(queso){
			return 27
		}
		if(salsa && queso){
			return 32
		} else return 20
	
	}
}

object roque {
	method entrenar(persona){
		persona.vola(10)
		persona.come(alpiste)
		persona.vola(5)
		persona.haceLoQueQuieras()
	}
}
