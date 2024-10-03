import Enfermedad.*
class EnfermedadInfecciosa inherits Enfermedad {

    method efecto(persona) {
        persona.aumentarTemperatura(celulasAmenazadas/1000)
    }

    method reproducirse() {
        celulasAmenazadas *= 2
    }

    method agresiva(persona) = celulasAmenazadas > persona.celulas() * 0.1
}