import Enfermedad.*
class EnfermedadAutoInmune inherits Enfermedad{
    
    var contadorEfectosRealizados = 0

    method efecto(persona) {
        persona.destruirCelulas(celulasAmenazadas)
        self.aumentarContadorEfectosRealizados()
    }

    method agresiva(_persona) = contadorEfectosRealizados > 30

    method aumentarContadorEfectosRealizados() {
      contadorEfectosRealizados += 1
    }

}