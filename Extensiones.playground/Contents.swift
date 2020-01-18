import UIKit

// Extensiones (básicas): Permiten añadir nuevas funcionalidades a una variable.

// Ejemplo 1: Se va a extender la funcionalidad de los tipos de dato Double para que sean capaces 'automaticamente' de pasar de metros a otras unidades de medida

let myMeters: Double = 5000

// Forma normal hasta ahora de pasar de metros a kilometros -> Creando una funcion para el calculo y llamando a esa funcion:
func metersToKm(meters: Double) -> Double {
    return meters/1000
}

print(metersToKm(meters: myMeters))

// Sin embargo se pueden usar las extensiones para no tener que crear la funcion
// 1: Se utiliza la palabra reservaba 'extension' junto al tipo de dato al que se le va a extender la funcionalidad
extension Double {
    // 2: Se crean las funcionalidades añadidas
    var km: Double {
        // 'self' se utiliza para hacer referencia, en este caso, al numero de tipo Double del que se está extendiendo
        return self / 1000
    }
    
    var m: Double {
        return self
    }
    
    var cm: Double {
        return self * 100
    }
}

// A partir de ahora se pueden llamar a las funciones del extension como si fueran funciones normales
print(myMeters.km)
