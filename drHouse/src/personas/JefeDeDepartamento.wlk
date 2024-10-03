import Medico.*
class JefeDeDepartamento inherits Medico (cantidadMedicamento = 0) {
  
    var subordinados = #{}

    override method atenderA(persona) {
        subordinados.anyOne().atenderA(persona)
    }

}