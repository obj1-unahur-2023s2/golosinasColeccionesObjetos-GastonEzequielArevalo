import gustos.*

object bombon {
	const precio = 5
	var property peso = 15
	const gusto = frutilla
	const esLibreDeGluten = true
	
	method precio(){
		return precio
	}
	
	method recibirMordisco(){
		peso = (peso * 0.8) - 1
	}
	
	method gusto(){
		return gusto
	}
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
}

object alfajor {
	const precio = 12
	var property peso = 300
	const gusto = chocolate
	const esLibreDeGluten = false
	
	method precio(){
		return precio
	}
	
	method recibirMordisco(){
		peso = 0.max(peso * 0.8)
	}
	
	method gusto(){
		return gusto
	}
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
}

object caramelo {
	const precio = 1
	var property peso = 5
	const gusto = frutilla
	const esLibreDeGluten = true
	
	method precio(){
		return precio
	}
	
	method recibirMordisco(){
		peso = 0.max(peso - 1)
	}
	
	method gusto(){
		return gusto
	}
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
}

object chupetin {
	const precio = 2
	var property peso = 7
	const gusto = naranja
	const esLibreDeGluten = true
	
	method precio(){
		return precio
	}
	
	method recibirMordisco(){
		peso = 0.max(peso - 1)
	}
	
	method gusto(){
		return gusto
	}
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
}

object oblea {
	const precio = 5
	var property peso = 250
	const gusto = vainilla
	const esLibreDeGluten = false
	
	method precio(){
		return precio
	}
	
	method recibirMordisco(){
		peso = 0.max(peso - 1)
	}
	
	method gusto(){
		return gusto
	}
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
}

object chocolatin {
	const precio = 0.50
	const pesoInicial = 250
	var peso = pesoInicial
	const gusto = chocolate
	const esLibreDeGluten = false
	
	method precio(){
		return pesoInicial * precio
	}
	
	method recibirMordisco(){
		peso = 0.max(peso - 2)
	}
	
	method gusto(){
		return gusto
	}
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
}

object golosinaBaniada {
	var golosinaDeBase = oblea
	const precio = 2
	var peso = 4
	
	method cambiarGolosinaDeBase(nuevaGolosina){
		golosinaDeBase = nuevaGolosina
	}
	
	method golosinaDeBase(){
		return golosinaDeBase
	}
	
	method peso(){
		return golosinaDeBase.peso() + peso
	}
	
	method precio(){
		return precio + golosinaDeBase.precio()
	}
	
	method gusto(){
		return golosinaDeBase.gusto()
	}
	
	method esLibreDeGluten(){
		return golosinaDeBase.esLibreDeGluten()
	}
	
	method recibirMordisco(){
		golosinaDeBase.recibirMordisco()
		peso = 0.max(peso - 2)
	}
}

object pastillaTutiFruti{
	var presio = 7
	var property preso = 5
	var esLibreDeGluten = true
	var gusto = frutilla
	const listaDeGustos = [frutilla, chocolate, naranja]
	var contador = 0
	
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
	
	method  cambiarEstadoDeGluten(){
		esLibreDeGluten = not esLibreDeGluten
		presio = 10
	}
	
	method presio(){
		return presio
	}
	
	method gusto(){
		return gusto
	}
	
	method recibirMordisco(){
		contador = contador + 1
		gusto = listaDeGustos.get(contador % listaDeGustos.size())
	}
}






