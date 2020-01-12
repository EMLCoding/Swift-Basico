import UIKit

// Tipos Anidados
struct PiezaAjedrez {
    
    let color: Color
    let tipo: TipoPieza
    
    enum Color: String {
        case blanco = "Blanca", negro = "Negra"
    }
    
    enum TipoPieza: String {
        case rey = "Rey", reina = "Reina", torre = "Torre", alfil = "Alfil", caballo = "Caballo", peon = "Peón"
        struct Number {
            let number: Int
        }
        var number: Number {
            // "self" hace referencia al dato en el que nos encontramos, es decir, el enum TipoPieza
            switch self {
            case .rey:
                return Number(number: 1)
            case .reina:
                return Number(number: 1)
            case .torre:
                return Number(number: 2)
            case .alfil:
                return Number(number: 2)
            case .caballo:
                return Number(number: 2)
            case .peon:
                return Number(number: 8)
            }
        }
    }
    
    var descripcion: String {
        return "Hay \(tipo.number.number) piezas de ajedrez es de color \(color.rawValue) y de tipo \(tipo.rawValue)"
    }
}

let miPieza = PiezaAjedrez(color: .negro, tipo: .torre)
print(miPieza.descripcion)
