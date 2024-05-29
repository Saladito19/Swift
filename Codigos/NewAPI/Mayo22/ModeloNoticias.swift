//
//  ModeloNoticias.swift
//  Mayo22
//
//  Created by OdioMac on 22/05/24.
//

import Foundation

struct Noticias : Codable {
    //Se debe llamar igual a la coleccion del JSON
    let articles:[Noticia]
}

struct Noticia : Codable {
    //Se debe llamar igual a la etiqueta del JSON
    let author : String?
    let title : String?
    let description : String?
    let url : String?
    let urlToImage : String?
}
