import UIKit

var rango = 0...100

for num in rango {
    
    // El número 0 solo lo imprimimos
    if num == 0 {
        print("#\(num)")
        
    } else {
        
        // Para los demás evaluamos todas las condiciones e imprimimos
        // todas las que se cumplan
        
        // Primero si es múltiplo de 5
        if num % 5 == 0 {
            print("#\(num) Bingo!!!")
        }
        
        // Si es par o impar
        if num % 2 == 0 {
            print("#\(num) par!!!")
        } else {
            print("#\(num) impar!!!")
        }
        
        // Finalmente si está dentro del rango indicado
        if num > 30 && num <= 40 {
            print("#\(num) Viva Swift!!!")
        }
    }
}
