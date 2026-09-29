
object luke {
  var lugaresVisitados = 0
  var ultimoLugarVisitado = ""
  var vehiculoActual = alambiqueVeloz
  method cambiarDeVehiculo(unVehiculo) {
    vehiculoActual = unVehiculo    
  }

  method cantidadDeLugaresVisitados() {
    return lugaresVisitados
  }

  method recuerdo() {
    return ultimoLugarVisitado
  }

  method viajar(unaCiudad) {
    if (unaCiudad.puedeIr(vehiculoActual)){
      vehiculoActual.consecuenciaDelViaje()
      ultimoLugarVisitado = unaCiudad.recuerdo()
      lugaresVisitados = lugaresVisitados +1
    }
  }
}

object alambiqueVeloz {
  var combustible = 50
  method consecuenciaDelViaje() {
    combustible = (combustible - 10).max(0)
  }
  method esRapido() {
    return true
  }
  method recargar(combustibleACargar) {
    combustible = combustible + combustibleACargar
  }

  method combustibleActual() {
    return combustible
  }
}

object superChatarraEspecial {
  var canionPuesto = false
  method esRapido() {
    return false
  }
  method consecuenciaDelViaje() {
    canionPuesto = !canionPuesto
  }
  method combustibleActual() {
    return if (canionPuesto) 50 else 80
  }
}

object antiguallaBlindada {
  var gangster = 5
  method cambiarCantidadDeGangsters(gangsterNuevo) {
    gangster = gangsterNuevo.max(1)
  }
  method esRapido() {
    return gangster < 7
  }
  method consecuenciaDelViaje() {}
  method combustibleActual() {
    return 50
  }
}

object troncoMovil {
  var cantidadDePies = 8

  method esRapido() {
    return cantidadDePies >= 4
  }
  method consecuenciaDelViaje() {
    cantidadDePies = (cantidadDePies - 2).max(0)
  }
  method combustibleActual() {
    return cantidadDePies * 10
  }
}
object monopatinElectrico {
  var bateria = 100

  method esRapido() {
    return bateria > 20
  }
  method consecuenciaDelViaje() {
    bateria = (bateria - 15).max(0)
  }
  method combustibleActual() {
    return bateria
  }
}

object paris {
  method recuerdo() {
    return "llavero torre eiffel"
  }
  method puedeIr(unVehiculo) {
    return unVehiculo.combustibleActual() >= 10
  }
}

object buenosAires {
  var presidenteBueno = true

  method recuerdo() {
    return if (presidenteBueno) "mate con yerba" else "mate sin yerba"
  }

  method puebloEligePresidenteMalo(){
    presidenteBueno = false
  }
  method puebloEligePresidenteBueno(){
    presidenteBueno = true
  }
    method puedeIr(unVehiculo) {
    return unVehiculo.esRapido()
  }
}

object bagdad {
  var recuerdoActual = "jardines colgantes"
  method recuerdo() {
    return recuerdoActual 
  }
  method cambiarRecuerdo(unRecuerdo) {
    recuerdoActual = unRecuerdo
  }
  method puedeIr(unVehiculo) {
    return true
  }
}

object lasVegas {
  var paisConmemorado = paris
  method cambiarCiudadHomenajeada(paisAConmemorar) {
    paisConmemorado = paisAConmemorar    
  }
  method recuerdo() {
    return paisConmemorado.recuerdo()
  }
  method puedeIr(unVehiculo) {
    return paisConmemorado.puedeIr(unVehiculo)
  }
}
object peru {
  var esVerano = true

  method recuerdo() {
    return if (esVerano) "llavero cebiche" else "piramide inca"
  }

  method laEstacionEsVerano(){
    esVerano = true
  }
  method laEstacionEsInvierno(){
    esVerano = false
  }
  method puedeIr(unVehiculo) {
    return true
  }
}

