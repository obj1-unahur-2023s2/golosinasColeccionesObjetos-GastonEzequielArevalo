import golosinas.*
import gustos.*

object mariano {
	const bolsaDeGolosinasCompradas = []
	
	method comprar(unaGolosina){
		bolsaDeGolosinasCompradas.add(unaGolosina)
	}
	
	method bolsaDeGolosinasCompradas(){
		return bolsaDeGolosinasCompradas
	}
	
	method desechar(unaGolosina){
		self.bolsaDeGolosinasCompradas().remove(unaGolosina)
	}
	
	method cantidadDeGolosinas(){
		return self.bolsaDeGolosinasCompradas().size()
	}
	
	method tieneLaGolosina(unaGolosina){
		return self.bolsaDeGolosinasCompradas().contains(unaGolosina)
	}
	
	method probarGolosinas(){
		self.bolsaDeGolosinasCompradas().forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinasSinTACC(){
		return self.bolsaDeGolosinasCompradas().any({golosina => golosina.esLibreDeGluten()})
	}
	
	method preciosCuidados(){
		return self.bolsaDeGolosinasCompradas().all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		return self.bolsaDeGolosinasCompradas().find({golosina => golosina.gusto() == unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		return self.bolsaDeGolosinasCompradas().filter({golosinas => golosinas.gusto() == unSabor})
	}
	
	method sabores(){
		return self.bolsaDeGolosinasCompradas().map({golosinas => golosinas.gusto()}).asSet()
	}
	
	method golosinaMasCara(){
		return self.bolsaDeGolosinasCompradas().max({gustos => gustos.precio()})
	}
	
	method pesoGolosinas(){
		return self.bolsaDeGolosinasCompradas().sum({golosinas => golosinas.peso()})
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(self.bolsaDeGolosinasCompradas().asSet())
	}
	
	method gustosFaltantes(todosLosSabores){
		return todosLosSabores.asSet().difference(self.sabores())
	}
	
	method gastoEn(sabor){
		return self.golosinasDeSabor(sabor).sum({golosina => golosina.precio()})
	}
	
}
