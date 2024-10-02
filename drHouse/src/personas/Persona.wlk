class Persona {

    var temperatura
    var celulas
    var coma = false
    var enfermedades = #{}

    method contraerEnfermedad(enfermedad){
        enfermedades.add(enfermedad)
    }

    method aumentarTemperatura(gradosAAumentar) {
      temperatura += gradosAAumentar
      self.chequearTemperatura()
    }

    method chequearTemperatura() {
      if(temperatura >= 45){
        temperatura = 45
      }
    }

    method destruirCelulas(cantidadCelulasADestruir) {
      celulas -= cantidadCelulasADestruir
    }

    method estarEnComa() = self.temperaturaMaxima() || self.pocasCelulas()

    method pocasCelulas() = celulas <= 1000000

    method temperaturaMaxima() = temperatura == 45

    method vivir(dias) {
        dias.times{_ => self.vivirUnDia()}
    }

    method vivirUnDia() {
      enfermedades.forEach({enfermedad => enfermedad.efecto(self)})
    }

    method enfermedades() = enfermedades

    method tiene(enfermedad) = enfermedades.contains(enfermedad)

    method enfermedadesAgresivas() = enfermedades.filter{enfermedad => enfermedad.agresiva(self)}

    method cantidadCelulasAfectadasPorEnfermedadesAgresivas() = self.enfermedadesAgresivas().sum { enfermedad => enfermedad.celulasAmenazadas() }

    method celulas() = celulas

    method enfermedadQueMasCelulasAfecta() = enfermedades.max{enfermedad => enfermedad.celulasAmenazadas()}

}