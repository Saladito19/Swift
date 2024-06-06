import SwiftUI

@main
var articulos = [Int](), precios = [Double](), importeTotal = [Double](), i = 0, n = 4, Operacion = 0.0
while i <= n{
    let Num = Double.random(in: 1.0...56.23)
    let NumDD = (Num * 100).rounded() / 100
    articulos.append(Int.random(in: 0...25))
    precios.append(Double(NumDD))
    i+=1
}

print("Articulos: \n\(articulos)")
print("Precios: \n\(precios)")
print("Operacion: \n\(articulos[0]) * \(precios[0])")
var operacion = Double(articulos[0]) * precios[0]
importeTotal.append((operacion * 100).rounded() / 100)
print("Importe total: \n\(importeTotal)")
