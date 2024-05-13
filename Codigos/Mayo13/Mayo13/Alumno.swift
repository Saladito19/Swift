//
//  Alumno.swift
//  Mayo13
//
//  Created by OdioMac on 13/05/24.
//

import Foundation
import UIKit

class Alumno {
    var fotoPerfil: UIImage
    var nombre:String
    var numeroControl:Int
    var promedio:Double
    
    init(_ fotoPerfil: UIImage,_ nombre: String,_ numeroControl: Int,_ promedio: Double) {
        self.fotoPerfil = fotoPerfil
        self.nombre = nombre
        self.numeroControl = numeroControl
        self.promedio = promedio
    }
}
