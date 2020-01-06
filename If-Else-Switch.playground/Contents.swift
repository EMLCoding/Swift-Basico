import UIKit

var edad = 17

if edad >= 18 {
    print("Puedes entrar al local")
} else {
    print("No puedes entrar al local")
}

// SWITCH
let country = "ES"

switch country {
case "ES":
    print("El idioma es español")
case "MX":
    print("El idioma es español")
case "EEUU":
    print("El idioma es Inglés")
default:
    print("Región no reconocidad")
}

let age = -10

switch age {
case 0,1,2:
    print("Es un bebé")
case 3...10:
    print("Es un niño")
case 11..<16:
    print("Es un adolescente")
case 16...:
    print("Ya eres una persona")
default:
    print("Estás reventao ☠️")
}

// Switch con enum
enum PersonalData {
    case name, surname, address, phone
}

let userData: PersonalData = .name

// El switch tiene que abarcar todos los cases del enum
switch userData {
    case .name:
        print("Estamos editando el nombre")
    case .surname:
        print("Estamos editando los apellidos")
    case .address:
        print("Estamos editando la dirección")
    case .phone:
        print("Estamos editando el teléfono")
}
