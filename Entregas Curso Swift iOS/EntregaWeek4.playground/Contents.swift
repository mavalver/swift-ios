import UIKit

// Creamos la enumeración para las velocidades
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

// Declaramos la clase Auto
class Auto {
    var velocidad:Velocidades
    
    // Declaramos el inicializador
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    // Declaramos la función
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String) {
        var velInt:Int = velocidad.rawValue, velStr:String = ""
        
        if velocidad == Velocidades.Apagado {
            velStr = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        } else if velocidad == Velocidades.VelocidadBaja {
            velStr = "Velociad baja"
            velocidad = Velocidades.VelocidadMedia
        } else if velocidad == Velocidades.VelocidadMedia {
            velStr = "Velociad media"
            velocidad = Velocidades.VelocidadAlta
        } else {
            // si estamos en esta rama es VelodicadAlta
            velStr = "Velociad alta"
            velocidad = Velocidades.VelocidadMedia
        }
        return (velInt, velStr)
    }
}

var auto = Auto()

for i in 1...20 {
    print(auto.cambioDeVelocidad())
}