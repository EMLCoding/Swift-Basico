import UIKit

// En Swift las estructuras y las clases son parecidas, pero tienen dos diferencias
    // Diferencia 1: Cuando se crea una instancia de una estructura (igualandola a otra instancia de esa misma estructura) y se modifica uno de los atributos, se modifica SOLO para esa instancia, en cambio cuando se hace con una clase (creando un objeto e igualandolo a otro objeto de esa misma clase) se modifica el valor que posee la clase, es decir, se modifica para TODAS las instancias de dicha clase (esto es al revés que en los demás lenguajes que solo poseen clases)

// Creacion de una estructura
struct cuadrados {
    var ancho = 10
    var alto = 10
    
    func area() -> Int {
       return ancho * alto
    }
}

var miCuadrado = cuadrados()
miCuadrado.ancho
// var areaCuadrado = miCuadrado.ancho * miCuadrado.alto
miCuadrado.area()
miCuadrado.ancho = 20

// Creacion de una clase
class automovil {
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}

var miObjetoMazda = automovil()
miObjetoMazda.precio
miObjetoMazda.precio = 5000
print(miObjetoMazda.precio)

// Comprobacion de la Diferencia 1
print(miCuadrado.ancho)
var miSegundoCuadrado = miCuadrado
miSegundoCuadrado.ancho = 30 // Este cambio no afecta a la otra instancia de la que parte esta estructura
print(miSegundoCuadrado.ancho)
print(miCuadrado.ancho)

print(miObjetoMazda.precio)
var miObjetoPeugeot = miObjetoMazda // Este cambio si afecta a la otra instancia de la que parte este objeto
miObjetoPeugeot.precio = 10000
print(miObjetoMazda.precio)
print(miObjetoPeugeot.precio)


