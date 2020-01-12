import UIKit

// Manejo de errores
func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    // Lanzamos los errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    // Realizar la suma
    return firstNumber! + secondNumber!
}

// Definicion de tipos de errors
enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

// Propagación de errores
do {
    print(try sum(firstNumber: nil, secondNumber: 50))
} catch SumError.firstNumberNil {
    print("El primer número es nil")
} catch SumError.secondNumberNil {
    print("El segundo número es nil")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("Hay algun número negativo. FirstNumber:\(firstNumber), SecondNumber:\(secondNumber)")
}

