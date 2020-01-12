import UIKit

// Conversion de tipos. En la conversion de tipos de datos de Swift el valor que se devuelve es un 'optional' ya que puede que venga un valor valido o un nil

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber) // Este devuelve un valor valido porque "100" si se puede transformar a un numero

let myWrongStringNumber = "Edu"
let myWrongIntNumber = Int(myWrongStringNumber) // Este devuelve un nil porque un nombre no se puede convertir a numeros

// Creacion de una variable optional
var myOptionalString: String? // De esta forma se indica a Swift que la variable puede tener un valor válido o un nil
print(myOptionalString)

myOptionalString = "Bienvenido"

if myOptionalString != nil {
    print("La variable tiene un valor distinto de nil")
} else {
    print("El valor de la variable es nil")
}

// --------OPTIONAL BINDING (ENLACES OPCIONALES)-------------
var myOptionalString2: String?

myOptionalString2 = "Edu"

// Al igual que el if anterior, este tambien sirve para comprobar si la variable opcional es nil o no, pero hay una diferencia. Solo cuando la variable opcional tenga un valor se va a crear una variable, en este caso la "let myString", a la que se le va a insertar el valor que llevara la variable opcional, en este caso "myOptionalString2". Cuando la variable opcional lleve un nil no se va a crear la otra variable
if let myString = myOptionalString2 {
    print(myString) // Aqui myString imprimi un valor válido ya que es el que lleva myOptionalString, porque si fuera nil no podria entrar a esta parte del codigo
} else {
    print(myOptionalString2) // Se imprime esto cuando la variable opcional sea nil
}

var myOptionalString3: String?
var myOptionalString4: String?

// En este caso se va a entrar al if cuando las dos variables opcionales sean distintas de nil
if let myString3 = myOptionalString3, let myString4 = myOptionalString4 {
    print("\(myString3) \(myString4)")
} else {
    print("Alguna variable es nula")
}

// --------DESEMPAQUETADO FORZADO-------------
// Cuando se sabe con certeza que una variable opcional NO lleva un nil se puede forzar el acceso a su valor de la siguiente manera
print(myOptionalString!) // Con la exclamacion se fuerza a acceder a su valor
// Si forzamos el acceso al valor de una variable opcional que lleva un nil se produce un error de compilacion


//--------OPTIONAL CHAINING------------------
class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()

print(myStudent.name)
print(myStudent.book?.pages) // Esto es una cadena de opcionales

myStudent.name = "Edu"
let myBook = Book()
myBook.pages = 50
myStudent.book = myBook

// Enlace opcional encadenado
if let pages = myStudent.book?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(pages) páginas")
} else {
    print("El libro no tiene páginas")
}

//----------GUARD LET------------------------------------
var myGuardOptionalString: String?

// A diferencia del "if let" el "guard let" comprueba si la variable optional tiene un nil, en caso de que lo tenga se ejecuta el codigo que hay entre {}. En este caso es obligatorio que todo el codigo esté dentro de una función y que dentro de las {} del guard haya una forma de salida a la fuerza, como puede ser un "return".
// La principal ventaja de los guard let es que la variable creada, en este caso "myGuardString" se puede usar a lo largo de toda la función

func myFunction() {
    guard let myGuardString = myGuardOptionalString else {
        print("El valor de myGuardString es nil")
        return
    }
    
    print("El valor de myGuardString es \(myGuardString)")
}

myFunction()
myGuardOptionalString = "¿Qué tal?"
myFunction()
