/** First Wollok example */
object olivia {
	var concentracion = 6
	
	method gradoDeConcentracion() = concentracion
	
	method recibirMasaje(){
		concentracion += 3
	}
	
	method discutir(){
		concentracion -= 1
	}
	
	method banoDeVapor(){}
}

object bruno{
	var esFeliz = true
	var tieneSed = true
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasaje(){
		esFeliz = true
	}
	
	method banoDeVapor(){
		peso -= 500
	}
	
	
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto()=
		self.esFeliz() and
		not self.tieneSed() and
		self.peso().between(50000,70000)
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var pielGrasosa = true
	
	method contractura() = contractura
	method pielGrasosa() = pielGrasosa
	
	method nivelDeContractura(){
		if (contractura > 3) return "Muy contracturado"
		else if (contractura.between(1,3)) return "Un poco contracturado"
		else return "Nada contracturado"
	}	
	
	method recibirMasajes(){
		contractura = 0.max(contractura-1)
	}
	
	method banoDeVapor(){
		pielGrasosa = false
	}
	
	method comerBigMac(){
		pielGrasosa = true
	}
	
	method bajarALaFosa(){
		pielGrasosa = true
		contractura += 1
	}
	
	method jugarPaddle(){
		contractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object spa{
	method atender(persona){
		persona.recibirMasaje()
		persona.banoDeVapor()
	}
}



















