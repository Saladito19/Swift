//
//  Figura.swift
//  FiguraArea
//
//  Created by David Castillo on 10/04/24.
//

import Foundation
class Figura{
    func CalcularArea() -> Double{return 0}
}

class Rectangulo:Figura{
    private var largo: Double
    private var ancho: Double
    
    //Constructor con parametros
    init(_ largo: Double,_ ancho: Double) {
        self.largo = largo
        self.ancho = ancho
    }
    
    //Propiedades
    var Largo:Double{
        get{return largo}
        set{largo = newValue}
    }
    
    var Ancho:Double{
        get{return ancho}
        set{ancho = newValue}
    }
    
    //Metodo
    override func CalcularArea() -> Double {
        return Largo * Ancho
    }
}

class Circunferecia:Figura{
    private var radio: Double
    
    init(_ radio: Double) {
        self.radio = radio
    }
    
    var Radio:Double{
        get {return radio}
        set{radio = newValue}
    }
    
    override func CalcularArea() -> Double {
        return Double.pi * (Radio*Radio)
    }
}

class Triangulo:Figura{
    private var altura: Double
    private var base: Double
    
    //Constructor con parametros
    init(_ altura: Double,_ base: Double) {
        self.altura = altura
        self.base = base
    }
    
    //Propiedades
    var Altura:Double{
        get{return altura}
        set{altura = newValue}
    }
    
    var Base:Double{
        get{return base}
        set{base = newValue}
    }
    
    //Metodo
    override func CalcularArea() -> Double {
        return (Altura * Base)/2
    }
}
