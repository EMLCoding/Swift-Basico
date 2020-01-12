import UIKit

// Creación de una función
func holaMundo() {
    print("Hola mundo")
}

// Llamada a la función
holaMundo()

func sumaDosNumeros() {
    let resultado = 2 + 2
}

sumaDosNumeros()

func cuadradoDeNumero(x: Int){
    let resultadoCuadrado = x * x
}

cuadradoDeNumero(x: 3)

// '->' sirve para indicar el tipo de dato que va a devolver la funcion
func cuboDe(numero: Int) -> Int {
    let resultadoCubo = numero * numero * numero
    return resultadoCubo
}

cuboDe(numero: 10)
print(cuboDe(numero: 10))
_ = cuboDe(numero: 20) // Llama a la funcion sin guardar en ningun lado el valor del return

func saludarAlumno(nombre: String, mensaje: String) {
    print("Hola \(nombre) \(mensaje)")
}

saludarAlumno(nombre: "Edu", mensaje: ". ¿Qué tal?")

// El segundo argumento tiene un mensaje por defecto. Cuando no se envie en la llamada del metodo se iguala 'mensaje' al valor por defecto
func saludarAlumno2(nombre: String, mensaje: String = "el mejor programador del mundo") {
    print("Hola \(nombre) \(mensaje)")
}

saludarAlumno2(nombre: "Edu")

func listaNombres() -> [String] {
    let arrayNombres = ["Edu", "Pepe", "Josito"]
    return arrayNombres
}

var nombres = listaNombres()

// Nombre de Parametros Internos y Externos
    // Parametros internos: materiaUno, materiaDos, materiaTres
    // Parametros externos: matematicas, quimica, fisica
func calificacionPromedio(matematicas materiaUno: Double, quimica materiaDos: Double, fisica materiaTres: Double) -> Double{
    return (materiaUno + materiaDos + materiaTres)/3
}

let miCalificacionPromedio = calificacionPromedio(matematicas: 7, quimica: 6, fisica: 5)

// Introduccion de Closures
/*
 SINTAXIS
 let variable = {
    (parametros) -> tipo-valor-return in
    codigo
 }
 */

let miPrimerClosure = {
    (materiaUno: Double, materiaDos: Double, materiaTres: Double) -> Double in
    return (materiaUno + materiaDos + materiaTres)/3
}

miPrimerClosure(100,22,88)
