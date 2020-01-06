import UIKit

// FOR

var contador = 0

for numero in 1...4 {
    contador += 1
    print(numero)
    print(contador)
}

var paises = ["España", "Estados Unidos", "Japón"]
for pais in paises {
    print(pais)
}

var diccionarioPaises = ["ES":"España","EEUU":"Estados Unidos","JP":"Japón"]
for (pais, significado) in diccionarioPaises {
    print("\(pais) --- \(significado)")
}

// WHILE

var age = 10

while age < 18 {
    print("Eres menor de edad. Te faltan \(18-age) años")
    age += 1
}

// DO - WHILE / REPEAT - WHILE
var numeros = [1,2,3,4,5,6,7,8,9,10]
var i = numeros.count - 1

repeat {
    numeros.remove(at: i)
    i -= 1
    print(numeros)
} while(numeros.count > 0)

var numeroAleatorio: Int
var intentos = 0
repeat {
    intentos += 1
    numeroAleatorio = Int(arc4random_uniform(10)) // Da numeros aleatorios del 1 al 10
    print("Ha salido el numero \(numeroAleatorio). Intento: \(intentos)")
} while(numeroAleatorio != 8)
print("Ha salido el numero premiado")
