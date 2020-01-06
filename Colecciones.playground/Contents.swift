import UIKit

// ARRAY
var arregloNumeros = [1,2,3]
let arregloNumerosInmutables = [3,2,1]

arregloNumeros.append(5) // Añade el 5 al array en la ultima posicion
arregloNumeros.insert(4, at:3) // Añade el 4 al array en la posicion numero 3

arregloNumeros.removeLast() // Elimina el ultimo valor del array
arregloNumeros.remove(at: 3) // Elimina el elemento de la posicion numero 3

arregloNumeros.removeAll() // Elimina todo el contenido del array

var arregloVacio:[Int] = [] // Crea un array vacio

print(arregloNumeros)

// DICCIONARIOS (clave-valor)
let myClassicDictionary = Dictionary<Int, String>() // Creacion clasica de un diccionario
var myModernDictionary = [Int:String]() // Creacion actual de un diccionario

myModernDictionary = [001: "Edu", 002: "Irene"] // Añade varios datos. Esto inicializa primero el diccionario y luego lo rellena
myModernDictionary[003] = "Pepito" // Añade un solo dato. Esto no inicializa el diccionario

myModernDictionary[002] // Accede al dato con id: 002

myModernDictionary[002] = nil // Elimina el dato de la clave 002. Lo pone a nulo

// Tuplas (almacena distintos tipos de datos en una misma coleccion)
var persona = ("Edu", "Martin", 24, 1.69) // Creacion de una tupla

persona.0 // Coge el valor de la posicion 0

var (nombre, apellido, edad, altura) = persona // Asigna los valores de la tupla a cada una de las variables
nombre // Imprime el valor de 'nombre' para la tupla 'persona'

var personaNamedTuple = (nombre:"Edu", apellido:"Martin", edad:24, altura:1.69) // Crea una tupla con variables, como lo anterior
personaNamedTuple.nombre

// ENUMERACIONES
enum PersonalData {
    case name, surname, address, phone
} // Crea una enumeracion

var currentData: PersonalData = .name // Selecciona la casilla de la enumeracion
var input = "Edu" // Introduce el string en la variable 'name' de la enumeracion

currentData = .phone // Marca la casilla del telefono
input = "666666666" // Y añade un valor

enum ComplexPersonalData {
    case name(String)
    case surname(String, String) // Son dos porque podemos tener dos apellidos
    case address(String, Int)
    case phone(Int)
} // Enumeracion con valor asociado

var complexCurrentData: ComplexPersonalData = .name("Edu") // Añade un valor al 'name' de la enumeracion

enum RawPersonalData: String {
    case name = "Nombre" // Valor por defecto
    case surname = "Apellidos"
    case address = "Direccion"
    case phone = "Numero de telefono"
} // Enumeracion con el mismo tipo de valor. Todos los case serán del tipo String


// RANGE OPERATOR
var arregloEjemplo = [0,1,2,3,4,5,6,7,8,9]

var subSetArreglo = arregloEjemplo[1...3] // Coge los valores desde la posicion 1 hasta la posicion 3 del array 'arregloEjemplo'
var subSetArreglo2 = arregloEjemplo[1..<3] // Desde la posicion 1 hasta la posicion anterior a la 3

var subSetArreglo3 = arregloEjemplo[...3] // Desde la posicion inicial hasta la posicion 3
var subSetArreglo4 = arregloEjemplo[5...] // Desde la posicion 5 hasta el final

var rangoCerrado = [1...3] // Crea un rango cerrado
Array(rangoCerrado[0]) // Convierte el arreglo cerrado en un Array
