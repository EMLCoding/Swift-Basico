import UIKit

// Type casting (validación de tipos de dato)

let myString = "Edu"
let myInt = 24

class MyClass {
    var name: String! // La ! obliga a que lleve algun valor en la instancia
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Edu"
myClass.age = 24

let myArray: [Any] = [myString, myInt, myClass]

// 1ª Forma de hacerlo
for item in myArray {
    // Type Casting
    if item is String {
        // Downcasting: Transformacion de tipo "Any" a uno más concreto, como String
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if item is Int {
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if item is MyClass {
        let myItemMyClass = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}

// 2ª Forma de hacerlo
for item in myArray {
    if let myItemString = item as? String {
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int {
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = item as? MyClass {
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}
