//
//  CeldaAlumno.swift
//  Mayo13
//
//  Created by OdioMac on 13/05/24.
//

import UIKit

class CeldaAlumno: UITableViewCell {

    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPromedio: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func AsignarAlumno(alumno:Alumno){
        imgFoto.image = alumno.fotoPerfil
        lblNombre.text = alumno.nombre
        lblPromedio.text = String(alumno.promedio)
    }

}
