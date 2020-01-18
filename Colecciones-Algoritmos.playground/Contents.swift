import UIKit

// Algoritmos para Colecciones
var myArray = [5,8,1,0,3,9,7,2,4,6]

var myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

var mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// - Sort (Ordenación)
print(myArray)
myArray.sort()
print(myArray)

myArray.sort { (intA, intB) -> Bool in
    // Ordena de mayor a menor
    return intA > intB
}
print(myArray)

//myDictionary.sort() -> No soportada
//mySet.sort() -> No soportada


// - Sorted (Ordenación): A diferencia del Sort, este no ordena el array original, sino que devuelve un array ordenado
print(myArray)
var myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArraySorted = myArray.sorted { (intA, intB) -> Bool in
    // Ordena de mayor a menor
    return intA > intB
}

// Sorted si se puede usar con diccionario. En este caso lo que devuelve es un Array ordenado con clave-valor
let mySortedDictionary = myDictionary.sorted { (elementA, elementB) -> Bool in
    return elementA.key < elementB.key
}
print(mySortedDictionary)

var mySortedSet = mySet.sorted()
print(mySortedSet)
mySortedSet = mySet.sorted(by: { (intA, intB) -> Bool in
    return intA > intB
})
print(mySortedSet)

// - Count
var myArray2 = [5,8,1,0,3,9,7,2,4,6]

var myDictionary2 = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

var mySet2: Set = [5,8,1,0,3,9,7,2,4,6]

print(myArray2.count)
print(myDictionary2.count)
print(mySet2.count)

// - isEmpty
print(myArray2.isEmpty)
print(myDictionary2.isEmpty)
print(mySet2.isEmpty)

// - reversed (Reinvierte el orden de los elementos)
print(myArray2.reversed() as [Int])
print(myDictionary2.reversed()) // Lo hace de forma algo aleatoria
print(mySet2.reversed()) // Lo hace de forma algo aleatoria

// - first o last
print(myArray2.first)
print(myDictionary2.first)
print(mySet2.first)

print(myArray2.last)

print(myArray2.dropFirst())

print(myArray2.dropLast())

print(myArray2.popLast())
print(myDictionary2.popFirst())
print(mySet2.popFirst())

