import UIKit

// Los Genéricos permiten escribir código reutilizable

// SIN GENERICOS
// 'inout' indica que esa variable va a ser un parámetro de entrada y a la vez se va a retornar sin tener que utilizar la palabra 'return'
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var miPrimerInt = 5
var miSegundoInt = 10

print("El primer valor es \(miPrimerInt) y el segundo valor es \(miSegundoInt)")
swapTwoInts(a: &miPrimerInt, b: &miSegundoInt)
print("El primer valor es \(miPrimerInt) y el segundo valor es \(miSegundoInt)")

// CON GENÉRICOS
func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var miPrimerGen = "Edu"
var miSegundoGen = "Juanito"

print("El primer valor es \(miPrimerGen) y el segundo valor es \(miSegundoGen)")
swapTwoGenerics(a: &miPrimerGen, b: &miSegundoGen)
print("El primer valor es \(miPrimerGen) y el segundo valor es \(miSegundoGen)")
