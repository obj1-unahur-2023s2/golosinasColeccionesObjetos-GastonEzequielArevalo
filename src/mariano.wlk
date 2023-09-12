import golosinas.*
import gustos.*

object mariano {
	var bolsaDeGolosinasCompradas = []
	
	method comprar(unaGolosina){
		bolsaDeGolosinasCompradas.add(unaGolosina)
	}
	
	method bolsaDeGolosinasCompradas(){
		return bolsaDeGolosinasCompradas
	}
	
	method desechar(unaGolosina){
		bolsaDeGolosinasCompradas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas(){
		return bolsaDeGolosinasCompradas.size()
	}
	
	method tieneLaGolosina(unaGolosina){
		return bolsaDeGolosinasCompradas.contains(unaGolosina)
	}
	
	method probarGolosinas(){
		bolsaDeGolosinasCompradas.forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinasSinTACC(){
		return bolsaDeGolosinasCompradas.any({golosina => golosina.esLibreDeGluten()})
	}
	
	method preciosCuidados(){
		return bolsaDeGolosinasCompradas.all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		return bolsaDeGolosinasCompradas.find({golosina => golosina.gusto() == unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		return bolsaDeGolosinasCompradas.filter({golosinas => golosinas.gusto() == unSabor})
	}
	
	method sabores(){
		return bolsaDeGolosinasCompradas.map({golosinas => golosinas.gusto()}).asSet()
	}
	
	method gustosFaltantes(todosLosSabores){
		return todosLosSabores.asSet().difference(self.sabores())
	}
	
	method golosinaMasCara(){
		return bolsaDeGolosinasCompradas.max({gustos => gustos.precio()})
	}
	
	
}
