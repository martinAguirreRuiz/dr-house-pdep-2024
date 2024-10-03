class Enfermedad {

    var celulasAmenazadas

    method celulasAmenazadas() = celulasAmenazadas

    method atenuarse(cantidadCelulas) {
      celulasAmenazadas -= cantidadCelulas
    }

    method estaCurada() = celulasAmenazadas <= 0

}