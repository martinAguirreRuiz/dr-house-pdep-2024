class EnfermedadAutoInmune {
    
    var celulasAmenazadas
    var contadorEfectosRealizados = 0

    method efecto(persona) {
        persona.destruirCelulas(celulasAmenazadas)
        self.aumentarContadorEfectosRealizados()
    }

    method agresiva(_persona) = contadorEfectosRealizados > 30

    method aumentarContadorEfectosRealizados() {
      contadorEfectosRealizados += 1
    }

    method celulasAmenazadas() = celulasAmenazadas

}