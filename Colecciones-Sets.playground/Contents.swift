import UIKit

// Los Sets (Conjuntos) son otro tipo de Colecciones que mezcla cualidades de los Array y de los diccionarios.
// Los Sets no podrán tener elementos repetidos y todos estos elementos deben ser del mismo tipo .Tampoco son capaces de tener un orden definidio por la insercion de los elementos

// Formas de crear un Set
var mySet = Set<String>()
var mySet2: Set<String> = ["Edu", "Martin", "Lorenzo"] // Con esta forma podemos darle valores al inicializarlo

// Inserción de uno en uno
mySet.insert("Edu")
mySet.insert("Martin")
mySet.insert("Lorenzo")

// Acceso
if mySet.contains("Edu") {
    print("Existe")
} else {
    print("No existe")
}

// Modificación
mySet.remove("Lorenzo")
print(mySet)

// Acceso y modificación por índice
if let index = mySet.firstIndex(of: "Martin") {
    mySet.remove(at: index)
}
print(mySet)

// Iteracción
mySet.insert("Martin")
mySet.insert("Lorenzo")

for myElement in mySet {
    print(myElement)
}

// Operaciones de conjunto
let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// - Intersección: Coge los valores comunes entre dos Set
print(myIntSet.intersection(myIntSet2))
// - Diferencia Simétrica: Coge los valores de ambos Set que no sean comunes entre ellos
print(myIntSet.symmetricDifference(myIntSet2))
// - Unión: Coge todos los valores de ambos Set (quita los repetidos ya que un Set no puede tener elementos repetidos
print(myIntSet.union(myIntSet2))
// - Sustracción: Coge todos los valores del primer Set excepto aquellos que son comunes con el segundo Set
print(myIntSet.subtracting(myIntSet2))
