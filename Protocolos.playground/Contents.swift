import UIKit

// Protocolos (básicos): Son practicamente como las Interfaces de Java
protocol PersonaProtocolo {
    var nombre: String {get set} // indicando 'get' y 'set' permitimos que se pueda leer y escribir ese dato
    var edad: Int {get set}
    
    func fullName() -> String
}

struct Programador: PersonaProtocolo {
    
    var nombre: String
    
    var edad: Int
    
    var lenguaje: String
    
    func fullName() -> String {
        return "El nombre es \(nombre), edad: \(edad) y su lenguaje de programación favorito es \(lenguaje)"
    }
}

struct Profesor: PersonaProtocolo {
    var nombre: String
    
    var edad: Int
    
    var asignatura: String
    
    func fullName() -> String {
        return "El nombre es \(nombre), edad: \(edad) y su asignatura favorita es \(asignatura)"
    }
}

let miProgramador = Programador(nombre: "Edu", edad: 24, lenguaje: "Swift")
let miProfesor = Profesor(nombre: "Pepe", edad: 50, asignatura: "Matemáticas")

print(miProfesor)
print(miProgramador)

// PROTOCOLO DELEGADO: Se utiliza para que una primera clase instancie a la segunda clase y esta segunda clase pueda llamar a la primera de una forma ASÍNCRONA
class PrimeraClase: SegundaClaseProtocolo {
    
    func llamarSegunda() {
        // Instancia a la segunda clase
        let segundaClase = SegundaClase()
        // La funcionalidad de la SegundaClase se delega en esta PrimeraClase, porque es aqui donde queremos recibir la notificación asíncrona
        segundaClase.delegate = self
        // La segunda clase llama a esta primera clase
        segundaClase.llamarPrimera()
    }
    
    // Y esta es la función a la que se llame cuando la segunda clase mande el aviso a la primera, es decir, pasados 5 segundos
    func call() {
        print("Estoy de vuelta")
    }
}

// Se crea el protocolo
protocol SegundaClaseProtocolo {
    func call()
}

class SegundaClase {
    // Se crea la variable que permite que el protocolo sea protocolo delegado
    var delegate: SegundaClaseProtocolo?
    
    func llamarPrimera() {
        // Paramos el programa durante 5 segundos
        sleep(5)
        
        delegate?.call()
    }
}

// Se instancia la primera clase
let primeraClase = PrimeraClase()
primeraClase.llamarSegunda()
