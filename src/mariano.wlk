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
		bolsaDeGolosinasCompradas.any({golosina => golosina.esLibreDeGluten()})
	}
	
	method preciosCuidados(){
		bolsaDeGolosinasCompradas.all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		bolsaDeGolosinasCompradas.find({golosina => golosina.gusto() == unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		
	}
}
