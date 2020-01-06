import Foundation

// Comparacion
let name1 = "Eduardo"
let name2 = "Irene"

name1 == name2 // Devuelve un booleano

// Comparacion de contenido
let myContent = "Mi nombre es Eduardo"
myContent.contains(name1)

// Compara si la cadena es vacía
let myEmptyString = ""
myEmptyString.isEmpty

// Recorre caracter a caracter del String
for valor in myContent {
    print(valor)
}
